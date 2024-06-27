part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.changeFirstName({
    required String value,
  }) = SignUpEventChangeFirstName;

  const factory SignUpEvent.changeLastName({
    required String value,
  }) = SignUpEventChangeLastname;

  const factory SignUpEvent.changeCompanyName({
    required String value,
  }) = SignUpEventChangeCompanyName;

  const factory SignUpEvent.changeEmail({
    required String value,
  }) = SignUpEventChangeEmail;

  const factory SignUpEvent.changePhone({
    required String value,
  }) = SignUpEventChangePhone;

  const factory SignUpEvent.changeUserName({
    required String value,
  }) = SignUpEventChangeUserName;

  const factory SignUpEvent.changePassword({
    required String value,
  }) = SignUpEventChangePassword;

  const factory SignUpEvent.signUp({
    required ValueChanged<Employee> callback,
  }) = SignUpEventSignUp;
}
