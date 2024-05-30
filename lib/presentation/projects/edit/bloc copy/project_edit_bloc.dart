import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/domain/entities/project.dart';
import 'package:buildnotifierrear/domain/entities/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_edit_bloc.freezed.dart';
part 'project_edit_event.dart';
part 'project_edit_state.dart';

class ProjectEditBloc extends Bloc<ProjectEditEvent, ProjectEditState> {
  ProjectEditBloc({required ProjectsController controller})
      : super(const ProjectEditState.empty()) {
    on<ProjectEditEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          emit(const ProjectEditState.loading());

          await type.when(
            create: () async {
              emit(
                ProjectEditState.loaded(
                  type: type,
                  project: const Project(),
                ),
              );
            },
            update: (id) async {
              var project = await controller.getById(id);
              emit(
                ProjectEditState.loaded(
                  type: type,
                  project: project,
                ),
              );
            },
          );
        },
        updateName: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                name: value,
              ),
            ),
          );
        },
        updateZipCode: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                zipCode: value,
              ),
            ),
          );
        },
        updateState: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                state: value,
              ),
            ),
          );
        },
        updateCity: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                city: value,
              ),
            ),
          );
        },
        updateAddress: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                address: value,
              ),
            ),
          );
        },
        updateTasksState: (value) {
          emit(
            state.asLoaded.copyWith(tasksState: value),
          );
        },
        addTask: (value) {
          emit(
            state.asLoaded.copyWith(
              project: state.asLoaded.project.copyWith(
                tasks: [...state.asLoaded.project.tasks, value],
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
