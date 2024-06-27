import 'package:buildnotifierrear/domain/controllers/employees_controller.dart';
import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({required EmployeesController controller})
      : super(
          const SignInState.init(
            userName: '',
            password: '',
          ),
        ) {
    on<SignInEvent>((event, emit) async {
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
            SignInState.signIn(
              userName: state.userName,
              password: state.password,
            ),
          );

          var user = await controller.getEmployeeByUserNamePassword(
            state.userName,
            state.password,
          );

          if (user != null) {
            callback.call(user);
          } else {
            emit(
              SignInState.signInError(
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
