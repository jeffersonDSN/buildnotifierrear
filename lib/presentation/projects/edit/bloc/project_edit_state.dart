part of 'project_edit_bloc.dart';

@freezed
class ProjectEditState with _$ProjectEditState {
  const factory ProjectEditState.empty() = ProjectEditStateEmpty;
  const factory ProjectEditState.loading() = ProjectEditStateLoading;
  const factory ProjectEditState.loaded({
    required CrudType type,
    required Project project,
  }) = ProjectEditStateLoaded;
}

extension OnProjectEditState on ProjectEditState {
  ProjectEditStateLoaded get asLoaded => this as ProjectEditStateLoaded;
}
