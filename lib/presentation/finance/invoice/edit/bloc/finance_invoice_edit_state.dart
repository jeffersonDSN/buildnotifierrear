part of 'finance_invoice_edit_bloc.dart';

@freezed
class FinanceInvoiceEditState with _$FinanceInvoiceEditState {
  const factory FinanceInvoiceEditState.init() = FinanceInvoiceEditStateInit;

  const factory FinanceInvoiceEditState.loading({
    required CrudType crudType,
  }) = FinanceInvoiceEditStateLoading;

  const factory FinanceInvoiceEditState.loaded({
    required CrudType crudType,
    required Invoice invoice,
    required List<Client> clients,
  }) = FinanceInvoiceEditStateLoaded;
}

extension OnFinanceInvoiceEditState on FinanceInvoiceEditState {
  FinanceInvoiceEditStateLoaded get asLoaded =>
      this as FinanceInvoiceEditStateLoaded;
}
