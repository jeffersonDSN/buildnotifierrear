part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.init({
    required String userName,
    required String password,
  }) = SignUpStateInit;

  const factory SignUpState.signUp({
    required String userName,
    required String password,
  }) = SignUpStateSignIn;

  const factory SignUpState.signUpError({
    required String userName,
    required String password,
  }) = SignUpStateSignUpError;
}

extension OnSignUpState on SignUpState {
  bool get isInit => this is SignUpStateInit;
  bool get isSignIn => this is SignUpStateSignIn;
  bool get isSignInError => this is SignUpStateSignUpError;

  SignUpStateInit get asInit => this as SignUpStateInit;
  SignUpStateSignIn get asSignIn => this as SignUpStateSignIn;
  SignUpStateSignUpError get asSignInError => this as SignUpStateSignUpError;
}
