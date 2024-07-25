// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timecard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimecardImpl _$$TimecardImplFromJson(Map<String, dynamic> json) =>
    _$TimecardImpl(
      id: json['id'] as String? ?? '',
      employeeId: json['employeeId'] as String,
      employeeFirstName: json['employeeFirstName'] as String? ?? '',
      employeeLastName: json['employeeLastName'] as String? ?? '',
      start: DateTime.parse(json['start'] as String),
      startLatitude: (json['startLatitude'] as num?)?.toDouble(),
      startLongitude: (json['startLongitude'] as num?)?.toDouble(),
      startLocation: json['startLocation'] as String?,
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      endLatitude: (json['endLatitude'] as num?)?.toDouble(),
      endLongitude: (json['endLongitude'] as num?)?.toDouble(),
      endLocation: json['endLocation'] as String?,
      expenseId: json['expenseId'] as String? ?? '',
    );

Map<String, dynamic> _$$TimecardImplToJson(_$TimecardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'employeeFirstName': instance.employeeFirstName,
      'employeeLastName': instance.employeeLastName,
      'start': instance.start.toIso8601String(),
      'startLatitude': instance.startLatitude,
      'startLongitude': instance.startLongitude,
      'startLocation': instance.startLocation,
      'end': instance.end?.toIso8601String(),
      'endLatitude': instance.endLatitude,
      'endLongitude': instance.endLongitude,
      'endLocation': instance.endLocation,
      'expenseId': instance.expenseId,
    };
