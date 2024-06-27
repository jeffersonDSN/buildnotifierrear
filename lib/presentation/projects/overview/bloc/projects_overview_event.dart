part of 'projects_overview_bloc.dart';

@freezed
class ProjectsOverviewEvent with _$ProjectsOverviewEvent {
  const factory ProjectsOverviewEvent.load() = ProjectsOverviewEventLoad;
}
