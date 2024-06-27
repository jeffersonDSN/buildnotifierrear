part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.signIn({
    required Employee user,
  }) = AppEventSignIn;

  const factory AppEvent.createNewUser() = AppEventCreateNewUser;

  const factory AppEvent.changeView({
    required Mod mod,
  }) = AppEventChangeView;

  const factory AppEvent.goBack() = AppEventGoBack;

  const factory AppEvent.changeLanguage({
    required Locale locale,
  }) = AppEventChangeLanguage;

  const factory AppEvent.signOut() = AppEventSignOut;
}
