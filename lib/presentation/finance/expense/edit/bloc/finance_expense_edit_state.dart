part of 'finance_expense_edit_bloc.dart';

@freezed
class FinanceExpenseEditState with _$FinanceExpenseEditState {
  const factory FinanceExpenseEditState.init() = FinanceExpenseEditStateInit;

  const factory FinanceExpenseEditState.loading({
    required CrudType crudType,
  }) = FinanceExpenseEditStateLoading;

  const factory FinanceExpenseEditState.loaded({
    required CrudType crudType,
    required Expense expense,
    required List<ExpenseCategory> categories,
    required List<PaymentCard> cards,
  }) = FinanceExpenseEditStateLoaded;
}

extension OnFinanceExpenseEditState on FinanceExpenseEditState {
  bool get isLoaded => this is FinanceExpenseEditStateLoaded;

  FinanceExpenseEditStateLoaded get asLoaded =>
      this as FinanceExpenseEditStateLoaded;
}
