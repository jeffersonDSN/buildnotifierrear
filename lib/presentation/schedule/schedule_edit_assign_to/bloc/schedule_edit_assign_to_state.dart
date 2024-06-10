part of 'schedule_edit_assign_to_bloc.dart';

@freezed
class ScheduleEditAssignToState with _$ScheduleEditAssignToState {
  const factory ScheduleEditAssignToState.empty() =
      ScheduleEditAssignToStateEmpty;

  const factory ScheduleEditAssignToState.loading({
    required List<AppointmentUser> assignTo,
  }) = ScheduleEditAssignToStateLoading;

  const factory ScheduleEditAssignToState.loaded({
    required List<AppointmentUser> assignTo,
    required List<User> users,
  }) = ScheduleEditAssignToStateLoaded;
}

extension OnScheduleEditAssignToState on ScheduleEditAssignToState {
  ScheduleEditAssignToStateLoaded get asLoaded =>
      this as ScheduleEditAssignToStateLoaded;
}
