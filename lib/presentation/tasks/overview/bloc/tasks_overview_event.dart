part of 'tasks_overview_bloc.dart';

@freezed
class TasksOverviewEvent with _$TasksOverviewEvent {
  const factory TasksOverviewEvent.load() = TasksOverviewEventLoad;
}