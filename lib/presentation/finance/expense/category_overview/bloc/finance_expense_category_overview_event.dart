part of 'finance_expense_category_overview_bloc.dart';

@freezed
class FinanceExpenseCategoryOverviewEvent
    with _$FinanceExpenseCategoryOverviewEvent {
  const factory FinanceExpenseCategoryOverviewEvent.load() =
      FinanceExpenseCategoryOverviewEventLoad;

  const factory FinanceExpenseCategoryOverviewEvent.addCategory({
    required ExpenseCategory category,
  }) = FinanceExpenseCategoryOverviewEventAddCard;

  const factory FinanceExpenseCategoryOverviewEvent.editCategory({
    required ExpenseCategory category,
  }) = FinanceExpenseCategoryOverviewEventEditCard;
}
