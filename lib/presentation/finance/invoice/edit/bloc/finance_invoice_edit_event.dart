part of 'finance_invoice_edit_bloc.dart';

@freezed
class FinanceInvoiceEditEvent with _$FinanceInvoiceEditEvent {
  const factory FinanceInvoiceEditEvent.load({
    required CrudType crudType,
  }) = FinanceInvoiceEditEventLoad;

  const factory FinanceInvoiceEditEvent.changeDate({
    required DateTime date,
  }) = FinanceInvoiceEditEventChangeDate;

  const factory FinanceInvoiceEditEvent.changeClient({
    required String clientId,
  }) = FinanceInvoiceEditEventChangeClient;

  const factory FinanceInvoiceEditEvent.addItems({
    required List<InvoiceItem> items,
  }) = FinanceInvoiceEditEventAddItems;

  const factory FinanceInvoiceEditEvent.changeCustomerMessage({
    required String message,
  }) = FinanceInvoiceEditEventChangeCustomerMessage;

  const factory FinanceInvoiceEditEvent.save({
    required VoidCallback callback,
  }) = FinanceInvoiceEditEventSave;
}
