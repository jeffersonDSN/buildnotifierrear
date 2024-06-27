import 'package:buildnotifierrear/domain/controllers/period_controller.dart';
import 'package:buildnotifierrear/domain/controllers/states_controller.dart';
import 'package:buildnotifierrear/domain/controllers/employees_controller.dart';
import 'package:buildnotifierrear/domain/controllers/timecards_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/infrastructure/firestore/settings_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/states_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/employees_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/timecards_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/employees/edit/bloc/employee_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/employees/edit/bloc/employee_timecard_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/employees/edit/view/employee_edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeEdit extends IView {
  final CrudType? type;

  const EmployeeEdit({
    super.key,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return MultiBlocProvider(
      providers: [
        BlocProvider<EmployeeEditBloc>(
          create: (context) => EmployeeEditBloc(
            controller: EmployeesController(
              repository: EmployeesFireStoreRepository(
                tenant: tenantId,
              ),
            ),
            statesController: StatesController(
              repository: StatesFirestoreRepository(),
            ),
          ),
        ),
        BlocProvider<EmployeeTimecardOverviewBloc>(
          create: (context) => EmployeeTimecardOverviewBloc(
            controller: TimecardsController(
              repository: TimecardsFireStoreRepository(
                tenantId: tenantId,
              ),
            ),
            periodController: PeriodController(
              repository: SettingsFirestoreRepository(
                tenantId: tenantId,
              ),
            ),
          ),
        )
      ],
      child: EmployeeEditView(
        type: type ?? const CrudType.create(),
      ),
    );
  }
}
