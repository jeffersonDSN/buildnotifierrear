part of 'user_edit_bloc.dart';

@freezed
class UserEditEvent with _$UserEditEvent {
  const factory UserEditEvent.load({
    required CrudType type,
  }) = UserEditEventtLoad;

  const factory UserEditEvent.updateFirstName({
    required String value,
  }) = UserEditEventtUpdateFirstName;

  const factory UserEditEvent.updateLastName({
    required String value,
  }) = UserEditEventtUpdateLastName;

  const factory UserEditEvent.updateEmail({
    required String value,
  }) = UserEditEventtUpdateEmail;

  const factory UserEditEvent.updateUsername({
    required String value,
  }) = UserEditEventtUpdateUsername;

  const factory UserEditEvent.updatePassword({
    required String value,
  }) = UserEditEventtUpdatePassword;

  const factory UserEditEvent.updateUserType({
    required int value,
  }) = UserEditEventtUpdateUserType;

  const factory UserEditEvent.save({
    required VoidCallback callback,
  }) = UserEditEventtSave;
}
