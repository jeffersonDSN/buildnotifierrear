import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/projects_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tasks_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/expense/edit/add_project/bloc/finance_expense_edit_add_project_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/expense/edit/add_project/view/finance_expense_edit_add_project_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpenseEditAddProject extends IView {
  const FinanceExpenseEditAddProject({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => FinanceExpenseEditAddProjectBloc(
        projectsController: ProjectsController(
          repository: ProjectsFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
        tasksController: TasksController(
          repository: TasksFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: const FinanceExpenseEditAddProjectView(),
    );
  }
}
