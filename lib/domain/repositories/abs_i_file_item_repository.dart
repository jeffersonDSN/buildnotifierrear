import 'dart:typed_data';

import 'package:buildnotifierrear/domain/entities/file_item/file_item.dart';

abstract interface class AbsIAttachmentRepository {
  Future<List<FileItem>> getByFolder(String folderId);
  Future<Uint8List?> getFileData(String id);
  Future<String> post(FileItem fileItem, Uint8List? data);
  Future<bool> changeFileName(String id, String name);
  Future<bool> delete(FileItem fileItem);
}
