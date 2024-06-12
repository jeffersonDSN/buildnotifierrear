import 'package:buildnotifierrear/domain/controllers/settings_controller.dart';
import 'package:buildnotifierrear/domain/entities/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'settings_edit_bloc.freezed.dart';
part 'settings_edit_event.dart';
part 'settings_edit_state.dart';

class SettingsEditBloc extends Bloc<SettingsEditEvent, SettingsEditState> {
  SettingsEditBloc({
    required SettingsController controller,
  }) : super(const SettingsEditState.empty()) {
    on<SettingsEditEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(
            const SettingsEditState.loading(),
          );

          var settings = await controller.getSettings();

          emit(
            SettingsEditState.loaded(settings: settings),
          );
        },
        changeName: (value) {
          emit(
            state.asLoaded.copyWith(
              settings: state.asLoaded.settings.copyWith(
                name: value,
              ),
            ),
          );
        },
        changePayPeriod: (value) {
          emit(
            state.asLoaded.copyWith(
              settings: state.asLoaded.settings.copyWith(
                payPeriod: value,
              ),
            ),
          );
        },
        save: (callBack) {
          controller.updateSettings(state.asLoaded.settings);

          callBack.call();
        },
      );
    });
  }
}
