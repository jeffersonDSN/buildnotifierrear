import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_time_card_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TimeCardsFireStoreRepository extends FireStoreRepository
    implements AbsITimeCardRepository {
  TimeCardsFireStoreRepository({required super.tenantId})
      : super(collectionName: 'timeCard');

  @override
  Future<List<TimeCard>> getAll() async {
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
        .map((e) => TimeCard.fromJson(e))
        .toList();
  }

  @override
  Future<List<TimeCard>> getAllByUserId(String userId) async {
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
        .map((e) => TimeCard.fromJson(e))
        .toList();
  }

  @override
  Future<bool> post(TimeCard clock) async {
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
  Future<bool> put(TimeCard clock) async {
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
  Future<TimeCard> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }
}
