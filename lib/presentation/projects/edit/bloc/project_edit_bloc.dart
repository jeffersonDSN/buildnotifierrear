import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/controllers/states_controller.dart';
import 'package:buildnotifierrear/domain/entities/client/client.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/enums/project_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/domain/entities/state/state.dart';
import 'package:flutter/material.dart' hide State;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_edit_bloc.freezed.dart';
part 'project_edit_event.dart';
part 'project_edit_state.dart';

class ProjectEditBloc extends Bloc<ProjectEditEvent, ProjectEditState> {
  ProjectEditBloc({
    required ProjectsController controller,
    required CRUDController<Client> clientsController,
    required StatesController statesController,
  }) : super(
          const ProjectEditState.empty(),
        ) {
    on<ProjectEditEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          emit(const ProjectEditState.loading());

          var result = await Future.wait([
            type.when(
              create: () async {
                return const Project();
              },
              update: (id) async {
                return controller.getById(id);
              },
            ),
            clientsController.getAll(),
            statesController.getAll(),
          ]);

          emit(
            ProjectEditState.loaded(
              type: type,
              project: result[0] as Project,
              clients: result[1] as List<Client>,
              states: result[2] as List<State>,
            ),
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
        changeAddress2: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                address2: value,
              ),
            ),
          );
        },
        changeStartDate: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                startDate: value,
              ),
            ),
          );
        },
        changeExpectedEndDate: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                expectedCompletionDate: value,
              ),
            ),
          );
        },
        changeEstimatedEffort: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                estimatedEffort: value,
              ),
            ),
          );
        },
        changeBudget: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                budget: value,
              ),
            ),
          );
        },
        changeStatus: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                status: value,
              ),
            ),
          );
        },
        changeDescription: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                description: value,
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
