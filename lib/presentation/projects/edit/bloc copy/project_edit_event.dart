part of 'project_edit_bloc.dart';

@freezed
class ProjectEditEvent with _$ProjectEditEvent {
  const factory ProjectEditEvent.load({
    @Default(CrudType.create()) CrudType type,
  }) = ProjectEditEventLoad;

  const factory ProjectEditEvent.updateName({
    required String value,
  }) = ProjectEditEventUpdateName;

  const factory ProjectEditEvent.updateZipCode({
    required String value,
  }) = ProjectEditEventUpdateZipCode;

  const factory ProjectEditEvent.updateState({
    required String value,
  }) = ProjectEditEventUpdateState;

  const factory ProjectEditEvent.updateCity({
    required String value,
  }) = ProjectEditEventUpdateCity;

  const factory ProjectEditEvent.updateAddress({
    required String value,
  }) = ProjectEditEventUpdateAddress;

  const factory ProjectEditEvent.updateTasksState({
    required DependenteStateType value,
  }) = ProjectEditEventUpdateTasksState;

  const factory ProjectEditEvent.addTask({
    required Task value,
  }) = ProjectEditEventAddTask;

  const factory ProjectEditEvent.save({
    required VoidCallback callback,
  }) = ProjectEditEventSave;
}
