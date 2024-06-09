part of 'schedule_edit_bloc.dart';

@freezed
class ScheduleEditEvent with _$ScheduleEditEvent {
  const factory ScheduleEditEvent.load({
    required CrudType type,
  }) = ScheduleEditEventLoad;

  const factory ScheduleEditEvent.changePeriodType({
    required SchedulePeriodType value,
  }) = ScheduleEditEventChangePeriodType;

  const factory ScheduleEditEvent.changeSelectedAppointment({
    required Appointment value,
  }) = ScheduleEditEventChangeSelectedAppointment;

  const factory ScheduleEditEvent.addDate({
    required DateTime date,
  }) = ScheduleEditEventAddDate;

  const factory ScheduleEditEvent.remodeAppointment({
    required Appointment value,
  }) = ScheduleEditEventRemoveAppointment;
}
