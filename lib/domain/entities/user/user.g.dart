// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      department: json['department'] as String? ?? '',
      tenant: json['tenant'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      password: json['password'] as String? ?? '',
      userType: (json['userType'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'department': instance.department,
      'tenant': instance.tenant,
      'userName': instance.userName,
      'password': instance.password,
      'userType': instance.userType,
    };
