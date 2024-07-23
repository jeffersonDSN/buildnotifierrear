part of 'finance_expense_card_overview_bloc.dart';

@freezed
class FinanceExpenseCardOverviewState with _$FinanceExpenseCardOverviewState {
  const factory FinanceExpenseCardOverviewState.init() =
      FinanceExpenseCardOverviewStateInit;

  const factory FinanceExpenseCardOverviewState.loading() =
      FinanceExpenseCardOverviewStateLoading;

  const factory FinanceExpenseCardOverviewState.loaded({
    required List<PaymentCard> cards,
  }) = FinanceExpenseCardOverviewStateLoaded;
}

extension OnFinanceExpenseCardOverviewState on FinanceExpenseCardOverviewState {
  bool get isLoaded => this is FinanceExpenseCardOverviewStateLoaded;

  FinanceExpenseCardOverviewStateLoaded get asLoaded =>
      this as FinanceExpenseCardOverviewStateLoaded;
}
