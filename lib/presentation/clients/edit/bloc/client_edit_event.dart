part of 'client_edit_bloc.dart';

@freezed
class ClientEditEvent with _$ClientEditEvent {
  const factory ClientEditEvent.load({
    required CrudType type,
  }) = ClientEditEventLoad;

  const factory ClientEditEvent.updateFirstName({
    required String value,
  }) = ClientEditEventUpdateFirstName;

  const factory ClientEditEvent.updateLastName({
    required String value,
  }) = ClientEditEventUpdateLastName;

  const factory ClientEditEvent.updateEmail({
    required String value,
  }) = ClientEditEventUpdateEmail;

  const factory ClientEditEvent.save({
    required VoidCallback callback,
  }) = ClientEditEventSave;
}
