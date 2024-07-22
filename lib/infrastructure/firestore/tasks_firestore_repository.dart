import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_priority_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_tasks_repository.dart';
import 'package:buildnotifierrear/infrastructure/core/transleted.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' hide Task;

class TasksFirestoreRepository extends TenantFirestoreRepository
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
          'projectId',
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
  Future<Either<ErrorFields, bool>> put(Task value) async {
    var notesList = await getValueList(value.notes);

    var task = {
      'title': value.title,
      'projectId': value.projectId,
      'projectName': value.projectName,
      'startDate': value.startDate,
      'expectedEndDate': value.expectedEndDate,
      'estimatedEffort': value.estimatedEffort,
      'budget': value.budget,
      'taskPercProject': value.taskPercProject,
      'priority': value.priority.id,
      'status': value.status.id,
      'notes': value.notes,
      'notesList': notesList,
      'assignTo': value.assignTo.toJson(),
      'dependencies': value.dependencies,
    };

    await collection.doc(value.id).update(task);
    return right(true);
  }

  @override
  Future<Either<ErrorFields, String>> post(Task value) async {
    var notesList = await getValueList(value.notes);

    var task = {
      'title': value.title,
      'projectId': value.projectId,
      'projectName': value.projectName,
      'startDate': value.startDate,
      'expectedEndDate': value.expectedEndDate,
      'budget': value.budget,
      'taskPercProject': value.taskPercProject,
      'estimatedEffort': value.estimatedEffort,
      'priority': value.priority.id,
      'status': value.status.id,
      'notes': value.notes,
      'notesList': notesList,
      'assignTo': value.assignTo.toJson(),
      'dependencies': value.dependencies,
    };

    var doc = await collection.add(task);
    return right(doc.id);
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id).delete();
    return true;
  }

  @override
  Future<bool> updateStatus(String id, TaskStatus status) async {
    var task = {
      'status': status.id,
    };

    await collection.doc(id).update(task);
    return true;
  }

  @override
  Future<bool> updateDates(
    String id,
    DateTime startDate,
    DateTime endDate,
  ) async {
    var task = {
      'startDate': startDate,
      'expectedEndDate': endDate,
    };

    await collection.doc(id).update(task);
    return true;
  }
}
