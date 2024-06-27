part of 'employees_overview_bloc.dart';

@freezed
class EmployeesOverviewEvent with _$EmployeesOverviewEvent {
  const factory EmployeesOverviewEvent.load() = EmployeesOverviewEventLoad;
}
