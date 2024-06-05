part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.signIn({
    required User user,
  }) = AppEventSignIn;

  const factory AppEvent.changeView({
    required Mod mod,
  }) = AppEventChangeView;

  const factory AppEvent.signOut() = AppEventSignOut;
}
