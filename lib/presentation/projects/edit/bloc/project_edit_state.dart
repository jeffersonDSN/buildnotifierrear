part of 'project_edit_bloc.dart';

@freezed
class ProjectEditState with _$ProjectEditState {
  const factory ProjectEditState.empty() = ProjectEditStateEmpty;
  const factory ProjectEditState.loading() = ProjectEditStateLoading;
  const factory ProjectEditState.loaded({
    required CrudType type,
    required Project project,
    required List<Client> clients,
    required List<State> states,
    @Default(false) bool isSaving,
  }) = ProjectEditStateLoaded;
}

extension OnProjectEditState on ProjectEditState {
  bool get isLoaded => this is ProjectEditStateLoaded;

  ProjectEditStateLoaded get asLoaded => this as ProjectEditStateLoaded;
}
