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

  const factory TaskEditEvent.changeStartDate({
    required DateTime value,
  }) = TaskEditEventStartDate;

  const factory TaskEditEvent.changeEndDate({
    required DateTime value,
  }) = TaskEditEventExpectedEndDate;

  const factory TaskEditEvent.changeEstimatedEffort({
    required String value,
  }) = TaskEditEventEstimatedEffort;

  const factory TaskEditEvent.changePriority({
    required int value,
  }) = TaskEditEventTaskPriority;

  const factory TaskEditEvent.changeStatus({
    required int value,
  }) = TaskEditEventStatus;

  const factory TaskEditEvent.changeNotes({
    required String value,
  }) = TaskEditEventNotes;

  const factory TaskEditEvent.save({
    required VoidCallback onSave,
  }) = TaskEditEventSave;
}
