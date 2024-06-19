part of 'assign_to_bloc.dart';

@freezed
class AssignToEvent with _$AssignToEvent {
  const factory AssignToEvent.load({
    required List<AppointmentUser> assignTo,
  }) = AssignToEventLoad;

  const factory AssignToEvent.check({
    required bool check,
    required User user,
  }) = AssignToEventCheck;
}
