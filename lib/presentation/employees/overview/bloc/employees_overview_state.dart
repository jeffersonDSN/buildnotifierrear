part of 'employees_overview_bloc.dart';

@freezed
class EmployeesOverviewState with _$EmployeesOverviewState {
  const factory EmployeesOverviewState.empty() = EmployeesOverviewStateEmpty;
  const factory EmployeesOverviewState.loading() =
      EmployeesOverviewStateLoading;
  const factory EmployeesOverviewState.loaded({
    required List<Employee> employees,
  }) = EmployeesOverviewStateLoaded;
}

extension OnEmployeesOverviewState on EmployeesOverviewState {
  EmployeesOverviewStateEmpty get asEmpty =>
      this as EmployeesOverviewStateEmpty;
  EmployeesOverviewStateLoading get asLoading =>
      this as EmployeesOverviewStateLoading;
  EmployeesOverviewStateLoaded get asLoaded =>
      this as EmployeesOverviewStateLoaded;
}
