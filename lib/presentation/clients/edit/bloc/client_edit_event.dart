part of 'client_edit_bloc.dart';

@freezed
class ClientEditEvent with _$ClientEditEvent {
  const factory ClientEditEvent.load({
    required CrudType type,
  }) = ClientEditEventLoad;

  const factory ClientEditEvent.changeFirstName({
    required String value,
  }) = ClientEditEventChangeFirstName;

  const factory ClientEditEvent.changeMiddleName({
    required String value,
  }) = ClientEditEventChangeMiddleName;

  const factory ClientEditEvent.changeLastName({
    required String value,
  }) = ClientEditEventChangeLastName;

  const factory ClientEditEvent.changeEmail({
    required String value,
  }) = ClientEditEventChangeEmail;

  const factory ClientEditEvent.changePhoneNumber({
    required String value,
  }) = ClientEditEventChangePhoneNumber;

  const factory ClientEditEvent.changeAddress({
    required String value,
  }) = ClientEditEventChangeAddress;

  const factory ClientEditEvent.changeAddress2({
    required String value,
  }) = ClientEditEventChangeAddress2;

  const factory ClientEditEvent.changeCity({
    required String value,
  }) = ClientEditEventChangeCity;

  const factory ClientEditEvent.changeState({
    required String value,
  }) = ClientEditEventChangeState;

  const factory ClientEditEvent.changeZipCode({
    required String value,
  }) = ClientEditEventChangeZipCode;

  const factory ClientEditEvent.save({
    required VoidCallback callback,
  }) = ClientEditEventSave;
}
