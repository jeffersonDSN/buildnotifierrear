part of 'tasks_overview_bloc.dart';

@freezed
class TasksOverviewState with _$TasksOverviewState {
  const factory TasksOverviewState.init() = TasksOverviewStateInit;
  const factory TasksOverviewState.loading() = TasksOverviewStateLoading;
  const factory TasksOverviewState.loaded({
    required List<Task> tasks,
  }) = TasksOverviewStateloaded;
}

extension OnTasksOverviewState on TasksOverviewState {
  bool get isInit => this is TasksOverviewStateInit;
}
