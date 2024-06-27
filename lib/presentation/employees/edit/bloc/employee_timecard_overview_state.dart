part of 'employee_timecard_overview_bloc.dart';

@freezed
class EmployeeTimecardOverviewState with _$EmployeeTimecardOverviewState {
  const factory EmployeeTimecardOverviewState.empty() =
      EmployeeTimecardOverviewStateEmpty;

  const factory EmployeeTimecardOverviewState.loading({
    required Employee employee,
    required Period selectedPeriod,
    required List<Period> periods,
  }) = EmployeeTimecardOverviewStateLoading;

  const factory EmployeeTimecardOverviewState.loaded({
    required Employee employee,
    required Period selectedPeriod,
    required List<Period> periods,
    required List<Timecard> timecards,
  }) = EmployeeTimecardOverviewStateLoaded;
}

extension OnEmployeeTimecardOverviewState on EmployeeTimecardOverviewState {
  bool get isEmpty => this is EmployeeTimecardOverviewStateEmpty;
  bool get isLoading => this is EmployeeTimecardOverviewStateLoading;
  bool get isLoaded => this is EmployeeTimecardOverviewStateLoaded;

  EmployeeTimecardOverviewStateLoading get asLoading =>
      this as EmployeeTimecardOverviewStateLoading;

  EmployeeTimecardOverviewStateLoaded get asLoaded =>
      this as EmployeeTimecardOverviewStateLoaded;
}
