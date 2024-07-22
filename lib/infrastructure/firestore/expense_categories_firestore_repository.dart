import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/expense_category/expense_category.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class ExpenseCategoriesFirestoreRepository extends TenantFirestoreRepository
    implements AbsICRUDRepository<ExpenseCategory> {
  ExpenseCategoriesFirestoreRepository({required super.tenantId})
      : super(collectionName: 'expenseCategory');

  @override
  Future<List<ExpenseCategory>> getAll() async {
    var querySnapshot = await collection.get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;
          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => ExpenseCategory.fromJson(e))
        .toList();
  }

  @override
  Future<ExpenseCategory> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    return ExpenseCategory.fromJson({...doc, 'id': snapshot.id});
  }

  @override
  Future<Either<ErrorFields, String>> post(ExpenseCategory value) async {
    var result = value.toJson();
    result.remove('id');

    var doc = await collection.add(result);
    return right(doc.id);
  }

  @override
  Future<Either<ErrorFields, bool>> put(ExpenseCategory value) async {
    var expenseCategory = {
      'title': value.title,
    };

    await collection.doc(value.id).update(expenseCategory);
    return right(true);
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id).delete();
    return true;
  }
}
