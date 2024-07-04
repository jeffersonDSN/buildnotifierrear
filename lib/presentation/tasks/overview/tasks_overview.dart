import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tasks_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/bloc/tasks_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/view/tasks_overview_view.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class TasksOverview extends IView {
  final String projectId;

  const TasksOverview({
    super.key,
    this.projectId = '',
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksOverviewBloc(
        controller: TasksController(
          repository: TasksFirestoreRepository(
            tenantId: appBloc(context).state.asLogged.user.tenant,
          ),
        ),
      ),
      child: TasksOverviewView(projectId: projectId),
    );
  }
}
