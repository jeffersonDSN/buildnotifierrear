part of 'schedule_overview_bloc.dart';

@freezed
class ScheduleOverViewEvent with _$ScheduleOverViewEvent {
  const factory ScheduleOverViewEvent.changeSelectedDay({
    required DateTime selectedDay,
  }) = ScheduleEOverViewVentChangeSelectedDay;
}
