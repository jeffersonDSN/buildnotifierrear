import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_priority_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_tasks_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter_langdetect/flutter_langdetect.dart' as langdetect;
import 'package:dartz/dartz.dart' hide Task;

class TasksFirestoreRepository extends TenantFireStoreRepository
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
  Future<Either<ErrorFields, bool>> put(Task value) async {
    var notesList = await getNotesList(value.notes);

    var schedule = {
      'title': value.title,
      'productId': value.productId,
      'projectName': value.projectName,
      'startDate': value.startDate,
      'expectedEndDate': value.expectedEndDate,
      'estimatedEffort': value.estimatedEffort,
      'priority': value.priority.id,
      'status': value.status.id,
      'notes': value.notes,
      'notesList': notesList,
      'assignTo': value.assignTo.toJson()
    };

    await collection.doc(value.id.toString()).update(schedule);
    return right(true);
  }

  @override
  Future<Either<ErrorFields, bool>> post(Task value) async {
    var notesList = await getNotesList(value.notes);

    var schedule = {
      'title': value.title,
      'productId': value.productId,
      'projectName': value.projectName,
      'startDate': value.startDate,
      'expectedEndDate': value.expectedEndDate,
      'estimatedEffort': value.estimatedEffort,
      'priority': value.priority.id,
      'status': value.status.id,
      'notes': value.notes,
      'notesList': notesList,
      'assignTo': value.assignTo.toJson()
    };

    await collection.add(schedule);
    return right(true);
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id.toString()).delete();
    return true;
  }

  Future<Map<String, String>> getNotesList(String notes) async {
    Map<String, String> notesList = {};

    if (notes.isEmpty) {
      return notesList;
    }

    final language = langdetect.detect(notes);

    final model = GenerativeModel(
      model: "gemini-1.5-flash",
      apiKey: 'AIzaSyD8Mviw4fLJVFogTjBzInBsfkOmRFL8iuY',
    );

    switch (language) {
      case 'en':
        final response = await Future.wait([
          model.generateContent([
            Content.text('Translated to pt, without including details'),
            Content.text(notes),
          ]),
          model.generateContent([
            Content.text('Translated to es, without including details'),
            Content.text(notes),
          ]),
        ]);

        notesList.addAll({
          'en': notes,
          'pt': response[0].text ?? '',
          'es': response[1].text ?? '',
        });

        break;

      case 'es':
        final response = await Future.wait([
          model.generateContent([
            Content.text('Translated to en, without including details'),
            Content.text(notes),
          ]),
          model.generateContent([
            Content.text('Translated to pt, without including details'),
            Content.text(notes),
          ]),
        ]);

        notesList.addAll({
          'en': response[0].text ?? '',
          'pt': response[1].text ?? '',
          'es': notes,
        });

        break;

      case 'pt':
        final response = await Future.wait([
          model.generateContent([
            Content.text('Translated to en, without including details'),
            Content.text(notes),
          ]),
          model.generateContent([
            Content.text('Translated to es, without including details'),
            Content.text(notes),
          ]),
        ]);

        notesList.addAll({
          'en': response[0].text ?? '',
          'pt': notes,
          'es': response[1].text ?? '',
        });

        break;
    }

    return notesList;
  }
}
