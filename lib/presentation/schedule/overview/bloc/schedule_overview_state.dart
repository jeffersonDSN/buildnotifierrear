part of 'schedule_overview_bloc.dart';

@freezed
class ScheduleOverViewState with _$ScheduleOverViewState {
  const factory ScheduleOverViewState.empty() = ScheduleOverViewStateEmpty;

  const factory ScheduleOverViewState.loading({
    required CalendarViewEnum calendarView,
    required DateTime fromDate,
    required DateTime toDate,
  }) = ScheduleOverViewStateLoading;

  const factory ScheduleOverViewState.loaded({
    required CalendarViewEnum calendarView,
    required DateTime fromDate,
    required DateTime toDate,
    required List<Appointment> appointments,
  }) = ScheduleOverViewStateLoaded;
}

extension OnScheduleOverViewState on ScheduleOverViewState {
  bool get isEmpty => this is ScheduleOverViewStateEmpty;
  bool get isLoading => this is ScheduleOverViewStateLoading;
  bool get isLoaded => this is ScheduleOverViewStateLoaded;

  ScheduleOverViewStateLoading get asLoading =>
      this as ScheduleOverViewStateLoading;

  ScheduleOverViewStateLoaded get asLoaded =>
      this as ScheduleOverViewStateLoaded;
}
