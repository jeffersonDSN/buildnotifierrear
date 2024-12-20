part of 'project_edit_bloc.dart';

@freezed
class ProjectEditEvent with _$ProjectEditEvent {
  const factory ProjectEditEvent.load({
    required CrudType type,
  }) = ProjectEditEventLoad;

  const factory ProjectEditEvent.changeName({
    required String value,
  }) = ProjectEditEventChangeName;

  const factory ProjectEditEvent.changeZipCode({
    required String value,
  }) = ProjectEditEventChangeZipCode;

  const factory ProjectEditEvent.changeState({
    required String value,
  }) = ProjectEditEventChangeState;

  const factory ProjectEditEvent.changeCity({
    required String value,
  }) = ProjectEditEventChangeCity;

  const factory ProjectEditEvent.changeAddress({
    required String value,
  }) = ProjectEditEventChangeAddress;

  const factory ProjectEditEvent.changeAddress2({
    required String value,
  }) = ProjectEditEventChangeAddress2;

  const factory ProjectEditEvent.changeClient({
    required String clientId,
    required String firstName,
    required String lastName,
  }) = ProjectEditEventChangeClient;

  const factory ProjectEditEvent.changeStartDate({
    required DateTime value,
  }) = ProjectEditEventChangeStartDate;

  const factory ProjectEditEvent.changeExpectedEndDate({
    required DateTime value,
  }) = ProjectEditEventChangeExpectedEndDate;

  const factory ProjectEditEvent.changeEstimatedEffort({
    required String value,
  }) = ProjectEditEventEstimatedEffort;

  const factory ProjectEditEvent.changeBudget({
    required double value,
  }) = ProjectEditEventChangeBudget;

  const factory ProjectEditEvent.changeStatus({
    required ProjectStatus value,
  }) = ProjectEditEventChangeStatus;

  const factory ProjectEditEvent.changeDescription({
    required String value,
  }) = ProjectEditEventChangeDescription;

  const factory ProjectEditEvent.save({
    required VoidCallback callback,
  }) = ProjectEditEventSave;
}
