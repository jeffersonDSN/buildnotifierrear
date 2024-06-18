import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';

import 'package:buildnotifierrear/domain/repositories/abs_i_projects_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class ProjectsFirestoreRepository extends TenantFireStoreRepository
    implements AbsIProjectsRepository {
  ProjectsFirestoreRepository({required super.tenantId})
      : super(collectionName: 'projects');

  @override
  Future<List<Project>> getAll() async {
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
        .map((e) => Project.fromJson(e))
        .toList();
  }

  @override
  Future<List<Project>> getAllByClient(String clientId) async {
    var querySnapshot = await collection
        .where(
          'clientId',
          isEqualTo: clientId,
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
        .map((e) => Project.fromJson(e))
        .toList();
  }

  @override
  Future<Project> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    var result = doc.map((key, value) {
      if (value is Timestamp) {
        return MapEntry(key, value.toDate().toString());
      } else {
        return MapEntry(key, value);
      }
    });

    return Project.fromJson({...result, 'id': snapshot.id});
  }

  @override
  Future<Either<ErrorFields, bool>> put(Project value) async {
    var schedule = {
      'name': value.name,
      'clientId': value.clientId,
      'clientFirstname': value.clientFirstname,
      'clientLastname': value.clientLastname,
      'zipCode': value.zipCode,
      'state': value.state,
      'city': value.city,
      'address': value.address,
      'latitude': value.latitude,
      'longitude': value.longitude,
    };

    await collection.doc(value.id.toString()).update(schedule);
    return right(true);
  }

  @override
  Future<Either<ErrorFields, bool>> post(Project value) async {
    var schedule = {
      'name': value.name,
      'clientId': value.clientId,
      'clientFirstname': value.clientFirstname,
      'clientLastname': value.clientLastname,
      'zipCode': value.zipCode,
      'state': value.state,
      'city': value.city,
      'address': value.address,
      'latitude': value.latitude,
      'longitude': value.longitude,
    };

    await collection.add(schedule);
    return right(true);
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id.toString()).delete();
    return true;
  }
}
