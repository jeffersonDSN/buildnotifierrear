part of 'finance_expense_item_edit_bloc.dart';

@freezed
class FinanceExpenseItemEditState with _$FinanceExpenseItemEditState {
  const factory FinanceExpenseItemEditState.init() =
      FinanceExpenseItemEditStateInit;

  const factory FinanceExpenseItemEditState.loading() =
      FinanceExpenseItemEditStateLoading;

  const factory FinanceExpenseItemEditState.loaded({
    required ExpenseItem item,
  }) = FinanceExpenseItemEditStateLoaded;
}

extension OnFinanceExpenseItemEditState on FinanceExpenseItemEditState {
  FinanceExpenseItemEditStateLoaded get asLoaded =>
      this as FinanceExpenseItemEditStateLoaded;
}
