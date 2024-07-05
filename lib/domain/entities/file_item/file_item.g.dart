// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileItemImpl _$$FileItemImplFromJson(Map<String, dynamic> json) =>
    _$FileItemImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String,
      fileExtension: json['fileExtension'] == null
          ? FileExtensionEnums.folder
          : const FileExtensionConverter()
              .fromJson((json['fileExtension'] as num).toInt()),
      folderId: json['folderId'] ?? '',
    );

Map<String, dynamic> _$$FileItemImplToJson(_$FileItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fileExtension':
          const FileExtensionConverter().toJson(instance.fileExtension),
      'folderId': instance.folderId,
    };
