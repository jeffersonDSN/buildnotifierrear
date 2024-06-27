import 'package:buildnotifierrear/domain/controllers/employees_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/employees_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/employees/overview/bloc/employees_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/employees/overview/view/employees_overview_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersOverview extends IView {
  const UsersOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider<EmployeesOverviewBloc>(
      create: (context) => EmployeesOverviewBloc(
        controller: EmployeesController(
          repository: EmployeesFireStoreRepository(
            tenant: tenantId,
          ),
        ),
      ),
      child: const EmployeesOverviewView(),
    );
  }
}
