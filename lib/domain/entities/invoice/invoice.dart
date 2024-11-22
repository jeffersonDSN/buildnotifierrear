import 'package:buildnotifierrear/domain/entities/converters/invoice_status_converter.dart';
import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class InvoiceItem with _$InvoiceItem {
  factory InvoiceItem({
    @Default('') String projectId,
    @Default('') String taskId,
    @Default('') String activityId,
    @Default('') String productService,
    @Default('') String description,
    @Default(0) double qtyHrs,
    @Default(0) double rate,
    @Default(0) double amount,
  }) = _InvoiceItem;

  factory InvoiceItem.fromJson(Map<String, Object?> json) =>
      _$InvoiceItemFromJson(json);
}

extension OnInvoiceItemList on List<InvoiceItem> {
  List<Map<String, dynamic>> toJson() {
    return map((item) => item.toJson()).toList();
  }
}

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    @Default('') String id,
    DateTime? issueDate,
    DateTime? dueDate,
    DateTime? paymentDate,
    @Default('') String clientId,
    @Default('') String clientFirstName,
    @Default('') String clientlastName,
    @Default('') String clientAddress,
    @Default('') String clientAddress2,
    @Default('') String clientCity,
    @Default('') String clientState,
    @Default('') String clientZipCode,
    @Default('') String customerMessage,
    @InvoiceStatusConverter()
    @Default(InvoiceStatusEnums.draft)
    InvoiceStatusEnums status,
    @Default([]) List<InvoiceItem> items,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, Object?> json) =>
      _$InvoiceFromJson(json);
}

extension OnInvoice on Invoice {
  double get total {
    return items.isNotEmpty
        ? items.map((item) => item.amount).reduce((a, b) => a + b)
        : 0;
  }

  double get totalByProjects {
    return items.isNotEmpty
        ? items.map((item) {
            return item.projectId.isNotEmpty ? item.amount : 0.0;
          }).reduce((a, b) => a + b)
        : 0;
  }

  List<InvoiceItem> get groupItemsByTask {
    if (items.isEmpty) {
      return [];
    }

    var groupedByTask = groupBy(items, (InvoiceItem item) => item.taskId);

    List<InvoiceItem> result = [];
    groupedByTask.forEach((taskId, taskItems) {
      var totalQtyHrs = taskItems.map((e) => e.qtyHrs).reduce((a, b) => a + b);
      var totalAmount = taskItems.map((e) => e.amount).reduce((a, b) => a + b);
      //var description = taskItems.map((e) => e.description).join(', ');
      var description = taskItems.first.description;

      result.add(InvoiceItem(
        projectId: taskItems.first.projectId,
        taskId: taskId,
        activityId: '', // Unificado, sem atividade específica
        productService: taskItems.first.productService,
        description: description,
        qtyHrs: totalQtyHrs,
        rate: taskItems
            .first.rate, // Assume que todas as atividades têm a mesma taxa
        amount: totalAmount,
      ));
    });

    return result;
  }
}

extension OnInvoiceList on List<Invoice> {
  double totalOf(List<InvoiceStatusEnums> status) {
    var invoices = where((invoice) => status.contains(invoice.status)).toList();

    if (invoices.isEmpty) {
      return 0;
    }

    return invoices.map((e) => e.total).reduce((a, b) => a + b);
  }

  double totalByProjects() {
    return map((invoice) => invoice.totalByProjects).reduce((a, b) => a + b);
  }
}
