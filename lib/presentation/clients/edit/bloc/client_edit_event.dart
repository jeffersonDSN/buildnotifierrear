part of 'client_edit_bloc.dart';

@freezed
class ClientEditEvent with _$ClientEditEvent {
  const factory ClientEditEvent.load({
    required CrudType type,
  }) = ClientEditEventLoad;

  const factory ClientEditEvent.changeFirstName({
    required String value,
  }) = ClientEditEventChangeFirstName;

  const factory ClientEditEvent.changeLastName({
    required String value,
  }) = ClientEditEventChangeLastName;

  const factory ClientEditEvent.changeEmail({
    required String value,
  }) = ClientEditEventChangeEmail;

  const factory ClientEditEvent.changePhoneNumber({
    required String value,
  }) = ClientEditEventChangePhoneNumber;

  const factory ClientEditEvent.save({
    required VoidCallback callback,
  }) = ClientEditEventSave;
}
