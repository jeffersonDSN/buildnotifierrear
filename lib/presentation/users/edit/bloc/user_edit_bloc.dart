import 'package:buildnotifierrear/domain/controllers/users_controller.dart';
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
        updateFirstName: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                firstName: value,
              ),
            ),
          );
        },
        updateLastName: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                lastName: value,
              ),
            ),
          );
        },
        updateEmail: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                email: value,
              ),
            ),
          );
        },
        updateUsername: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                userName: value,
              ),
              isDuplicateUsername: false,
            ),
          );
        },
        updatePassword: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                password: value,
              ),
            ),
          );
        },
        updateUserType: (value) {
          emit(
            state.asLoaded.copyWith(
              user: state.asLoaded.user.copyWith(
                userType: value,
              ),
            ),
          );
        },
        save: (callback) async {
          var isDuplicateUsername = false;

          if (state.asLoaded.user.userName.isNotEmpty) {
            isDuplicateUsername = await controller.hasThisUsername(
              state.asLoaded.user.userName,
              state.asLoaded.user.id,
            );
          }

          if (isDuplicateUsername) {
            emit(
              state.asLoaded.copyWith(
                isDuplicateUsername: true,
              ),
            );
          } else {
            await state.asLoaded.type.when(
              create: () async {
                return controller.create(
                  state.asLoaded.user,
                );
              },
              update: (id) async {
                return controller.update(
                  state.asLoaded.user,
                );
              },
            );

            callback.call();
          }
        },
      );
    });
  }
}
