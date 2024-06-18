import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/states_controller.dart';
import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/client/client.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/state/state.dart';
import 'package:flutter/material.dart' hide State;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_edit_bloc.freezed.dart';
part 'client_edit_event.dart';
part 'client_edit_state.dart';

class ClientEditBloc extends Bloc<ClientEditEvent, ClientEditState> {
  ClientEditBloc({
    required CRUDController<Client> controller,
    required StatesController statesController,
  }) : super(
          const ClientEditState.empty(),
        ) {
    on<ClientEditEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          emit(const ClientEditState.loading());

          var result = await Future.wait([
            type.when(
              create: () async {
                return const Client();
              },
              update: (id) async {
                return controller.getById(id);
              },
            ),
            statesController.getAll(),
          ]);

          emit(
            ClientEditState.loaded(
              type: type,
              client: result[0] as Client,
              states: result[1] as List<State>,
            ),
          );
        },
        changeFirstName: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                firstName: value,
              ),
            ),
          );
        },
        changeMiddleName: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                middleName: value,
              ),
            ),
          );
        },
        changeLastName: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                lastName: value,
              ),
            ),
          );
        },
        changeEmail: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                email: value,
              ),
            ),
          );
        },
        changePhoneNumber: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                phoneNumber: value,
              ),
            ),
          );
        },
        changeAddress: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                address: value,
              ),
            ),
          );
        },
        changeAddress2: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                address2: value,
              ),
            ),
          );
        },
        changeCity: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                city: value,
              ),
            ),
          );
        },
        changeState: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                state: value,
              ),
            ),
          );
        },
        changeZipCode: (value) {
          emit(
            state.asLoaded.copyWith(
              client: state.asLoaded.client.copyWith(
                zipCode: value,
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
