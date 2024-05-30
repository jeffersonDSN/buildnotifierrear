part of 'task_edit_bloc.dart';

@freezed
class TaskEditEvent with _$TaskEditEvent {
  const factory TaskEditEvent.load({
    @Default('') String projectId,
    @Default(CrudType.create()) CrudType crudType,
  }) = TaskEditEventLoad;

  const factory TaskEditEvent.updateProjectId({
    required String value,
  }) = TaskEditEventUpdateProjectId;

  const factory TaskEditEvent.updateTitle({
    required String value,
  }) = TaskEditEventUpdateTitle;

  const factory TaskEditEvent.save() = TaskEditEventSave;
}
