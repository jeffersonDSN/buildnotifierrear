part of 'finance_expense_category_overview_bloc.dart';

@freezed
class FinanceExpenseCategoryOverviewState
    with _$FinanceExpenseCategoryOverviewState {
  const factory FinanceExpenseCategoryOverviewState.init() =
      FinanceExpenseCategoryOverviewStateInit;

  const factory FinanceExpenseCategoryOverviewState.loading() =
      FinanceExpenseCategoryOverviewStateLoading;

  const factory FinanceExpenseCategoryOverviewState.loaded({
    required List<ExpenseCategory> categories,
  }) = FinanceExpenseCategoryOverviewStateLoaded;
}

extension OnFinanceExpenseCategoryOverviewState
    on FinanceExpenseCategoryOverviewState {
  bool get isLoaded => this is FinanceExpenseCategoryOverviewStateLoaded;

  FinanceExpenseCategoryOverviewStateLoaded get asLoaded =>
      this as FinanceExpenseCategoryOverviewStateLoaded;
}
