part of 'schedule_edit_bloc.dart';

@freezed
class ScheduleEditState with _$ScheduleEditState {
  const factory ScheduleEditState.empty() = ScheduleEditStateEmpty;
  const factory ScheduleEditState.loaded({
    required SchedulePeriodType periodType,
    required List<Appointment> appointments,
    Appointment? selectedAppointment,
    required List<Project> projects,
    required List<Task> tasks,
  }) = ScheduleEditStateLoaded;
}

extension OnScheduleEditState on ScheduleEditState {
  ScheduleEditStateLoaded get asLoaded => this as ScheduleEditStateLoaded;
}
