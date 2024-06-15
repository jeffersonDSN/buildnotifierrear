part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.changeUserName({
    required String value,
  }) = SignInEventChangeUserName;

  const factory SignInEvent.changePassword({
    required String value,
  }) = SignInEventChangePassword;

  const factory SignInEvent.signIn({
    required ValueChanged<User> callback,
  }) = SignInEventSignIn;
}
