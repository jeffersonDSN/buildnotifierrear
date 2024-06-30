import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_timecard_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class TimecardsFireStoreRepository extends TenantFirestoreRepository
    implements AbsITimecardRepository {
  TimecardsFireStoreRepository({required super.tenantId})
      : super(collectionName: 'timecard');

  @override
  Future<List<Timecard>> getAll() async {
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
        .map((e) => Timecard.fromJson(e))
        .toList();
  }

  @override
  Future<List<Timecard>> getAllOfByEmployeeAndPeriod(
    String employeeId,
    DateTime startDate,
    DateTime endDate,
  ) async {
    var querySnapshot = await collection
        .where('employeeId', isEqualTo: employeeId)
        .where('start', isGreaterThanOrEqualTo: startDate)
        .where('start', isLessThanOrEqualTo: endDate)
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
        .map((e) => Timecard.fromJson(e))
        .toList();
  }

  @override
  Future<List<Timecard>> getAllOfPeriod(
    DateTime startDate,
    DateTime endDate,
  ) async {
    var querySnapshot = await collection
        .where('start', isGreaterThanOrEqualTo: startDate)
        .where('start', isLessThanOrEqualTo: endDate)
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
        .map((e) => Timecard.fromJson(e))
        .toList();
  }

  Stream<List<Timecard>> getAllEmployeesWhoCheckedIn() {
    return collection
        .where(
          'start',
          isGreaterThan: DateTime.now().copyWith(hour: 0, minute: 0),
        )
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
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
          .map((e) => Timecard.fromJson(e))
          .toList()
          .where((element) => element.end == null)
          .toList();
    });
  }

  @override
  Future<Either<ErrorFields, bool>> post(Timecard clock) async {
    var schedule = {
      'employeeId': clock.employeeId,
      'employeeFirstName': clock.employeeFirstName,
      'employeeLastName': clock.employeeLastName,
      'start': clock.start,
      'startLatitude': clock.startLatitude,
      'startLongitude': clock.startLongitude,
      'startLocation': clock.startLocation,
      'end': clock.end,
      'endLatitude': clock.endLatitude,
      'endLongitude': clock.endLongitude,
      'endLocation': clock.endLocation,
    };

    await collection.add(schedule);
    return right(true);
  }

  @override
  Future<Either<ErrorFields, bool>> put(Timecard clock) async {
    var schedule = {
      'employeeId': clock.employeeId,
      'employeeFirstName': clock.employeeFirstName,
      'employeeLastName': clock.employeeLastName,
      'start': clock.start,
      'startLatitude': clock.startLatitude,
      'startLongitude': clock.startLongitude,
      'startLocation': clock.startLocation,
      'end': clock.end,
      'endLatitude': clock.endLatitude,
      'endLongitude': clock.endLongitude,
      'endLocation': clock.endLocation,
    };

    await collection.doc(clock.id.toString()).update(schedule);
    return right(true);
  }

  @override
  Future<bool> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Timecard> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }
}
