import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:json_annotation/json_annotation.dart';

class InvoiceStatusConverter implements JsonConverter<InvoiceStatusEnums, int> {
  const InvoiceStatusConverter();

  @override
  InvoiceStatusEnums fromJson(int value) {
    switch (value) {
      case 0:
        return InvoiceStatusEnums.draft;
      case 1:
        return InvoiceStatusEnums.sent;
      case 2:
        return InvoiceStatusEnums.partiallyPaid;
      case 3:
        return InvoiceStatusEnums.paid;
      case 4:
        return InvoiceStatusEnums.overdue;
      case 5:
        return InvoiceStatusEnums.cancelled;
      case 6:
        return InvoiceStatusEnums.refunded;
      case 7:
        return InvoiceStatusEnums.failed;
      default:
        return InvoiceStatusEnums.draft;
    }
  }

  @override
  int toJson(InvoiceStatusEnums value) {
    switch (value) {
      case InvoiceStatusEnums.draft:
        return 0;
      case InvoiceStatusEnums.sent:
        return 1;
      case InvoiceStatusEnums.partiallyPaid:
        return 2;
      case InvoiceStatusEnums.paid:
        return 3;
      case InvoiceStatusEnums.overdue:
        return 4;
      case InvoiceStatusEnums.cancelled:
        return 5;
      case InvoiceStatusEnums.refunded:
        return 6;
      case InvoiceStatusEnums.failed:
        return 7;
      default:
        return 0;
    }
  }
}
