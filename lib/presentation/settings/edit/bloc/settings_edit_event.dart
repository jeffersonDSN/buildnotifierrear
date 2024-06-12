part of 'settings_edit_bloc.dart';

@freezed
class SettingsEditEvent with _$SettingsEditEvent {
  const factory SettingsEditEvent.load() = SettingsEditEventLoad;

  const factory SettingsEditEvent.changeName({
    required String value,
  }) = SettingsEditEventChangeName;

  const factory SettingsEditEvent.changePayPeriod({
    required int value,
  }) = SettingsEditEventPayPeriod;

  const factory SettingsEditEvent.save({
    required VoidCallback callBack,
  }) = SettingsEditEventSave;
}
