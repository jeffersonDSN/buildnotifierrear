import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/controllers/timecards_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/projects_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tasks_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/timecards_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/employees/who_checked_In/bloc/employees_who_checked_in_bloc.dart';
import 'package:buildnotifierrear/presentation/home/overview/home_overview_view.dart';
import 'package:buildnotifierrear/presentation/projects/overview/bloc/projects_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/bloc/tasks_overview_bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomeOverview extends IView {
  const HomeOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => EmployeesWhoCheckedInBloc(
            controller: TimecardsController(
              repository: TimecardsFireStoreRepository(tenantId: tenantId),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => ProjectsOverviewBloc(
            controller: ProjectsController(
              repository: ProjectsFirestoreRepository(tenantId: tenantId),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => TasksOverviewBloc(
            controller: TasksController(
              repository: TasksFirestoreRepository(
                tenantId: tenantId,
              ),
            ),
          ),
        )
      ],
      child: const HomeOverviewView(),
    );
  }
}
