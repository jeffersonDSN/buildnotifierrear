part of 'finance_expense_edit_add_project_bloc.dart';

@freezed
class FinanceExpenseEditAddProjectState
    with _$FinanceExpenseEditAddProjectState {
  const factory FinanceExpenseEditAddProjectState.init() =
      FinanceExpenseEditAddProjectStateInit;

  const factory FinanceExpenseEditAddProjectState.loading() =
      FinanceExpenseEditAddProjectStateLoading;

  const factory FinanceExpenseEditAddProjectState.loaded({
    required List<Project> projects,
    Project? selectedProject,
    @Default([]) List<Task> tasks,
    Task? selectedTask,
  }) = FinanceExpenseEditAddProjectStateLoaded;
}

extension OnFinanceExpenseEditAddProjectState
    on FinanceExpenseEditAddProjectState {
  bool get isLoaded => this is FinanceExpenseEditAddProjectStateLoaded;

  FinanceExpenseEditAddProjectStateLoaded get asLoaded =>
      this as FinanceExpenseEditAddProjectStateLoaded;
}
