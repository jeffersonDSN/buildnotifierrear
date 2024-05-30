part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.changeView({
    required Mod mod,
  }) = AppEventChangeView;
}
