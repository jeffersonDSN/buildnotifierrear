import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_tasks_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'firestore_repository.dart';

class TasksFirestoreRepository extends FireStoreRepository
    implements AbsITasksRepository {
  TasksFirestoreRepository({required super.tenantId})
      : super(collectionName: 'tasks');

  @override
  Future<List<Task>> getAll() async {
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
        .map((e) => Task.fromJson(e))
        .toList();
  }

  @override
  Future<List<Task>> getAllByProject(String projectId) async {
    var querySnapshot = await collection
        .where(
          'productId',
          isEqualTo: projectId,
        )
        .get();

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
        .map((e) => Task.fromJson(e))
        .toList();
  }

  @override
  Future<Task> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    var result = doc.map((key, value) {
      if (value is Timestamp) {
        return MapEntry(key, value.toDate().toString());
      } else {
        return MapEntry(key, value);
      }
    });

    return Task.fromJson({...result, 'id': snapshot.id});
  }

  @override
  Future<bool> put(Task value) async {
    var schedule = {
      'title': value.title,
      'productId': value.productId,
    };

    await collection.doc(value.id.toString()).update(schedule);
    return true;
  }

  @override
  Future<bool> post(Task value) async {
    var schedule = {
      'title': value.title,
      'productId': value.productId,
    };

    await collection.add(schedule);
    return true;
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id.toString()).delete();
    return true;
  }
}
