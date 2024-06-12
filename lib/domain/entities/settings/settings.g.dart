// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      payPeriod: (json['payPeriod'] as num?)?.toInt() ?? 0,
      periodStart: DateTime.parse(json['periodStart'] as String),
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'payPeriod': instance.payPeriod,
      'periodStart': instance.periodStart.toIso8601String(),
    };
