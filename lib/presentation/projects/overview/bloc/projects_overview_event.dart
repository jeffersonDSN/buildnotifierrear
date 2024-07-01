part of 'projects_overview_bloc.dart';

@freezed
class ProjectsOverviewEvent with _$ProjectsOverviewEvent {
  const factory ProjectsOverviewEvent.load() = ProjectsOverviewEventLoad;

  const factory ProjectsOverviewEvent.changeStatus({
    required Project project,
    required ProjectStatus status,
  }) = ProjectsOverviewEventChangeStatus;
}
