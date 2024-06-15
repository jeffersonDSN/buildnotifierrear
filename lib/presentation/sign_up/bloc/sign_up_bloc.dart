import 'package:buildnotifierrear/domain/controllers/users_controller.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({required UsersController controller})
      : super(
          const SignUpState.init(
            userName: '',
            password: '',
          ),
        ) {
    on<SignUpEvent>((event, emit) async {
      await event.when(
        changeUserName: (value) {
          emit(
            state.copyWith(
              userName: value,
            ),
          );
        },
        changePassword: (value) {
          emit(
            state.copyWith(
              password: value,
            ),
          );
        },
        signIn: (callback) async {
          emit(
            SignUpState.signUp(
              userName: state.userName,
              password: state.password,
            ),
          );

          var user = await controller.getUserByUserNamePassword(
            state.userName,
            state.password,
          );

          if (user != null) {
            callback.call(user);
          } else {
            emit(
              SignUpState.signUpError(
                userName: state.userName,
                password: state.password,
              ),
            );
          }
        },
      );
    });
  }
}
