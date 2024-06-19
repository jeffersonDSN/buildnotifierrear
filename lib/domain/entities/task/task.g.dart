// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String? ?? '',
      productId: json['productId'] as String? ?? '',
      title: json['title'] as String? ?? '',
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      expectedEndDate: json['expectedEndDate'] == null
          ? null
          : DateTime.parse(json['expectedEndDate'] as String),
      estimatedEffort: json['estimatedEffort'] as String? ?? '',
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
      notes: json['notes'] as String? ?? '',
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'title': instance.title,
      'startDate': instance.startDate?.toIso8601String(),
      'expectedEndDate': instance.expectedEndDate?.toIso8601String(),
      'estimatedEffort': instance.estimatedEffort,
      'priority': instance.priority,
      'status': instance.status,
      'notes': instance.notes,
    };
