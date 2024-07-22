import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

enum ExpenseStatusEnums {
  draft,
  pending,
  approved,
  partiallyPaid,
  paid,
  overdue,
  cancelled,
  refunded,
}

extension OnExpenseStatusEnums on ExpenseStatusEnums {
  String name(BuildContext context) {
    switch (this) {
      case ExpenseStatusEnums.draft:
        return context.tr.draft;
      case ExpenseStatusEnums.pending:
        return context.tr.pending;
      case ExpenseStatusEnums.approved:
        return context.tr.approved;
      case ExpenseStatusEnums.partiallyPaid:
        return context.tr.partiallyPaid;
      case ExpenseStatusEnums.paid:
        return context.tr.paid;
      case ExpenseStatusEnums.overdue:
        return context.tr.overdue;
      case ExpenseStatusEnums.cancelled:
        return context.tr.cancelled;
      case ExpenseStatusEnums.refunded:
        return context.tr.refunded;
      default:
        return context.tr.draft;
    }
  }

  Color get color {
    switch (this) {
      case ExpenseStatusEnums.draft:
        return AppColor.warning;
      case ExpenseStatusEnums.pending:
        return AppColor.orange;
      case ExpenseStatusEnums.approved:
        return AppColor.primaryColorSwatch;
      case ExpenseStatusEnums.partiallyPaid:
        return AppColor.green;
      case ExpenseStatusEnums.paid:
        return AppColor.success;
      case ExpenseStatusEnums.overdue:
        return AppColor.red;
      case ExpenseStatusEnums.cancelled:
        return AppColor.greyColorSwatch;
      case ExpenseStatusEnums.refunded:
        return AppColor.info;
      default:
        return AppColor.warning;
    }
  }
}
