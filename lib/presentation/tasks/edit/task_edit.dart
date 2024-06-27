import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/infrastructure/firestore/projects_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tasks_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/bloc/task_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/view/task_edit_view.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class TaskEdit extends IView {
  final CrudType? type;

  const TaskEdit({
    super.key,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;
    return BlocProvider(
      create: (context) => TaskEditBloc(
        controller: TasksController(
          repository: TasksFirestoreRepository(tenantId: tenantId),
        ),
        projectsController: ProjectsController(
          repository: ProjectsFirestoreRepository(tenantId: tenantId),
        ),
      ),
      child: TaskEditView(
        type: type ?? const CrudType.create(),
      ),
    );
  }
}
