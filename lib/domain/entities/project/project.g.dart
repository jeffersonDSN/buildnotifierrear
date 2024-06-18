// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      clientId: json['clientId'] as String? ?? '',
      clientFirstname: json['clientFirstname'] as String? ?? '',
      clientLastname: json['clientLastname'] as String? ?? '',
      zipCode: json['zipCode'] as String? ?? '',
      state: json['state'] as String? ?? '',
      city: json['city'] as String? ?? '',
      address: json['address'] as String? ?? '',
      address2: json['address2'] as String? ?? '',
      latitude: (json['latitude'] as num?)?.toInt(),
      longitude: (json['longitude'] as num?)?.toInt(),
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'clientId': instance.clientId,
      'clientFirstname': instance.clientFirstname,
      'clientLastname': instance.clientLastname,
      'zipCode': instance.zipCode,
      'state': instance.state,
      'city': instance.city,
      'address': instance.address,
      'address2': instance.address2,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'tasks': instance.tasks,
    };
