import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class InvoicesFireStoreRepository extends TenantFirestoreRepository
    implements AbsICRUDRepository<Invoice> {
  InvoicesFireStoreRepository({required super.tenantId})
      : super(collectionName: 'invoices');

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

    await collection.add(invoice);
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

    await collection.doc(value.id.toString()).update(invoice);
    return right(true);
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id.toString()).delete();
    return true;
  }
}
