import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/project.dart';
import 'package:buildnotifierrear/infrastructure/firestore/projects_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tasks_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/projects/overview/bloc/projects_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/projects/overview/view/projects_overview_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectsOverview extends StatelessWidget {
  const ProjectsOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProjectsOverviewBloc>(
      create: (context) => ProjectsOverviewBloc(
        controller: CRUDController<Project>(
          repository: ProjectsFirestoreRepository(),
        ),
        tasksController: TasksController(
          repository: TasksFirestoreRepository(),
        ),
      ),
      child: const ProjectsOverviewView(),
    );
  }
}
