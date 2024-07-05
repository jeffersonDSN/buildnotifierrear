part of 'tasks_project_edit_bloc.dart';

@freezed
class TasksProjectEditState with _$TasksProjectEditState {
  const factory TasksProjectEditState.init() = TasksProjectEditStateInit;
  const factory TasksProjectEditState.loading({
    required String projectId,
    required DateTime startDate,
    required DateTime endDate,
    required List<DateTime> viewRange,
  }) = TasksProjectEditStateLoading;

  const factory TasksProjectEditState.loaded({
    required String projectId,
    required DateTime startDate,
    required DateTime endDate,
    required List<DateTime> viewRange,
    required List<Task> tasks,
    @Default(25) double viewRangeToFitScreen,
    Task? selectedTask,
    @Default(0) double initX,
    @Default(0) double width,
    @Default(0) double startPanChartPos,
    @Default(false) isPanStartActive,
    @Default(false) isPanMiddleActive,
    @Default(false) isPanEndActive,
  }) = TasksProjectEditStateloaded;
}

extension OnTasksProjectEditState on TasksProjectEditState {
  bool get isInit => this is TasksProjectEditStateloaded;

  TasksProjectEditStateloaded get asLoaded =>
      this as TasksProjectEditStateloaded;
}
