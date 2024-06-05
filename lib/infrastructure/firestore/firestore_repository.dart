import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreRepository {
  final CollectionReference collection;

  FireStoreRepository({
    required String collectionName,
    required String tenantId,
  }) : collection = FirebaseFirestore.instance
            .collection('tenant')
            .doc(tenantId)
            .collection(collectionName);
}
