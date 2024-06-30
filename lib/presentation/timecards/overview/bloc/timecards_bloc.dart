import 'package:buildnotifierrear/domain/controllers/activities_controller.dart';
import 'package:buildnotifierrear/domain/controllers/appointment_controller.dart';
import 'package:buildnotifierrear/domain/controllers/period_controller.dart';
import 'package:buildnotifierrear/domain/controllers/timecards_controller.dart';
import 'package:buildnotifierrear/domain/controllers/employees_controller.dart';
import 'package:buildnotifierrear/domain/entities/activity/activity.dart';
import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'timecards_bloc.freezed.dart';
part 'timecards_event.dart';
part 'timecards_state.dart';

class TimecardsOverviewBloc
    extends Bloc<TimecardsOverviewEvent, TimecardsOverviewState> {
  TimecardsOverviewBloc({
    required TimecardsController controller,
    required PeriodController periodController,
    required EmployeesController employeesController,
    required AppointmentController appointmentController,
    required ActivitiesController activitiesController,
  }) : super(const TimecardsOverviewState.empty()) {
    on<TimecardsOverviewEvent>((event, emit) async {
      await event.when(
        load: (employeeId) async {
          var periods = await periodController.getPeriods();

          emit(
            TimecardsOverviewState.loading(
              periods: periods,
              selectedPeriod: periods[0],
            ),
          );

          var result = await Future.wait([
            employeeId.isNotEmpty
                ? controller.getAllOfByEmployeeAndPeriod(employeeId, periods[0])
                : controller.getAllOfPeriod(periods[0]),
            activitiesController.getAllActivityInThePeriod(periods[0]),
          ]);

          var timeCards = result[0] as List<Timecard>;
          var activity = (result[1] as List<Activity>)
              .where((activity) => activity.projectId.isNotEmpty)
              .toList();

          emit(
            TimecardsOverviewState.loaded(
              employeeId: employeeId,
              periods: periods,
              selectedPeriod: periods[0],
              timeCards: timeCards,
              employees: [],
              usersState: const DependenteStateType.loading(),
              projects: [],
              projectsState: const DependenteStateType.loading(),
              activities: activity,
            ),
          );

          var userIds = timeCards.map((timecard) {
            return timecard.employeeId;
          }).toList();

          add(TimecardsOverviewEvent.loadUsers(userIds: userIds));
        },
        changeSelectedPeriod: (period) async {
          var loaded = state.asLoaded;

          emit(
            TimecardsOverviewState.loading(
              periods: loaded.periods,
              selectedPeriod: period,
            ),
          );

          var result = await Future.wait([
            loaded.employeeId.isNotEmpty
                ? controller.getAllOfByEmployeeAndPeriod(
                    loaded.employeeId, period)
                : controller.getAllOfPeriod(period),
            activitiesController.getAllActivityInThePeriod(period),
          ]);

          var timeCards = result[0] as List<Timecard>;
          var activity = (result[1] as List<Activity>)
              .where((activity) => activity.projectId.isNotEmpty)
              .toList();

          emit(
            TimecardsOverviewState.loaded(
              employeeId: loaded.employeeId,
              periods: loaded.periods,
              selectedPeriod: period,
              timeCards: timeCards,
              employees: [],
              usersState: const DependenteStateType.loading(),
              projects: [],
              projectsState: const DependenteStateType.loading(),
              activities: activity,
            ),
          );

          var userIds = timeCards.map((timecard) {
            return timecard.employeeId;
          }).toList();

          add(TimecardsOverviewEvent.loadUsers(userIds: userIds));
        },
        loadUsers: (userIds) async {
          var employees = await employeesController.getEmployeesByID(
            userIds.toSet().toList(),
          );

          emit(
            state.asLoaded.copyWith(
              employees: employees,
              usersState: const DependenteStateType.listing(),
            ),
          );
        },
      );
    });
  }
}
