part of 'schedule_overview_bloc.dart';

@freezed
class ScheduleOverViewEvent with _$ScheduleOverViewEvent {
  const factory ScheduleOverViewEvent.load({
    required CalendarViewEnum calendarView,
    required DateTime fromDate,
    required DateTime toDate,
  }) = ScheduleEOverViewVentLoad;

  const factory ScheduleOverViewEvent.delete({
    required String appointmantId,
  }) = ScheduleOverViewEventDelete;
}
