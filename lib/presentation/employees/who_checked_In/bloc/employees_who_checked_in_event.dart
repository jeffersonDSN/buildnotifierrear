part of 'employees_who_checked_in_bloc.dart';

@freezed
class EmployeesWhoCheckedInEvent with _$EmployeesWhoCheckedInEvent {
  const factory EmployeesWhoCheckedInEvent.load() =
      EmployeesWhoCheckedInEventLoad;
}
