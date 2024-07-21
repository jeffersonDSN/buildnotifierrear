import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
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

  Color get color {
    switch (this) {
      case InvoiceStatusEnums.draft:
        return AppColor.warning;
      case InvoiceStatusEnums.sent:
        return AppColor.primaryColorSwatch;
      case InvoiceStatusEnums.partiallyPaid:
        return AppColor.green;
      case InvoiceStatusEnums.paid:
        return AppColor.success;
      case InvoiceStatusEnums.overdue:
        return AppColor.red;
      case InvoiceStatusEnums.cancelled:
        return AppColor.greyColorSwatch;
      case InvoiceStatusEnums.refunded:
        return AppColor.info;
      case InvoiceStatusEnums.failed:
        return AppColor.error;
      default:
        return AppColor.warning;
    }
  }
}
