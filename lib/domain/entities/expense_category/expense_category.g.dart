// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseCategoryImpl _$$ExpenseCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseCategoryImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      system: json['system'] ?? false,
    );

Map<String, dynamic> _$$ExpenseCategoryImplToJson(
        _$ExpenseCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'system': instance.system,
    };
