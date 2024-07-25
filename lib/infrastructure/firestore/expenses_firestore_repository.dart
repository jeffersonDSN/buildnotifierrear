import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/enums/expense_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/payment_method_enums.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_expenses_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/payment_card_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ExpensesFirestoreRepository extends TenantFirestoreRepository
    implements AbsIExpensesRepository {
  late PaymentCardFirestoreRepository paymentCardRepository;
  final Reference storage;

  ExpensesFirestoreRepository({required String tenantId})
      : storage = FirebaseStorage.instance.ref('tenant/$tenantId/expenses'),
        super(collectionName: 'expenses', tenantId: tenantId) {
    paymentCardRepository = PaymentCardFirestoreRepository(tenantId: tenantId);
  }

  @override
  Future<List<Expense>> getAll() async {
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
        .map((e) => Expense.fromJson(e))
        .toList();
  }

  @override
  Future<Expense> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    var result = doc.map((key, value) {
      if (value is Timestamp) {
        return MapEntry(key, value.toDate().toString());
      } else {
        return MapEntry(key, value);
      }
    });

    return Expense.fromJson({...result, 'id': snapshot.id});
  }

  @override
  Future<Either<ErrorFields, String>> post(Expense value) async {
    var expense = {
      'description': value.description,
      'issueDate': value.issueDate,
      'dueDate': value.dueDate,
      'paymentDate': value.paymentDate,
      'categoryId': value.categoryId,
      'categoryTitle': value.categoryTitle,
      'projectId': value.projectId,
      'projectName': value.projectName,
      'taskId': value.taskId,
      'taskTitle': value.taskTitle,
      'employeeId': value.employeeId,
      'creditCardId': value.creditCardId,
      'creditCardNumber': value.creditCardNumber,
      'paymentMethod': value.paymentMethod.index,
      'paymentMethodCardId': value.paymentMethodCardId,
      'paymentMethodCardNumber': value.paymentMethodCardNumber,
      'status': value.status.index,
      'items': value.items.toJson(),
      'attachments': value.attachments.toJson(),
    };

    var doc = await collection.add(expense);

    if (value.attachments.isNotEmpty) {
      for (var attachment in value.attachments) {
        if (attachment.data != null) {
          await storage
              .child(doc.id)
              .child(attachment.name)
              .putData(attachment.data!);
        }
      }
    }

    if (value.paymentMethod == PaymentMethodEnums.creditCard) {
      var card = await paymentCardRepository.getById(value.paymentMethodCardId);

      var dueDate = DateTime.now().copyWith(
        day: card.dueDay,
        hour: 0,
        minute: 0,
        second: 0,
        microsecond: 0,
        millisecond: 0,
      );

      var querySnapshot = await collection
          .where(
            Filter.and(
              Filter("creditCardId", isEqualTo: value.paymentMethodCardId),
              Filter("dueDate", isEqualTo: dueDate),
            ),
          )
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        collection.doc(querySnapshot.docs.first.id).update({
          'items': FieldValue.arrayUnion([
            {
              'productService': value.categoryTitle,
              'description': value.description,
              'expenseId': doc.id,
              'qtyHrs': 1,
              'rate': value.total,
              'amount': value.total,
            }
          ])
        });
      } else {
        var expense = {
          'description': 'Credit card bill " ${value.paymentMethodCardNumber}"',
          'issueDate': value.issueDate,
          'dueDate': dueDate,
          'paymentDate': value.paymentDate,
          'categoryId': '2',
          'categoryTitle': 'Credit card bill',
          'creditCardId': value.paymentMethodCardId,
          'creditCardNumber': value.paymentMethodCardNumber,
          'paymentMethod': 0,
          'status': 0,
          'items': [
            {
              'productService': value.categoryTitle,
              'description': value.description,
              'expenseId': doc.id,
              'qtyHrs': 1,
              'rate': value.total,
              'amount': value.total,
            }
          ],
        };

        await collection.add(expense);
      }
    }

    return right(doc.id);
  }

  @override
  Future<Either<ErrorFields, bool>> put(Expense value) async {
    var expense = {
      'description': value.description,
      'issueDate': value.issueDate,
      'dueDate': value.dueDate,
      'paymentDate': value.paymentDate,
      'categoryId': value.categoryId,
      'categoryTitle': value.categoryTitle,
      'projectId': value.projectId,
      'projectName': value.projectName,
      'taskId': value.taskId,
      'taskTitle': value.taskTitle,
      'employeeId': value.employeeId,
      'creditCardId': value.creditCardId,
      'creditCardNumber': value.creditCardNumber,
      'paymentMethod': value.paymentMethod.index,
      'paymentMethodCardId': value.paymentMethodCardId,
      'paymentMethodCardNumber': value.paymentMethodCardNumber,
      'status': value.status.index,
      'items': value.items.toJson(),
      'attachments': value.attachments.toJson(),
    };

    await collection.doc(value.id).update(expense);

    if (value.attachments.isNotEmpty) {
      for (var attachment in value.attachments) {
        if (attachment.data != null) {
          await storage
              .child(value.id)
              .child(attachment.name)
              .putData(attachment.data!);
        }
      }
    }

    return right(true);
  }

  @override
  Future<bool> changeStatus(String expenseId, ExpenseStatusEnums status) async {
    var expense = {
      'status': status.index,
    };

    await collection.doc(expenseId).update(expense);
    return true;
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id).delete();
    return true;
  }
}
