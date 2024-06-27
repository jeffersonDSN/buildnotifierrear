import 'dart:ui';

import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_priority_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'task_edit_bloc.freezed.dart';
part 'task_edit_event.dart';
part 'task_edit_state.dart';

class TaskEditBloc extends Bloc<TaskEditEvent, TaskEditState> {
  TaskEditBloc({
    required TasksController controller,
    required ProjectsController projectsController,
  }) : super(const TaskEditState.empty()) {
    on<TaskEditEvent>(
      (event, emit) async {
        await event.when(
          load: (projectId, crudType) async {
            var result = await Future.wait([
              crudType.when(
                create: () async {
                  return Task(
                    productId: projectId,
                  );
                },
                update: (id) async {
                  return controller.getById(id);
                },
              ),
              projectsController.getAll(),
            ]);

            emit(
              TaskEditState.loaded(
                crudType: crudType,
                task: result[0] as Task,
                projects: result[1] as List<Project>,
              ),
            );
          },
          changeProject: (projectId, projectName) async {
            emit(
              state.asLoaded.copyWith(
                task: state.asLoaded.task.copyWith(
                  productId: projectId,
                  projectName: projectName,
                ),
              ),
            );
          },
          updateTitle: (value) async {
            emit(
              state.asLoaded.copyWith(
                task: state.asLoaded.task.copyWith(
                  title: value,
                ),
              ),
            );
          },
          changeStartDate: (value) {
            emit(
              state.asLoaded.copyWith(
                task: state.asLoaded.task.copyWith(
                  startDate: value,
                ),
              ),
            );
          },
          changeEstimatedEffort: (value) {
            emit(
              state.asLoaded.copyWith(
                task: state.asLoaded.task.copyWith(
                  estimatedEffort: value,
                ),
              ),
            );
          },
          changePriority: (value) {
            emit(
              state.asLoaded.copyWith(
                task: state.asLoaded.task.copyWith(
                  priority: value,
                ),
              ),
            );
          },
          changeStatus: (value) {
            emit(
              state.asLoaded.copyWith(
                task: state.asLoaded.task.copyWith(
                  status: value,
                ),
              ),
            );
          },
          changeNotes: (value) {
            emit(
              state.asLoaded.copyWith(
                task: state.asLoaded.task.copyWith(
                  notes: value,
                ),
              ),
            );
          },
          changeEndDate: (value) {
            emit(
              state.asLoaded.copyWith(
                task: state.asLoaded.task.copyWith(
                  expectedEndDate: value,
                ),
              ),
            );
          },
          changeSelectedTaskAssignTo: (employees) {
            emit(
              state.asLoaded.copyWith(
                task: state.asLoaded.task.copyWith(assignTo: employees),
              ),
            );
          },
          removeSelectedTaskAssignTo: (employee) {
            var list = [...state.asLoaded.task.assignTo];
            list.remove(employee);

            emit(
              state.asLoaded.copyWith(
                task: state.asLoaded.task.copyWith(assignTo: list),
              ),
            );
          },
          save: (callback) async {
            await state.asLoaded.crudType.when(
              create: () async {
                await controller.create(state.asLoaded.task);
              },
              update: (id) async {
                await controller.update(state.asLoaded.task);
              },
            );

            callback.call();
          },
        );
      },
    );
  }
}
