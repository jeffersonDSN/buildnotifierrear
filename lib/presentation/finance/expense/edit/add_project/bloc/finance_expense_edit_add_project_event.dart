part of 'finance_expense_edit_add_project_bloc.dart';

@freezed
class FinanceExpenseEditAddProjectEvent
    with _$FinanceExpenseEditAddProjectEvent {
  const factory FinanceExpenseEditAddProjectEvent.load() =
      FinanceExpenseEditAddProjectEventLoad;

  const factory FinanceExpenseEditAddProjectEvent.changeSelectedProject({
    required String id,
  }) = FinanceExpenseEditAddProjectEventChangeSelectedProject;

  const factory FinanceExpenseEditAddProjectEvent.changeSelectedTask({
    required String id,
  }) = FinanceExpenseEditAddProjectEventChangeSelectedTask;
}
