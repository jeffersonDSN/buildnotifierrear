import 'package:cloud_firestore/cloud_firestore.dart';

class TenantFirestoreRepository {
  final CollectionReference<Map<String, dynamic>> collection;

  TenantFirestoreRepository({
    required String collectionName,
    required String tenantId,
  }) : collection = FirebaseFirestore.instance
            .collection('tenant')
            .doc(tenantId)
            .collection(collectionName);
}
