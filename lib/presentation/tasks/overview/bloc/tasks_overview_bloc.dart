import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'tasks_overview_bloc.freezed.dart';
part 'tasks_overview_event.dart';
part 'tasks_overview_state.dart';

class TasksOverviewBloc extends Bloc<TasksOverviewEvent, TasksOverviewState> {
  TasksOverviewBloc({
    required TasksController controller,
  }) : super(const TasksOverviewState.init()) {
    on<TasksOverviewEvent>(
      (event, emit) async {
        await event.when(
          load: (projectId) async {
            emit(const TasksOverviewState.loading());

            var tasks = projectId.isNotEmpty
                ? await controller.getAllByProject(projectId)
                : await controller.getAll();

            emit(
              TasksOverviewState.loaded(
                tasks: tasks,
              ),
            );
          },
          changeStatus: (task, status) {
            var value = task.copyWith(status: status);

            emit(TasksOverviewState.loaded(
                tasks: state.asLoaded.tasks.map((task) {
              if (task.id == value.id) {
                return value;
              }

              return task;
            }).toList()));

            controller.updateStatus(task.id, status);
          },
        );
      },
    );
  }
}
