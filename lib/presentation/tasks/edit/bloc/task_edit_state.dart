part of 'task_edit_bloc.dart';

@freezed
class TaskEditState with _$TaskEditState {
  const factory TaskEditState.empty() = TaskEditStateEmpty;
  const factory TaskEditState.loading() = TaskEditStateLoading;
  const factory TaskEditState.loaded({
    required CrudType crudType,
    required Task task,
    required List<Project> projects,
  }) = TaskEditStateLoaded;
}

extension OnTaskEditState on TaskEditState {
  bool get isLoaded => this is TaskEditStateLoaded;

  TaskEditStateEmpty get asEmpty => this as TaskEditStateEmpty;
  TaskEditStateLoading get asLoading => this as TaskEditStateLoading;
  TaskEditStateLoaded get asLoaded => this as TaskEditStateLoaded;
}
