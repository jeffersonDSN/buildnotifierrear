import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreRepository {
  final CollectionReference collection;

  FireStoreRepository({
    required String collectionName,
  }) : collection = FirebaseFirestore.instance.collection(collectionName);
}
