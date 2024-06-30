part of 'employees_who_checked_in_bloc.dart';

@freezed
class EmployeesWhoCheckedInState with _$EmployeesWhoCheckedInState {
  const factory EmployeesWhoCheckedInState.init() =
      EmployeesWhoCheckedInStateInit;

  const factory EmployeesWhoCheckedInState.loading() =
      EmployeesWhoCheckedInStateLoading;

  const factory EmployeesWhoCheckedInState.loaded({
    required List<Timecard> timecards,
  }) = EmployeesWhoCheckedInStateLoaded;
}
