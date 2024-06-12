import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_timecard_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TimecardsFireStoreRepository extends FireStoreRepository
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
  Future<List<Timecard>> getAllByUserId(String userId) async {
    var querySnapshot = await collection
        .where('userId', isEqualTo: userId)
        .orderBy('start', descending: true)
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
  Future<bool> post(Timecard clock) async {
    var schedule = {
      'userId': clock.userId,
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
    return true;
  }

  @override
  Future<bool> put(Timecard clock) async {
    var schedule = {
      'userId': clock.userId,
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
    return true;
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
