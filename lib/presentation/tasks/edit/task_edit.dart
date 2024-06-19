import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tasks_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/bloc/task_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/view/task_edit_view.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class TaskEdit extends IView {
  final String? projectID;
  final CrudType? type;
  final VoidCallback onCancel;
  final VoidCallback onSave;

  const TaskEdit({
    super.key,
    this.projectID,
    this.type,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskEditBloc(
        controller: TasksController(
          repository: TasksFirestoreRepository(
            tenantId: appBloc(context).state.asLogged.user.tenant,
          ),
        ),
      ),
      child: TaskEditView(
        projectID: projectID ?? '',
        type: type ?? const CrudType.create(),
        onCancel: onCancel,
        onSave: onSave,
      ),
    );
  }
}
