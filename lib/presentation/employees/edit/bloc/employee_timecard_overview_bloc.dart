import 'package:buildnotifierrear/domain/controllers/period_controller.dart';
import 'package:buildnotifierrear/domain/controllers/timecards_controller.dart';
import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'employee_timecard_overview_bloc.freezed.dart';
part 'employee_timecard_overview_event.dart';
part 'employee_timecard_overview_state.dart';

class EmployeeTimecardOverviewBloc
    extends Bloc<EmployeeTimecardOverviewEvent, EmployeeTimecardOverviewState> {
  EmployeeTimecardOverviewBloc({
    required TimecardsController controller,
    required PeriodController periodController,
  }) : super(const EmployeeTimecardOverviewState.empty()) {
    on<EmployeeTimecardOverviewEvent>((event, emit) async {
      await event.when(
        load: (employee) async {
          var periods = await periodController.getPeriods();

          emit(
            EmployeeTimecardOverviewState.loading(
              employee: employee,
              periods: periods,
              selectedPeriod: periods[0],
            ),
          );

          var timecards = await controller.getAllOfByEmployeeAndPeriod(
            employee.id,
            periods[0],
          );

          emit(
            EmployeeTimecardOverviewState.loaded(
              employee: employee,
              periods: periods,
              selectedPeriod: periods[0],
              timecards: timecards,
            ),
          );
        },
        changePeriod: (period) async {
          var employee = state.asLoaded.employee;
          var periods = state.asLoaded.periods;

          emit(
            EmployeeTimecardOverviewState.loading(
              employee: employee,
              selectedPeriod: period,
              periods: periods,
            ),
          );

          var timecards = await controller.getAllOfByEmployeeAndPeriod(
            employee.id,
            period,
          );

          emit(
            EmployeeTimecardOverviewState.loaded(
              employee: employee,
              periods: periods,
              selectedPeriod: period,
              timecards: timecards,
            ),
          );
        },
      );
    });
  }
}
