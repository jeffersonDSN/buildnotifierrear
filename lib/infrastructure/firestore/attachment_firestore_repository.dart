import 'dart:typed_data';

import 'package:buildnotifierrear/domain/entities/enums/file_extension_enums.dart';
import 'package:buildnotifierrear/domain/entities/file_item/file_item.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_file_item_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AttachmentFirestoreRepository extends TenantFirestoreRepository
    implements AbsIAttachmentRepository {
  final Reference storage;

  AttachmentFirestoreRepository({
    required super.tenantId,
  })  : storage = FirebaseStorage.instance.ref('tenant/$tenantId/'),
        super(collectionName: 'fileItem');

  @override
  Future<List<FileItem>> getByFolder(String folderId) async {
    var querySnapshot = await collection
        .where('folderId', isEqualTo: folderId)
        .orderBy('fileExtension')
        .get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;
          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => FileItem.fromJson(e))
        .toList();
  }

  @override
  Future<Uint8List?> getFileData(String id) {
    return storage.child(id).getData(1024 * 1024);
  }

  @override
  Future<String> post(FileItem fileItem, Uint8List? data) async {
    var item = {
      'name': fileItem.name,
      'folderId': fileItem.folderId,
      'fileExtension': fileItem.fileExtension.id,
    };

    var doc = await collection.add(item);

    if (data != null) {
      await storage.child(doc.id).putData(data);
    }

    return doc.id;
  }

  @override
  Future<bool> changeFileName(String id, String name) async {
    var file = {
      'name': name,
    };

    await collection.doc(id).update(file);

    return true;
  }

  @override
  Future<bool> delete(FileItem fileItem) async {
    if (fileItem.fileExtension.isFolder) {
      var fileItems = await getByFolder(fileItem.id);
      for (var i = 0; i < fileItems.length; i++) {
        await delete(fileItems[i]);
      }
    } else {
      await storage.child(fileItem.id).delete();
    }

    await collection.doc(fileItem.id).delete();

    return true;
  }
}
