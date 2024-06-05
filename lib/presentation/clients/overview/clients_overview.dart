import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/entities/client/client.dart';
import 'package:buildnotifierrear/infrastructure/firestore/clients_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/projects_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/clients/overview/bloc/clients_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/clients/overview/view/clients_overview_view.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientsOverview extends IView {
  const ClientsOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider<ClientsOverviewBloc>(
      create: (context) => ClientsOverviewBloc(
        controller: CRUDController<Client>(
          repository: ClientsFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
        projectController: ProjectsController(
          repository: ProjectsFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: const ClientsOverviewView(),
    );
  }
}
