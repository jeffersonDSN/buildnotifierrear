part of 'assign_to_bloc.dart';

@freezed
class AssignToState with _$AssignToState {
  const factory AssignToState.empty() = AssignToStateEmpty;

  const factory AssignToState.loading({
    required List<AppointmentUser> assignTo,
  }) = AssignToStateLoading;

  const factory AssignToState.loaded({
    required List<AppointmentUser> assignTo,
    required List<Employee> users,
  }) = AssignToStateLoaded;
}

extension OnAssignToState on AssignToState {
  AssignToStateLoaded get asLoaded => this as AssignToStateLoaded;
}
