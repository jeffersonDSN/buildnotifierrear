part of 'schedule_edit_bloc.dart';

@freezed
class ScheduleEditEvent with _$ScheduleEditEvent {
  const factory ScheduleEditEvent.load({
    required CrudType type,
  }) = ScheduleEditEventLoad;

  const factory ScheduleEditEvent.changePeriodType({
    required SchedulePeriodType value,
  }) = ScheduleEditEventChangePeriodType;
}
