part of 'finance_expense_card_edit_bloc.dart';

@freezed
class FinanceExpenseCardEditState with _$FinanceExpenseCardEditState {
  const factory FinanceExpenseCardEditState.init() =
      FinanceExpenseCardEditStateInit;

  const factory FinanceExpenseCardEditState.loading({
    required CrudType crudType,
  }) = FinanceExpenseCardEditStateLoading;

  const factory FinanceExpenseCardEditState.loaded({
    required CrudType crudType,
    required PaymentCard card,
  }) = FinanceExpenseCardEditStateLoaded;
}

extension OnFinanceExpenseCardEditState on FinanceExpenseCardEditState {
  bool get isLoaded => this is FinanceExpenseCardEditStateLoaded;

  FinanceExpenseCardEditStateLoaded get asLoaded =>
      this as FinanceExpenseCardEditStateLoaded;
}
