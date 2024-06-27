part of 'employee_edit_bloc.dart';

@freezed
class EmployeeEditState with _$EmployeeEditState {
  const factory EmployeeEditState.empty() = EmployeeEditStateEmpty;
  const factory EmployeeEditState.loading() = EmployeeEditStateLoading;
  const factory EmployeeEditState.loaded({
    required CrudType type,
    required Employee employee,
    required List<State> states,
    ErrorFields? error,
  }) = EmployeeEditStateLoaded;
}

extension OnEmployeeEditState on EmployeeEditState {
  EmployeeEditStateLoaded get asLoaded => this as EmployeeEditStateLoaded;
}
