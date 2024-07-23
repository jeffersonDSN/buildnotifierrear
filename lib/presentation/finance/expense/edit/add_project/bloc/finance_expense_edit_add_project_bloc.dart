import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_expense_edit_add_project_bloc.freezed.dart';
part 'finance_expense_edit_add_project_event.dart';
part 'finance_expense_edit_add_project_state.dart';

class FinanceExpenseEditAddProjectBloc extends Bloc<
    FinanceExpenseEditAddProjectEvent, FinanceExpenseEditAddProjectState> {
  FinanceExpenseEditAddProjectBloc({
    required ProjectsController projectsController,
    required TasksController tasksController,
  }) : super(const FinanceExpenseEditAddProjectState.init()) {
    on<FinanceExpenseEditAddProjectEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(
            const FinanceExpenseEditAddProjectState.loading(),
          );

          var projects = await projectsController.getAll();

          emit(
            FinanceExpenseEditAddProjectState.loaded(
              projects: projects,
            ),
          );
        },
        changeSelectedProject: (id) async {
          Project? selectedProject;
          List<Task> tasks = [];

          var lasState = state.asLoaded;

          if (id.isNotEmpty) {
            selectedProject =
                lasState.projects.where((project) => project.id == id).first;
            tasks = await tasksController.getAllByProject(id);
          }

          emit(
            lasState.copyWith(
              selectedProject: selectedProject,
              tasks: tasks,
              selectedTask: null,
            ),
          );
        },
        changeSelectedTask: (id) {
          Task? selectedTask;

          var lasState = state.asLoaded;

          if (id.isNotEmpty) {
            selectedTask = lasState.tasks.where((task) => task.id == id).first;
          }

          emit(
            lasState.copyWith(
              selectedTask: selectedTask,
            ),
          );
        },
      );
    });
  }
}
