// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      middleName: json['middleName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      address: json['address'] as String? ?? '',
      address2: json['address2'] as String? ?? '',
      city: json['city'] as String? ?? '',
      state: json['state'] as String? ?? '',
      zipCode: json['zipCode'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      department: json['department'] as String? ?? '',
      position: json['position'] as String? ?? '',
      hourlyRate: (json['hourlyRate'] as num?)?.toDouble() ?? 0,
      tenant: json['tenant'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      password: json['password'] as String? ?? '',
      userType: (json['userType'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'address': instance.address,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'department': instance.department,
      'position': instance.position,
      'hourlyRate': instance.hourlyRate,
      'tenant': instance.tenant,
      'userName': instance.userName,
      'password': instance.password,
      'userType': instance.userType,
    };
