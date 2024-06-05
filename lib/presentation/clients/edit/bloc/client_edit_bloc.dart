import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/client/client.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_edit_bloc.freezed.dart';
part 'client_edit_event.dart';
part 'client_edit_state.dart';

class ClientEditBloc extends Bloc<ClientEditEvent, ClientEditState> {
  ClientEditBloc({
    required CRUDController<Client> controller,
  }) : super(
          const ClientEditState.empty(),
        ) {
    on<ClientEditEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          emit(const ClientEditState.loading());

          await type.when(
            create: () async {
              emit(
                ClientEditState.loaded(
                  type: type,
                  client: const Client(),
                ),
              );
            },
            update: (id) async {
              var client = await controller.getById(id);
              emit(
                ClientEditState.loaded(
                  type: type,
                  client: client,
                ),
              );
            },
          );
        },
        updateFirstName: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                firstName: value,
              ),
            ),
          );
        },
        updateLastName: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                lastName: value,
              ),
            ),
          );
        },
        updateEmail: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                email: value,
              ),
            ),
          );
        },
        save: (callback) async {
          await state.asLoaded.type.when(
            create: () async {
              return controller.create(
                state.asLoaded.client,
              );
            },
            update: (id) async {
              return controller.update(
                state.asLoaded.client,
              );
            },
          );

          callback.call();
        },
      );
    });
  }
}
