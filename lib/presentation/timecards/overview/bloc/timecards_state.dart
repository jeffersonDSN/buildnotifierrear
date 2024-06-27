part of 'timecards_bloc.dart';

@freezed
class TimecardsOverviewState with _$TimecardsOverviewState {
  const factory TimecardsOverviewState.empty() = TimecardsOverviewStateEmpty;
  const factory TimecardsOverviewState.loading({
    required List<Period> periods,
    required Period selectedPeriod,
  }) = TimecardsOverviewStateLoading;
  const factory TimecardsOverviewState.loaded({
    required String employeeId,
    required List<Period> periods,
    required Period selectedPeriod,
    required List<Timecard> timeCards,
    required List<Employee> employees,
    required DependenteStateType usersState,
    required List<Project> projects,
    required DependenteStateType projectsState,
    required List<Activity> activities,
  }) = TimecardsOverviewStateLoaded;
}

extension OnTimecardsOverviewState on TimecardsOverviewState {
  bool get isEmpty => this is TimecardsOverviewStateEmpty;
  bool get isLoading => this is TimecardsOverviewStateLoading;
  bool get isLoaded => this is TimecardsOverviewStateLoaded;

  TimecardsOverviewStateLoading get asLoading =>
      this as TimecardsOverviewStateLoading;

  TimecardsOverviewStateLoaded get asLoaded =>
      this as TimecardsOverviewStateLoaded;
}
