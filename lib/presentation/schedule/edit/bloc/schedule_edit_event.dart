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

  const factory ScheduleEditEvent.changeSelectedAppointmentTitle({
    required String value,
  }) = ScheduleEditEventChangeSelectedAppointmentTitle;

  const factory ScheduleEditEvent.changeSelectedAppointmentProject({
    required String id,
    required String value,
  }) = ScheduleEditEventChangeSelectedAppointmentProject;

  const factory ScheduleEditEvent.changeSelectedAppointmentTask({
    required String id,
    required String value,
  }) = ScheduleEditEventChangeSelectedAppointmentTask;

  const factory ScheduleEditEvent.changeSelectedAppointmentLocation({
    required String value,
  }) = ScheduleEditEventChangeSelectedAppointmentLocation;

  const factory ScheduleEditEvent.changeSelectedAppointmentDescription({
    required String value,
  }) = ScheduleEditEventChangeSelectedAppointmentDescription;

  const factory ScheduleEditEvent.changeSelectedAppointmentAssignTo({
    required List<AppointmentUser> value,
  }) = ScheduleEditEventChangeSelectedAppointmentAssignTo;

  const factory ScheduleEditEvent.removeSelectedAppointmentAssignTo({
    required AppointmentUser user,
  }) = ScheduleEditEventChangeRemoveSelectedAppointmentAssignTo;

  const factory ScheduleEditEvent.addDate({
    required DateTime date,
  }) = ScheduleEditEventAddDate;

  const factory ScheduleEditEvent.remodeAppointment({
    required Appointment value,
  }) = ScheduleEditEventRemoveAppointment;
}
