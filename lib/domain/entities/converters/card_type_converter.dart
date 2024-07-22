import 'package:buildnotifierrear/domain/entities/enums/card_type_enums.dart';
import 'package:json_annotation/json_annotation.dart';

class CardTypeConverter implements JsonConverter<CardTypeEnums, int> {
  const CardTypeConverter();

  @override
  CardTypeEnums fromJson(int value) {
    switch (value) {
      case 0:
        return CardTypeEnums.debit;
      case 1:
        return CardTypeEnums.credit;
      default:
        return CardTypeEnums.debit;
    }
  }

  @override
  int toJson(CardTypeEnums value) {
    switch (value) {
      case CardTypeEnums.debit:
        return 0;
      case CardTypeEnums.credit:
        return 1;
      default:
        return 0;
    }
  }
}
