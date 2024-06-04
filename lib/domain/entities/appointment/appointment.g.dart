// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentUserImpl _$$AppointmentUserImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentUserImpl(
      id: json['userID'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$$AppointmentUserImplToJson(
        _$AppointmentUserImpl instance) =>
    <String, dynamic>{
      'userID': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    _$AppointmentImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      location: json['location'] as String? ?? '',
      startDateTime: DateTime.parse(json['startDateTime'] as String),
      endDateTime: DateTime.parse(json['endDateTime'] as String),
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: json['longitude'] ?? 0,
      assignTo: (json['assignTo'] as List<dynamic>?)
              ?.map((e) => AppointmentUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'startDateTime': instance.startDateTime.toIso8601String(),
      'endDateTime': instance.endDateTime.toIso8601String(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'assignTo': instance.assignTo,
    };
