part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.init({
    required User user,
    required Settings settings,
  }) = SignUpStateUp;

  const factory SignUpState.signUp({
    required User user,
    required Settings settings,
  }) = SignUpStateSignUp;

  const factory SignUpState.signUpError({
    required User user,
    required Settings settings,
  }) = SignUpStateSignUpError;
}

extension OnSignUpState on SignUpState {
  bool get isInit => this is SignUpStateUp;
  bool get isSignUp => this is SignUpStateSignUp;
  bool get isSignUpError => this is SignUpStateSignUpError;

  SignUpStateUp get asInit => this as SignUpStateUp;
  SignUpStateSignUp get asSignIn => this as SignUpStateSignUp;
  SignUpStateSignUpError get asSignInError => this as SignUpStateSignUpError;
}
