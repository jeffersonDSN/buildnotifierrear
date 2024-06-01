import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/domain/entities/project.dart';
import 'package:buildnotifierrear/domain/entities/task.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'projects_overview_bloc.freezed.dart';
part 'projects_overview_event.dart';
part 'projects_overview_state.dart';

class ProjectsOverviewBloc
    extends Bloc<ProjectsOverviewEvent, ProjectsOverviewState> {
  ProjectsOverviewBloc({
    required CRUDController<Project> controller,
    required TasksController tasksController,
  }) : super(const ProjectsOverviewState.empty()) {
    on<ProjectsOverviewEvent>(
      (event, emit) async {
        await event.when(
          load: () async {
            emit(const ProjectsOverviewState.loading());

            var projects = await controller.getAll();

            emit(
              ProjectsOverviewState.loaded(
                projects: projects,
                tasksOfprojectSelected: [],
                tasksState: const DependenteStateType.listing(),
              ),
            );

            if (projects.isNotEmpty) {
              add(
                ProjectsOverviewEvent.changeProjectSelected(
                  projectSelected: projects[0],
                ),
              );
            }
          },
          changeProjectSelected: (projectSelected) async {
            emit(
              state.asLoaded.copyWith(
                projectSelected: projectSelected,
                tasksState: const DependenteStateType.loading(),
              ),
            );

            var tasks = await tasksController.getAllByProject(
              projectSelected.id,
            );

            emit(
              state.asLoaded.copyWith(
                tasksOfprojectSelected: tasks,
                tasksState: const DependenteStateType.listing(),
              ),
            );
          },
          updateTasksState: (tasksState) {
            tasksState.maybeWhen(
              orElse: () {
                emit(
                  state.asLoaded.copyWith(
                    tasksState: tasksState,
                  ),
                );
              },
              creating: () {
                emit(
                  state.asLoaded.copyWith(
                    tasksState: tasksState,
                    taskSelected: Task(
                      productId: state.asLoaded.projectSelected!.id,
                    ),
                  ),
                );
              },
              updating: (value) {
                emit(
                  state.asLoaded.copyWith(
                    tasksState: tasksState,
                    taskSelected: value,
                  ),
                );
              },
            );
          },
          updateTitleTaskSelected: (value) {
            emit(
              state.asLoaded.copyWith(
                taskSelected: state.asLoaded.taskSelected?.copyWith(
                  title: value,
                ),
              ),
            );
          },
          saveTaskSelected: (callback) async {
            await state.asLoaded.tasksState.maybeWhen(
              orElse: () {},
              creating: () async {
                await tasksController.create(state.asLoaded.taskSelected!);
              },
              updating: (task) async {
                await tasksController.update(state.asLoaded.taskSelected!);
              },
            );

            var tasks = await tasksController.getAllByProject(
              state.asLoaded.projectSelected!.id,
            );

            emit(
              state.asLoaded.copyWith(
                tasksOfprojectSelected: tasks,
              ),
            );

            callback.call();
          },
        );
      },
    );
  }
}
