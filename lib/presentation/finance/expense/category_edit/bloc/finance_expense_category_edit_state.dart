part of 'finance_expense_category_edit_bloc.dart';

@freezed
class FinanceExpenseCategoryEditState with _$FinanceExpenseCategoryEditState {
  const factory FinanceExpenseCategoryEditState.init() =
      FinanceExpenseCategoryEditStateInit;

  const factory FinanceExpenseCategoryEditState.loading({
    required CrudType crudType,
  }) = FinanceExpenseCategoryEditStateLoading;

  const factory FinanceExpenseCategoryEditState.loaded({
    required CrudType crudType,
    required ExpenseCategory category,
  }) = FinanceExpenseCategoryEditStateLoaded;
}

extension OnFinanceExpenseCategoryEditState on FinanceExpenseCategoryEditState {
  bool get isLoaded => this is FinanceExpenseCategoryEditStateLoaded;

  FinanceExpenseCategoryEditStateLoaded get asLoaded =>
      this as FinanceExpenseCategoryEditStateLoaded;
}
