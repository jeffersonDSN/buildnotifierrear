import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
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
    required CRUDController<User> controller,
  }) : super(
          const UserEditState.empty(),
        ) {
    on<UserEditEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          emit(const UserEditState.loading());

          await type.when(
            create: () async {
              emit(
                UserEditState.loaded(
                  type: type,
                  user: const User(),
                ),
              );
            },
            update: (id) async {
              var user = await controller.getById(id);
              emit(
                UserEditState.loaded(
                  type: type,
                  user: user,
                ),
              );
            },
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
        save: (callback) async {
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
        },
      );
    });
  }
}
