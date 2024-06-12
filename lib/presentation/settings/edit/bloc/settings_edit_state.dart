part of 'settings_edit_bloc.dart';

@freezed
class SettingsEditState with _$SettingsEditState {
  const factory SettingsEditState.empty() = SettingsEditStateEmpty;

  const factory SettingsEditState.loading() = SettingsEditStateLoading;

  const factory SettingsEditState.loaded({
    required Settings settings,
  }) = SettingsEditStateLoaded;
}

extension OnSettingsEditState on SettingsEditState {
  SettingsEditStateLoaded get asLoaded => this as SettingsEditStateLoaded;
}
