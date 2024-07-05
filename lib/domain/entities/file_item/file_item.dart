import 'package:buildnotifierrear/domain/entities/converters/file_extension_converter.dart';
import 'package:buildnotifierrear/domain/entities/enums/file_extension_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_item.freezed.dart';
part 'file_item.g.dart';

@freezed
class FileItem with _$FileItem {
  const factory FileItem({
    @Default('') String id,
    required String name,
    @FileExtensionConverter()
    @Default(FileExtensionEnums.folder)
    FileExtensionEnums fileExtension,
    @Default('') folderId,
  }) = _FileItem;

  factory FileItem.fromJson(Map<String, Object?> json) =>
      _$FileItemFromJson(json);
}
