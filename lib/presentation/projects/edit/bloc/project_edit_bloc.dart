import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/entities/client/client.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_edit_bloc.freezed.dart';
part 'project_edit_event.dart';
part 'project_edit_state.dart';

class ProjectEditBloc extends Bloc<ProjectEditEvent, ProjectEditState> {
  ProjectEditBloc(
      {required ProjectsController controller,
      required CRUDController<Client> clientsController,
      required})
      : super(
          const ProjectEditState.empty(),
        ) {
    on<ProjectEditEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          emit(const ProjectEditState.loading());

          var result = await type.when(
            create: () async {
              return const Project();
            },
            update: (id) async {
              return controller.getById(id);
            },
          );

          var clients = await clientsController.getAll();

          emit(
            ProjectEditState.loaded(
                type: type, project: result, clients: clients),
          );
        },
        changeName: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                name: value,
              ),
            ),
          );
        },
        changeClient: (clientId, firstName, lastName) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                clientId: clientId,
                clientFirstname: firstName,
                clientLastname: lastName,
              ),
            ),
          );
        },
        changeZipCode: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                zipCode: value,
              ),
            ),
          );
        },
        changeState: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                state: value,
              ),
            ),
          );
        },
        changeCity: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                city: value,
              ),
            ),
          );
        },
        changeAddress: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                address: value,
              ),
            ),
          );
        },
        save: (callback) async {
          await state.asLoaded.type.when(
            create: () async {
              return controller.create(
                state.asLoaded.project,
              );
            },
            update: (id) async {
              return controller.update(
                state.asLoaded.project,
              );
            },
          );

          callback.call();
        },
      );
    });
  }
}
