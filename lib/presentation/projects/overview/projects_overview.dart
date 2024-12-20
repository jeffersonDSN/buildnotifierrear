import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/projects_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/projects/overview/bloc/projects_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/projects/overview/view/projects_overview_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectsOverview extends IView {
  const ProjectsOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider<ProjectsOverviewBloc>(
      create: (context) => ProjectsOverviewBloc(
        controller: ProjectsController(
          repository: ProjectsFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: const ProjectsOverviewView(),
    );
  }
}
