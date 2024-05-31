part of 'projects_overview_bloc.dart';

@freezed
class ProjectsOverviewEvent with _$ProjectsOverviewEvent {
  const factory ProjectsOverviewEvent.load() = ProjectsOverviewEventLoad;

  const factory ProjectsOverviewEvent.changeProjectSelected({
    required Project projectSelected,
  }) = ProjectsOverviewEventChangeProjectSelected;

  const factory ProjectsOverviewEvent.updateTasksState({
    required DependenteStateType tasksState,
  }) = ProjectsOverviewEventUpdateTasksState;
}
