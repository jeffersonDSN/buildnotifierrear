part of 'task_edit_bloc.dart';

@freezed
class TaskEditEvent with _$TaskEditEvent {
  const factory TaskEditEvent.load({
    @Default('') String projectId,
    @Default(CrudType.create()) CrudType crudType,
  }) = TaskEditEventLoad;

  const factory TaskEditEvent.changeProject({
    required String projectId,
    required String projectName,
  }) = TaskEditEventChangeProject;

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

  const factory TaskEditEvent.changeBudget({
    required double value,
  }) = TaskEditEventChangeBudget;

  const factory TaskEditEvent.changePercProject({
    required int value,
  }) = TaskEditEventChangePercProject;

  const factory TaskEditEvent.changePriority({
    required TaskPriority value,
  }) = TaskEditEventTaskPriority;

  const factory TaskEditEvent.changeStatus({
    required TaskStatus value,
  }) = TaskEditEventStatus;

  const factory TaskEditEvent.changeNotes({
    required String value,
  }) = TaskEditEventNotes;

  const factory TaskEditEvent.changeSelectedTaskAssignTo({
    required List<AppointmentUser> employees,
  }) = TaskEditEventChangeSelectedTaskAssignTo;

  const factory TaskEditEvent.removeSelectedTaskAssignTo({
    required AppointmentUser employee,
  }) = TaskEditEventRemoveSelectedTaskAssignTo;

  const factory TaskEditEvent.save({
    required VoidCallback onSave,
  }) = TaskEditEventSave;
}
