part of 'finance_overview_bloc.dart';

@freezed
class FinanceOverviewEvent with _$FinanceOverviewEvent {
  const factory FinanceOverviewEvent.load() = FinanceOverviewEventLoad;

  const factory FinanceOverviewEvent.changeInvoiceStatus({
    required String invoiceId,
    required InvoiceStatusEnums status,
  }) = FinanceOverviewEventChangeInvoiceStatus;

  const factory FinanceOverviewEvent.changeExpenseStatus({
    required String expenseId,
    required ExpenseStatusEnums status,
  }) = FinanceOverviewEventChangeExpenseStatus;
}
