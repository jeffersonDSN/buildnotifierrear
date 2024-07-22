import 'package:buildnotifierrear/domain/entities/enums/payment_method_enums.dart';
import 'package:json_annotation/json_annotation.dart';

class PaymentMethodConverter implements JsonConverter<PaymentMethodEnums, int> {
  const PaymentMethodConverter();

  @override
  PaymentMethodEnums fromJson(int value) {
    switch (value) {
      case 0:
        return PaymentMethodEnums.cash;
      case 1:
        return PaymentMethodEnums.creditCard;
      case 2:
        return PaymentMethodEnums.debitCard;
      case 3:
        return PaymentMethodEnums.bankAccount;
      case 4:
        return PaymentMethodEnums.check;
      default:
        return PaymentMethodEnums.cash;
    }
  }

  @override
  int toJson(PaymentMethodEnums value) {
    switch (value) {
      case PaymentMethodEnums.cash:
        return 0;
      case PaymentMethodEnums.creditCard:
        return 1;
      case PaymentMethodEnums.debitCard:
        return 2;
      case PaymentMethodEnums.bankAccount:
        return 3;
      case PaymentMethodEnums.check:
        return 4;
      default:
        return 0;
    }
  }
}
