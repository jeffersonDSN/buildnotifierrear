import 'dart:typed_data';

import 'package:buildnotifierrear/domain/entities/file_item/file_item.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_file_item_repository.dart';

class AttachmentController {
  final AbsIAttachmentRepository repository;

  AttachmentController({required this.repository});

  Future<List<FileItem>> getByFolder(String folderId) {
    return repository.getByFolder(folderId);
  }

  Future<Uint8List?> getFileData(String id) {
    return repository.getFileData(id);
  }

  Future<String> post(FileItem fileItem, Uint8List? data) {
    return repository.post(fileItem, data);
  }

  Future<bool> changeFileName(String id, String name) {
    return repository.changeFileName(id, name);
  }

  Future<bool> delete(FileItem fileItem) {
    return repository.delete(fileItem);
  }
}
