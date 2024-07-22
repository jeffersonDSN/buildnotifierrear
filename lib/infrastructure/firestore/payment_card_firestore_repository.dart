import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/card/payment_card.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class PaymentCardFirestoreRepository extends TenantFirestoreRepository
    implements AbsICRUDRepository<PaymentCard> {
  PaymentCardFirestoreRepository({required super.tenantId})
      : super(collectionName: 'paymentCards');

  @override
  Future<List<PaymentCard>> getAll() async {
    var querySnapshot = await collection.get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;
          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => PaymentCard.fromJson(e))
        .toList();
  }

  @override
  Future<PaymentCard> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    return PaymentCard.fromJson({...doc, 'id': snapshot.id});
  }

  @override
  Future<Either<ErrorFields, String>> post(PaymentCard value) async {
    var paymentCard = {
      'number': value.number,
      'dueDay': value.dueDay,
      'bankName': value.bankName,
      'name': value.name,
      'cardType': value.cardType.index,
    };

    var doc = await collection.add(paymentCard);
    return right(doc.id);
  }

  @override
  Future<Either<ErrorFields, bool>> put(PaymentCard value) async {
    var paymentCard = {
      'number': value.number,
      'dueDay': value.dueDay,
      'bankName': value.bankName,
      'name': value.name,
      'cardType': value.cardType.index,
    };

    await collection.doc(value.id).update(paymentCard);
    return right(true);
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id).delete();
    return true;
  }
}
