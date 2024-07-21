import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_invoices_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/counters_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class InvoicesFireStoreRepository extends TenantFirestoreRepository
    implements AbsIInvoicesRepository {
  late CountersFireStoreRepository countersRepository;

  InvoicesFireStoreRepository({required String tenantId})
      : super(collectionName: 'invoices', tenantId: tenantId) {
    countersRepository = CountersFireStoreRepository(tenantId: tenantId);
  }

  @override
  Future<String> generateInvoiceNumber() async {
    return countersRepository.generateInvoiceNumber();
  }

  @override
  Future<List<Invoice>> getAll() async {
    var querySnapshot = await collection.get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          var result = doc.map((key, value) {
            if (value is Timestamp) {
              return MapEntry(key, value.toDate().toString());
            } else {
              return MapEntry(key, value);
            }
          });

          return {...result, 'id': document.id};
        })
        .toList()
        .map((e) => Invoice.fromJson(e))
        .toList();
  }

  @override
  Future<Invoice> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    var result = doc.map((key, value) {
      if (value is Timestamp) {
        return MapEntry(key, value.toDate().toString());
      } else {
        return MapEntry(key, value);
      }
    });

    return Invoice.fromJson({...result, 'id': snapshot.id});
  }

  @override
  Future<Either<ErrorFields, bool>> post(Invoice value) async {
    var invoice = {
      'issueDate': value.issueDate,
      'dueDate': value.dueDate,
      'clientId': value.clientId,
      'clientFirstName': value.clientFirstName,
      'clientlastName': value.clientlastName,
      'clientAddress': value.clientAddress,
      'clientAddress2': value.clientAddress2,
      'clientCity': value.clientCity,
      'clientState': value.clientState,
      'clientZipCode': value.clientZipCode,
      'customerMessage': value.customerMessage,
      'status': value.status.index,
      'items': value.items.toJson(),
    };

    await collection.doc(value.id).set(invoice);
    return right(true);
  }

  @override
  Future<Either<ErrorFields, bool>> put(Invoice value) async {
    var invoice = {
      'issueDate': value.issueDate,
      'dueDate': value.dueDate,
      'clientId': value.clientId,
      'clientFirstName': value.clientFirstName,
      'clientlastName': value.clientlastName,
      'clientAddress': value.clientAddress,
      'clientAddress2': value.clientAddress2,
      'clientCity': value.clientCity,
      'clientState': value.clientState,
      'clientZipCode': value.clientZipCode,
      'customerMessage': value.customerMessage,
      'status': value.status.index,
      'items': value.items.toJson(),
    };

    await collection.doc(value.id).update(invoice);
    return right(true);
  }

  @override
  Future<bool> changeStatus(String invoiceId, InvoiceStatusEnums status) async {
    var invoice = {
      'status': status.index,
    };

    await collection.doc(invoiceId).update(invoice);
    return true;
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id).delete();
    return true;
  }
}
