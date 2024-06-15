import 'package:buildnotifierrear/domain/controllers/settings_controller.dart';
import 'package:buildnotifierrear/domain/controllers/users_controller.dart';
import 'package:buildnotifierrear/domain/entities/settings/settings.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({
    required UsersController controller,
    required SettingsController settingsController,
  }) : super(
          SignUpState.init(
            user: const User(
              userType: 1,
            ),
            settings: Settings(
              payPeriod: 0,
              periodStart: DateTime.now(),
            ),
          ),
        ) {
    on<SignUpEvent>((event, emit) async {
      await event.when(
        changeFirstName: (value) {
          var oldState = state.copyWith();

          emit(
            state.copyWith(
              user: oldState.user.copyWith(
                firstName: value,
              ),
            ),
          );
        },
        changeLastName: (value) {
          var oldState = state.copyWith();

          emit(
            state.copyWith(
              user: oldState.user.copyWith(
                lastName: value,
              ),
            ),
          );
        },
        changeEmail: (value) {
          var oldState = state.copyWith();

          emit(
            state.copyWith(
              user: oldState.user.copyWith(
                email: value,
              ),
            ),
          );
        },
        changePhone: (value) {
          var oldState = state.copyWith();

          emit(
            state.copyWith(
              user: oldState.user.copyWith(
                phoneNumber: value,
              ),
            ),
          );
        },
        changeUserName: (value) {
          var oldState = state.copyWith();

          emit(
            state.copyWith(
              user: oldState.user.copyWith(
                userName: value,
              ),
            ),
          );
        },
        changePassword: (value) {
          var oldState = state.copyWith();

          emit(
            state.copyWith(
              user: oldState.user.copyWith(
                password: value,
              ),
            ),
          );
        },
        changeCompanyName: (value) {
          var oldState = state.copyWith();

          emit(
            state.copyWith(
              settings: oldState.settings.copyWith(
                name: value,
              ),
            ),
          );
        },
        signUp: (callback) async {
          emit(
            SignUpState.signUp(
              user: state.user,
              settings: state.settings,
            ),
          );

          User? user;

          var id = await settingsController.createNewAccount(
            state.settings,
            state.user,
          );

          if (id.isNotEmpty) {
            await controller.create(
              state.user.copyWith(tenant: id),
            );

            user = await controller.getUserByUserNamePassword(
              state.user.userName,
              state.user.password,
            );
          }

          if (user != null) {
            callback.call(user);
          } else {
            emit(
              SignUpState.signUpError(
                user: state.user,
                settings: state.settings,
              ),
            );
          }
        },
      );
    });
  }
}
