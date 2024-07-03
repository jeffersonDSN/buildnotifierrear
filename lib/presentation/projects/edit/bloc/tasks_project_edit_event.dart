part of 'tasks_project_edit_bloc.dart';

@freezed
class TasksProjectEditEvent with _$TasksProjectEditEvent {
  const factory TasksProjectEditEvent.load({
    required String projectId,
    required DateTime projectStartDate,
    required DateTime projectEndDate,
  }) = TasksProjectEditEventLoad;

  const factory TasksProjectEditEvent.startPan({
    required Task task,
    required PanType type,
    required double startMousePos,
    required double initX,
  }) = TasksProjectEditEventStartPan;

  const factory TasksProjectEditEvent.endPan({
    required Task task,
    required PanType type,
  }) = TasksProjectEditEventEndPan;

  const factory TasksProjectEditEvent.changeStartDate({
    required Task task,
    required double mediaQueryWidth,
    required double globalPositionDx,
    required double chartAreaWidth,
    required double pixels,
  }) = TasksProjectEditEventChangeStartDate;

  const factory TasksProjectEditEvent.changeEndDate({
    required Task task,
    required double mediaQueryWidth,
    required double globalPositionDx,
    required double chartAreaWidth,
    required double pixels,
  }) = TasksProjectEditEventChangeEndDate;

  const factory TasksProjectEditEvent.changeDates({
    required Task task,
    required double mediaQueryWidth,
    required double globalPositionDx,
    required double chartAreaWidth,
    required double pixels,
  }) = TasksProjectEditEventChangeDates;
}
