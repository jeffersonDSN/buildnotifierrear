part of 'projects_overview_bloc.dart';

@freezed
class ProjectsOverviewEvent with _$ProjectsOverviewEvent {
  const factory ProjectsOverviewEvent.load() = ProjectsOverviewEventLoad;

  const factory ProjectsOverviewEvent.changeSelectedProject({
    required Project selectedProject,
  }) = ProjectsOverviewEventChangeProjectSelected;

  const factory ProjectsOverviewEvent.changeTasksState({
    required DependenteStateType tasksState,
  }) = ProjectsOverviewEventChangeTasksState;

  const factory ProjectsOverviewEvent.changeTitleTaskSelected({
    required String value,
  }) = ProjectsOverviewEventChangeTitleTaskSelected;

  const factory ProjectsOverviewEvent.changeSelectedDay({
    required DateTime selectedDay,
  }) = ProjectsOverviewEventSelectedDay;

  const factory ProjectsOverviewEvent.saveTaskSelected({
    required VoidCallback callback,
  }) = ProjectsOverviewEventSaveTaskSelected;
}
