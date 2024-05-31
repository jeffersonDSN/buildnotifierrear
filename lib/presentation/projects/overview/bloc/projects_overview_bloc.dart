import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/domain/entities/project.dart';
import 'package:buildnotifierrear/domain/entities/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'projects_overview_bloc.freezed.dart';
part 'projects_overview_event.dart';
part 'projects_overview_state.dart';

class ProjectsOverviewBloc
    extends Bloc<ProjectsOverviewEvent, ProjectsOverviewState> {
  ProjectsOverviewBloc({
    required ProjectsController controller,
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
            emit(
              state.asLoaded.copyWith(
                tasksState: tasksState,
              ),
            );
          },
        );
      },
    );
  }
}
