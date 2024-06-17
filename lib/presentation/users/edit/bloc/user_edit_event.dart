part of 'user_edit_bloc.dart';

@freezed
class UserEditEvent with _$UserEditEvent {
  const factory UserEditEvent.load({
    required CrudType type,
  }) = UserEditEventtLoad;

  const factory UserEditEvent.changeFirstName({
    required String value,
  }) = UserEditEventChangeFirstName;

  const factory UserEditEvent.changeLastName({
    required String value,
  }) = UserEditEventChangeLastName;

  const factory UserEditEvent.changePhoneNumber({
    required String value,
  }) = UserEditEventChangePhoneNumber;

  const factory UserEditEvent.changeEmail({
    required String value,
  }) = UserEditEventChangeEmail;

  const factory UserEditEvent.changeDepartment({
    required String value,
  }) = UserEditEventChangeDepartment;

  const factory UserEditEvent.changeRole({
    required String value,
  }) = UserEditEventChangeRole;

  const factory UserEditEvent.changeHourlyRate({
    required double value,
  }) = UserEditEventChangeHourlyRate;

  const factory UserEditEvent.changeUsername({
    required String value,
  }) = UserEditEventChangeUsername;

  const factory UserEditEvent.changePassword({
    required String value,
  }) = UserEditEventChangePassword;

  const factory UserEditEvent.changeUserType({
    required int value,
  }) = UserEditEventChangeUserType;

  const factory UserEditEvent.save({
    required VoidCallback callback,
  }) = UserEditEventtSave;
}
