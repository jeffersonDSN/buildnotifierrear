import 'package:cloud_firestore/cloud_firestore.dart';

class TenantFireStoreRepository {
  final CollectionReference collection;

  TenantFireStoreRepository({
    required String collectionName,
    required String tenantId,
  }) : collection = FirebaseFirestore.instance
            .collection('tenant')
            .doc(tenantId)
            .collection(collectionName);
}
