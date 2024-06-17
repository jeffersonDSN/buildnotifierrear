import 'package:buildnotifierrear/domain/controllers/users_controller.dart';
import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_edit_bloc.freezed.dart';
part 'user_edit_event.dart';
part 'user_edit_state.dart';

class UserEditBloc extends Bloc<UserEditEvent, UserEditState> {
  UserEditBloc({
    required UsersController controller,
  }) : super(
          const UserEditState.empty(),
        ) {
    on<UserEditEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          emit(const UserEditState.loading());

          var result = await type.when(
            create: () async {
              return const User();
            },
            update: (id) async {
              return await controller.getById(id);
            },
          );

          emit(
            UserEditState.loaded(
              type: type,
              user: result,
            ),
          );
        },
        changeFirstName: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                firstName: value,
              ),
            ),
          );
        },
        changeLastName: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                lastName: value,
              ),
            ),
          );
        },
        changePhoneNumber: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                phoneNumber: value,
              ),
            ),
          );
        },
        changeEmail: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                email: value,
              ),
            ),
          );
        },
        changeAddress: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                address: value,
              ),
            ),
          );
        },
        changeAddress2: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                address2: value,
              ),
            ),
          );
        },
        changeCity: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                city: value,
              ),
            ),
          );
        },
        changeState: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                state: value,
              ),
            ),
          );
        },
        changeZipCode: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                zipCode: value,
              ),
            ),
          );
        },
        changeDepartment: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                department: value,
              ),
            ),
          );
        },
        changePosition: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                position: value,
              ),
            ),
          );
        },
        changeHourlyRate: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                hourlyRate: value,
              ),
            ),
          );
        },
        changeUsername: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                userName: value,
              ),
            ),
          );
        },
        changePassword: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                password: value,
              ),
            ),
          );
        },
        changeUserType: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                userType: value,
              ),
            ),
          );
        },
        save: (callback) async {
          await state.asLoaded.type.when(
            create: () {
              return controller.create(state.asLoaded.user);
            },
            update: (id) {
              return controller.update(
                state.asLoaded.user,
              );
            },
          ).then(
            (either) => either.fold(
              (error) {
                emit(
                  state.asLoaded.copyWith(
                    error: error,
                  ),
                );
              },
              (response) {
                callback.call();
              },
            ),
          );
        },
      );
    });
  }
}
