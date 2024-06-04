import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_appointment_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'firestore_repository.dart';

class AppointmentFirestoreRepository extends FireStoreRepository
    implements AbsIAppointmentRepository {
  AppointmentFirestoreRepository() : super(collectionName: 'schedule');

  @override
  Future<List<Appointment>> getAll() async {
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
        .map((e) => Appointment.fromJson(e))
        .toList();
  }

  @override
  Future<List<Appointment>> getByDay(DateTime selectedDay) async {
    DateTime startOfDay = DateTime(
      selectedDay.year,
      selectedDay.month,
      selectedDay.day,
    );

    DateTime endOfDay = startOfDay.add(const Duration(days: 1));

    Query query1 = collection
        .where('startDateTime', isGreaterThanOrEqualTo: startOfDay)
        .where('startDateTime', isLessThan: endOfDay);

    Query query2 = collection
        .where('endDateTime', isGreaterThanOrEqualTo: startOfDay)
        .where('endDateTime', isLessThan: endOfDay);

    List<QuerySnapshot> querySnapshots = await Future.wait([
      query1.get(),
      query2.get(),
    ]);

    Map<String, DocumentSnapshot> combinedDocs = {};

    for (var doc in querySnapshots[0].docs) {
      combinedDocs[doc.id] = doc;
    }

    for (var doc in querySnapshots[1].docs) {
      combinedDocs[doc.id] = doc;
    }

    return combinedDocs.values.map((DocumentSnapshot document) {
      var data = document.data() as Map<String, dynamic>;
      data['id'] = document.id;

      data = data.map((key, value) {
        if (value is Timestamp) {
          return MapEntry(key, value.toDate().toString());
        }
        return MapEntry(key, value);
      });

      return Appointment.fromJson(data);
    }).toList();
  }

  @override
  Future<List<Appointment>> getByDayAndUser(
    DateTime selectedDay,
    String userId,
  ) async {
    DateTime startOfDay = DateTime(
      selectedDay.year,
      selectedDay.month,
      selectedDay.day,
    );

    DateTime endOfDay = startOfDay.add(const Duration(days: 1));

    Query query1 = collection
        .where('startDateTime', isGreaterThanOrEqualTo: startOfDay)
        .where('startDateTime', isLessThan: endOfDay);

    Query query2 = collection
        .where('endDateTime', isGreaterThanOrEqualTo: startOfDay)
        .where('endDateTime', isLessThan: endOfDay);

    List<QuerySnapshot> querySnapshots = await Future.wait([
      query1.get(),
      query2.get(),
    ]);

    Map<String, DocumentSnapshot> combinedDocs = {};

    for (var doc in querySnapshots[0].docs) {
      combinedDocs[doc.id] = doc;
    }

    for (var doc in querySnapshots[1].docs) {
      combinedDocs[doc.id] = doc;
    }

    List<DocumentSnapshot> filteredDocs = combinedDocs.values.where((doc) {
      List<dynamic> assignTo = (doc.data() as Map<String, dynamic>)['assignTo'];
      return assignTo.any((element) => element['userID'] == userId);
    }).toList();

    return filteredDocs.map((DocumentSnapshot document) {
      var data = document.data() as Map<String, dynamic>;
      data['id'] = document.id;

      data = data.map((key, value) {
        if (value is Timestamp) {
          return MapEntry(key, value.toDate().toString());
        }
        return MapEntry(key, value);
      });

      return Appointment.fromJson(data);
    }).toList();
  }

  @override
  Future<Appointment> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    var result = doc.map((key, value) {
      if (value is Timestamp) {
        return MapEntry(key, value.toDate().toString());
      } else {
        return MapEntry(key, value);
      }
    });

    return Appointment.fromJson({...result, 'id': snapshot.id});
  }

  @override
  Future<bool> put(Appointment value) async {
    var schedule = {
      'startDateTime': value.startDateTime,
      'endDateTime': value.endDateTime,
      'title': value.title,
      'location': value.location,
      'latitude': value.latitude,
      'longitude': value.longitude,
      'assignTo': value.assignTo,
    };

    await collection.doc(value.id.toString()).update(schedule);
    return true;
  }

  @override
  Future<bool> post(Appointment value) async {
    var schedule = {
      'startDateTime': value.startDateTime,
      'endDateTime': value.endDateTime,
      'title': value.title,
      'location': value.location,
      'latitude': value.latitude,
      'longitude': value.longitude,
      'assignTo': value.assignTo.toJson(),
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
