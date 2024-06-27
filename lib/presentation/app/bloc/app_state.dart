part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.signIn() = AppStateIn;

  const factory AppState.signUp() = AppStateUp;

  const factory AppState.logged({
    required Employee user,
    required Mod mod,
    required Locale locale,
  }) = AppStateLogged;
}

extension OnAppState on AppState {
  AppStateLogged get asLogged => this as AppStateLogged;
}
