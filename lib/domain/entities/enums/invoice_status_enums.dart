import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:flutter/material.dart';

enum InvoiceStatusEnums {
  draft,
  sent,
  partiallyPaid,
  paid,
  overdue,
  cancelled,
  refunded,
  failed,
}

extension OnInvoiceStatusEnums on InvoiceStatusEnums {
  String name(BuildContext context) {
    switch (this) {
      case InvoiceStatusEnums.draft:
        return context.tr.draft;
      case InvoiceStatusEnums.sent:
        return context.tr.sent;
      case InvoiceStatusEnums.partiallyPaid:
        return context.tr.partiallyPaid;
      case InvoiceStatusEnums.paid:
        return context.tr.paid;
      case InvoiceStatusEnums.overdue:
        return context.tr.overdue;
      case InvoiceStatusEnums.cancelled:
        return context.tr.cancelled;
      case InvoiceStatusEnums.refunded:
        return context.tr.refunded;
      case InvoiceStatusEnums.failed:
        return context.tr.failed;
      default:
        return context.tr.draft;
    }
  }
}
