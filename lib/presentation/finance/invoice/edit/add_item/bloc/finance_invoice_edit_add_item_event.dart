part of 'finance_invoice_edit_add_item_bloc.dart';

@freezed
class FinanceInvoiceEditAddItemEvent with _$FinanceInvoiceEditAddItemEvent {
  const factory FinanceInvoiceEditAddItemEvent.loadProjects({
    required String clientId,
    required String invoiceId,
  }) = FinanceInvoiceEditAddItemEventLoadProjects;

  const factory FinanceInvoiceEditAddItemEvent.changeSelectedProject({
    required String projectId,
  }) = FinanceInvoiceEditAddItemEventChangeSelectedProject;

  const factory FinanceInvoiceEditAddItemEvent.changeSelectedTask({
    required String taskId,
  }) = FinanceInvoiceEditAddItemEventChangeSelectedTask;

  const factory FinanceInvoiceEditAddItemEvent.checkActivity({
    required Activity activity,
  }) = FinanceInvoiceEditAddItemEventCheckActivity;
}
