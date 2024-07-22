import 'package:buildnotifierrear/domain/entities/converters/card_type_converter.dart';
import 'package:buildnotifierrear/domain/entities/enums/card_type_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_card.freezed.dart';
part 'payment_card.g.dart';

@freezed
class PaymentCard with _$PaymentCard {
  factory PaymentCard({
    @Default('') String id,
    @Default('') String bankName,
    @Default('') String name,
    @Default('') String number,
    @CardTypeConverter() @Default(CardTypeEnums.debit) CardTypeEnums cardType,
    int? dueDay,
  }) = _PaymentCard;

  factory PaymentCard.fromJson(Map<String, Object?> json) =>
      _$PaymentCardFromJson(json);
}
