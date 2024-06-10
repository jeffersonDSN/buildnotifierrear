part of 'schedule_edit_assign_to_bloc.dart';

@freezed
class ScheduleEditAssignToEvent with _$ScheduleEditAssignToEvent {
  const factory ScheduleEditAssignToEvent.load({
    required List<AppointmentUser> assignTo,
  }) = ScheduleEditAssignToEventLoad;

  const factory ScheduleEditAssignToEvent.check({
    required bool check,
    required User user,
  }) = ScheduleEditCheck;
}
