import 'dart:ui';

import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'task_edit_bloc.freezed.dart';
part 'task_edit_event.dart';
part 'task_edit_state.dart';

class TaskEditBloc extends Bloc<TaskEditEvent, TaskEditState> {
  TaskEditBloc({
    required TasksController controller,
  }) : super(
          const TaskEditState.empty(),
        ) {
    on<TaskEditEvent>(
      (event, emit) async {
        await event.when(
          load: (projectId, crudType) async {
            await crudType.when(
              create: () async {
                emit(
                  TaskEditState.loaded(
                    crudType: crudType,
                    task: Task(
                      productId: projectId,
                    ),
                  ),
                );
              },
              update: (id) async {
                var task = await controller.getById(id);

                emit(
                  TaskEditState.loaded(
                    crudType: crudType,
                    task: task,
                  ),
                );
              },
            );
          },
          updateProjectId: (value) async {
            emit(
              state.asloaded.copyWith(
                task: state.asloaded.task.copyWith(
                  productId: value,
                ),
              ),
            );
          },
          updateTitle: (value) async {
            emit(
              state.asloaded.copyWith(
                task: state.asloaded.task.copyWith(
                  title: value,
                ),
              ),
            );
          },
          changeStartDate: (value) {
            emit(
              state.asloaded.copyWith(
                task: state.asloaded.task.copyWith(
                  startDate: value,
                ),
              ),
            );
          },
          changeEstimatedEffort: (value) {
            emit(
              state.asloaded.copyWith(
                task: state.asloaded.task.copyWith(
                  estimatedEffort: value,
                ),
              ),
            );
          },
          changePriority: (value) {
            emit(
              state.asloaded.copyWith(
                task: state.asloaded.task.copyWith(
                  priority: value,
                ),
              ),
            );
          },
          changeStatus: (value) {
            emit(
              state.asloaded.copyWith(
                task: state.asloaded.task.copyWith(
                  status: value,
                ),
              ),
            );
          },
          changeNotes: (value) {
            emit(
              state.asloaded.copyWith(
                task: state.asloaded.task.copyWith(
                  notes: value,
                ),
              ),
            );
          },
          changeEndDate: (value) {
            emit(
              state.asloaded.copyWith(
                task: state.asloaded.task.copyWith(
                  expectedEndDate: value,
                ),
              ),
            );
          },
          save: (callback) async {
            await state.asloaded.crudType.when(
              create: () async {
                await controller.create(state.asloaded.task);
              },
              update: (id) async {
                await controller.update(state.asloaded.task);
              },
            );

            callback.call();
          },
        );
      },
    );
  }
}
