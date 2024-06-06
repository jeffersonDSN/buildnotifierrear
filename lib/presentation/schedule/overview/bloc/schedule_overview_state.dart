part of 'schedule_overview_bloc.dart';

@freezed
class ScheduleOverViewState with _$ScheduleOverViewState {
  const factory ScheduleOverViewState.empty({
    required DateTime selectedDay,
  }) = ScheduleOverViewStateEmpty;

  const factory ScheduleOverViewState.loading({
    required DateTime selectedDay,
  }) = ScheduleOverViewStateLoading;

  const factory ScheduleOverViewState.loaded({
    required DateTime selectedDay,
    required List<Appointment> appointments,
  }) = ScheduleOverViewStateLoaded;
}

extension OnScheduleOverViewState on ScheduleOverViewState {
  bool get isLoading => this is ScheduleOverViewStateLoading;
  bool get isLoaded => this is ScheduleOverViewStateLoaded;

  ScheduleOverViewStateLoaded get asLoaded =>
      this as ScheduleOverViewStateLoaded;
}
