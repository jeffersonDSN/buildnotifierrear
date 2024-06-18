import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/controllers/states_controller.dart';
import 'package:buildnotifierrear/domain/entities/client/client.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/infrastructure/firestore/clients_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/projects_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/states_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/projects/edit/view/project_edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectEdit extends IView {
  final CrudType? type;

  const ProjectEdit({
    super.key,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider<ProjectEditBloc>(
      create: (context) => ProjectEditBloc(
        controller: ProjectsController(
          repository: ProjectsFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
        clientsController: CRUDController<Client>(
          repository: ClientsFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
        statesController: StatesController(
          repository: StatesFirestoreRepository(),
        ),
      ),
      child: ProjectEditView(
        type: type ?? const CrudType.create(),
      ),
    );
  }
}
