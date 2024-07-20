import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CountersFireStoreRepository extends TenantFirestoreRepository {
  CountersFireStoreRepository({required super.tenantId})
      : super(collectionName: 'counters');

  Future<String> generateInvoiceNumber() async {
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    final DocumentReference counterRef = collection.doc('invoiceCounter');

    return firestore.runTransaction((transaction) async {
      DocumentSnapshot snapshot = await transaction.get(counterRef);

      if (!snapshot.exists) {
        transaction.set(counterRef, {'lastInvoiceNumber': 1});
        return 'INV-0001';
      }

      int lastInvoiceNumber = snapshot['lastInvoiceNumber'];
      int newInvoiceNumber = lastInvoiceNumber + 1;

      transaction.update(counterRef, {'lastInvoiceNumber': newInvoiceNumber});

      return 'INV-${newInvoiceNumber.toString().padLeft(4, '0')}';
    });
  }
}
