part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.init({
    required String userName,
    required String password,
  }) = SignInStateInit;

  const factory SignInState.signIn({
    required String userName,
    required String password,
  }) = SignInStateSignIn;
}

extension OnSignInState on SignInState {
  bool get isInit => this is SignInStateInit;
  bool get isSignIn => this is SignInStateSignIn;

  SignInStateInit get asInit => this as SignInStateInit;
  SignInStateSignIn get asSignIn => this as SignInStateSignIn;
}
