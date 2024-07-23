part of 'finance_expense_card_overview_bloc.dart';

@freezed
class FinanceExpenseCardOverviewEvent with _$FinanceExpenseCardOverviewEvent {
  const factory FinanceExpenseCardOverviewEvent.load() =
      FinanceExpenseCardOverviewEventLoad;

  const factory FinanceExpenseCardOverviewEvent.addCard({
    required PaymentCard paymentCard,
  }) = FinanceExpenseCardOverviewEventAddCard;

  const factory FinanceExpenseCardOverviewEvent.editCard({
    required PaymentCard paymentCard,
  }) = FinanceExpenseCardOverviewEventEditCard;
}
