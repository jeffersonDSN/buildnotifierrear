part of 'projects_overview_bloc.dart';

@freezed
class ProjectsOverviewState with _$ProjectsOverviewState {
  const factory ProjectsOverviewState.empty() = ProjectsOverviewEventEmpty;
  const factory ProjectsOverviewState.loading() = ProjectsOverviewEventLoading;
  const factory ProjectsOverviewState.loaded({
    required List<Project> projects,
  }) = ProjectsOverviewEventLoaded;
}

extension OnProjectsOverviewState on ProjectsOverviewState {
  ProjectsOverviewEventEmpty get asEmpty => this as ProjectsOverviewEventEmpty;
  ProjectsOverviewEventLoading get asLoading =>
      this as ProjectsOverviewEventLoading;
  ProjectsOverviewEventLoaded get asLoaded =>
      this as ProjectsOverviewEventLoaded;
}
