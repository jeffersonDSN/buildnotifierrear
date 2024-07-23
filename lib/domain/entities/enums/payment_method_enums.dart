import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

enum PaymentMethodEnums {
  cash,
  creditCard,
  debitCard,
  bankAccount,
  check,
}

extension OnPaymentMethodEnums on PaymentMethodEnums {
  String name(BuildContext context) {
    switch (this) {
      case PaymentMethodEnums.cash:
        return context.tr.cash;
      case PaymentMethodEnums.creditCard:
        return context.tr.creditCard;
      case PaymentMethodEnums.debitCard:
        return context.tr.debitCard;
      case PaymentMethodEnums.bankAccount:
        return context.tr.bankAccount;
      case PaymentMethodEnums.check:
        return context.tr.check;
      default:
        return context.tr.cash;
    }
  }

  Color get color {
    switch (this) {
      case PaymentMethodEnums.cash:
        return AppColor.success;
      case PaymentMethodEnums.creditCard:
        return AppColor.primaryColorSwatch;
      case PaymentMethodEnums.debitCard:
        return AppColor.info;
      case PaymentMethodEnums.bankAccount:
        return AppColor.greyColorSwatch;
      case PaymentMethodEnums.check:
        return AppColor.warning;
      default:
        return AppColor.success;
    }
  }

  bool get isCreditCard => this == PaymentMethodEnums.creditCard;
}
