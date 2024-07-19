import 'package:buildnotifierrear/domain/entities/converters/invoice_status_converter.dart';
import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
}
