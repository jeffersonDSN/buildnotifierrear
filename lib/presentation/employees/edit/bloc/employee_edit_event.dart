part of 'employee_edit_bloc.dart';

@freezed
class EmployeeEditEvent with _$EmployeeEditEvent {
  const factory EmployeeEditEvent.load({
    required CrudType type,
  }) = EmployeeEditEventtLoad;

  const factory EmployeeEditEvent.changeFirstName({
    required String value,
  }) = EmployeeEditEventChangeFirstName;

  const factory EmployeeEditEvent.changeMiddleName({
    required String value,
  }) = EmployeeEditEventChangeMiddleName;

  const factory EmployeeEditEvent.changeLastName({
    required String value,
  }) = EmployeeEditEventChangeLastName;

  const factory EmployeeEditEvent.changePhoneNumber({
    required String value,
  }) = EmployeeEditEventChangePhoneNumber;

  const factory EmployeeEditEvent.changeEmail({
    required String value,
  }) = EmployeeEditEventChangeEmail;

  const factory EmployeeEditEvent.changeAddress({
    required String value,
  }) = EmployeeEditEventChangeAddress;

  const factory EmployeeEditEvent.changeAddress2({
    required String value,
  }) = EmployeeEditEventChangeAddress2;

  const factory EmployeeEditEvent.changeCity({
    required String value,
  }) = EmployeeEditEventChangeCity;

  const factory EmployeeEditEvent.changeState({
    required String value,
  }) = EmployeeEditEventChangeState;

  const factory EmployeeEditEvent.changeZipCode({
    required String value,
  }) = EmployeeEditEventChangeZipCode;

  const factory EmployeeEditEvent.changeDepartment({
    required String value,
  }) = EmployeeEditEventChangeDepartment;

  const factory EmployeeEditEvent.changePosition({
    required String value,
  }) = EmployeeEditEventChangePosition;

  const factory EmployeeEditEvent.changeHourlyRate({
    required double value,
  }) = EmployeeEditEventChangeHourlyRate;

  const factory EmployeeEditEvent.changeEmployeename({
    required String value,
  }) = EmployeeEditEventChangeEmployeename;

  const factory EmployeeEditEvent.changePassword({
    required String value,
  }) = EmployeeEditEventChangePassword;

  const factory EmployeeEditEvent.changeEmployeeType({
    required int value,
  }) = EmployeeEditEventChangeEmployeeType;

  const factory EmployeeEditEvent.save({
    required VoidCallback callback,
  }) = EmployeeEditEventtSave;
}
