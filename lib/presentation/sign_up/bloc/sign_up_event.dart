part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.changeUserName({
    required String value,
  }) = SignUpEventChangeUserName;

  const factory SignUpEvent.changePassword({
    required String value,
  }) = SignUpEventChangePassword;

  const factory SignUpEvent.signIn({
    required ValueChanged<User> callback,
  }) = SignUpEventSignIn;
}
