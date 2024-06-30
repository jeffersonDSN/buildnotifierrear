part of 'projects_overview_bloc.dart';

@freezed
class ProjectsOverviewState with _$ProjectsOverviewState {
  const factory ProjectsOverviewState.init() = ProjectsOverviewEventInit;
  const factory ProjectsOverviewState.loading() = ProjectsOverviewEventLoading;
  const factory ProjectsOverviewState.loaded({
    required List<Project> projects,
  }) = ProjectsOverviewEventLoaded;
}

extension OnProjectsOverviewState on ProjectsOverviewState {
  bool get isInit => this is ProjectsOverviewEventInit;

  ProjectsOverviewEventInit get asInit => this as ProjectsOverviewEventInit;
  ProjectsOverviewEventLoading get asLoading =>
      this as ProjectsOverviewEventLoading;
  ProjectsOverviewEventLoaded get asLoaded =>
      this as ProjectsOverviewEventLoaded;
}
