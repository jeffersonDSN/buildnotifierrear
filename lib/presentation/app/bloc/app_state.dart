part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.empty() = AppStateEmpty;

  const factory AppState.logged({
    required User user,
    required Mod mod,
  }) = AppStateLogged;
}

extension OnAppState on AppState {
  AppStateLogged get asLogged => this as AppStateLogged;
}
