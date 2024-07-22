import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:flutter/material.dart';

enum CardTypeEnums {
  debit,
  credit,
}

extension OnCardTypeEnums on CardTypeEnums {
  String name(BuildContext context) {
    switch (this) {
      case CardTypeEnums.debit:
        return context.tr.debitCard;
      case CardTypeEnums.credit:
        return context.tr.creditCard;
      default:
        return context.tr.cash;
    }
  }
}
