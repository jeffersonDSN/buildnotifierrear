part of 'finance_invoice_edit_add_item_bloc.dart';

@freezed
class FinanceInvoiceEditAddItemState with _$FinanceInvoiceEditAddItemState {
  const factory FinanceInvoiceEditAddItemState.init() =
      FinanceInvoiceEditAddItemStateInit;

  const factory FinanceInvoiceEditAddItemState.loading({
    required String cliendId,
    required String invoiceId,
    @Default([]) List<Project> projects,
    Project? selectedProject,
  }) = FinanceInvoiceEditAddItemStateLoading;

  const factory FinanceInvoiceEditAddItemState.loaded({
    required String cliendId,
    required String invoiceId,
    @Default([]) List<Project> projects,
    Project? selectedProject,
    @Default([]) List<Task> tasks,
    Task? selectedTask,
    @Default([]) List<Activity> activiteis,
    @Default([]) List<Activity> filteredActivities,
    @Default([]) List<InvoiceItem> invoiceItems,
  }) = FinanceInvoiceEditAddItemStateLoaded;
}

extension OnFinanceInvoiceEditAddItemState on FinanceInvoiceEditAddItemState {
  bool get isLoading => this is FinanceInvoiceEditAddItemStateLoading;
  bool get isLoaded => this is FinanceInvoiceEditAddItemStateLoaded;

  FinanceInvoiceEditAddItemStateLoading get asLoading =>
      this as FinanceInvoiceEditAddItemStateLoading;
  FinanceInvoiceEditAddItemStateLoaded get asLoaded =>
      this as FinanceInvoiceEditAddItemStateLoaded;
}
