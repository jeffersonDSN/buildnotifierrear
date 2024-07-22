// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentCardImpl _$$PaymentCardImplFromJson(Map<String, dynamic> json) =>
    _$PaymentCardImpl(
      id: json['id'] as String? ?? '',
      bankName: json['bankName'] as String? ?? '',
      name: json['name'] as String? ?? '',
      number: json['number'] as String? ?? '',
      cardType: json['cardType'] == null
          ? CardTypeEnums.debit
          : const CardTypeConverter()
              .fromJson((json['cardType'] as num).toInt()),
      dueDay: (json['dueDay'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaymentCardImplToJson(_$PaymentCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bankName': instance.bankName,
      'name': instance.name,
      'number': instance.number,
      'cardType': const CardTypeConverter().toJson(instance.cardType),
      'dueDay': instance.dueDay,
    };
