import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'tasks_overview_bloc.freezed.dart';
part 'tasks_overview_event.dart';
part 'tasks_overview_state.dart';

class TasksOverviewBloc extends Bloc<TasksOverviewEvent, TasksOverviewState> {
  TasksOverviewBloc({
    required TasksController controller,
  }) : super(const TasksOverviewState.empty()) {
    on<TasksOverviewEvent>(
      (event, emit) async {
        await event.when(
          load: () async {
            emit(const TasksOverviewState.loading());

            var tasks = await controller.getAll();

            emit(
              TasksOverviewState.loaded(
                tasks: tasks,
              ),
            );
          },
        );
      },
    );
  }
}
