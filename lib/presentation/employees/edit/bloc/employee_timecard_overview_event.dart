part of 'employee_timecard_overview_bloc.dart';

@freezed
class EmployeeTimecardOverviewEvent with _$EmployeeTimecardOverviewEvent {
  const factory EmployeeTimecardOverviewEvent.load({
    required Employee employee,
  }) = EmployeeTimecardOverviewEventLoad;

  const factory EmployeeTimecardOverviewEvent.changePeriod({
    required Period period,
  }) = EmployeeTimecardOverviewEventChangePeriod;
}
