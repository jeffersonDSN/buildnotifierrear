// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      expectedCompletionDate: json['expectedCompletionDate'] == null
          ? null
          : DateTime.parse(json['expectedCompletionDate'] as String),
      estimatedEffort: json['estimatedEffort'] as String? ?? '',
      budget: (json['budget'] as num?)?.toDouble() ?? 0,
      status: json['status'] == null
          ? ProjectStatus.planning
          : const ProjectTypeConverter()
              .fromJson((json['status'] as num).toInt()),
      clientId: json['clientId'] as String? ?? '',
      clientFirstname: json['clientFirstname'] as String? ?? '',
      clientLastname: json['clientLastname'] as String? ?? '',
      zipCode: json['zipCode'] as String? ?? '',
      state: json['state'] as String? ?? '',
      city: json['city'] as String? ?? '',
      address: json['address'] as String? ?? '',
      address2: json['address2'] as String? ?? '',
      description: json['description'] as String? ?? '',
      progress: (json['progress'] as num?)?.toInt() ?? 0,
      descriptionList: (json['descriptionList'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      latitude: (json['latitude'] as num?)?.toInt(),
      longitude: (json['longitude'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': instance.startDate?.toIso8601String(),
      'expectedCompletionDate':
          instance.expectedCompletionDate?.toIso8601String(),
      'estimatedEffort': instance.estimatedEffort,
      'budget': instance.budget,
      'status': const ProjectTypeConverter().toJson(instance.status),
      'clientId': instance.clientId,
      'clientFirstname': instance.clientFirstname,
      'clientLastname': instance.clientLastname,
      'zipCode': instance.zipCode,
      'state': instance.state,
      'city': instance.city,
      'address': instance.address,
      'address2': instance.address2,
      'description': instance.description,
      'progress': instance.progress,
      'descriptionList': instance.descriptionList,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
