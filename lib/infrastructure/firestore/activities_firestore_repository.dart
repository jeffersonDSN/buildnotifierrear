import 'package:buildnotifierrear/domain/entities/activity/activity.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_activities_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class ActivitiesFirestoreRepository extends TenantFirestoreRepository
    implements AbsIActivitiesRepository {
  ActivitiesFirestoreRepository({required super.tenantId})
      : super(collectionName: 'activity');

  @override
  Future<List<Activity>> getAllActivityAppointment(String id) async {
    var querySnapshot = await collection
        .where('appointmentId', isEqualTo: id)
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
        .map((e) => Activity.fromJson(e))
        .toList();
  }

  @override
  Future<List<Activity>> getAllActivityInThePeriod(
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
        .map((e) => Activity.fromJson(e))
        .toList();
  }

  @override
  Future<List<Activity>> getAllUnbilledActivities(String projectId) async {
    var querySnapshot = await collection
        .where('projectId', isEqualTo: projectId)
        .where('invoiceId', isEqualTo: '')
        .orderBy('start')
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
        .map((e) => Activity.fromJson(e))
        .toList();
  }

  @override
  Future<String> post(Activity activity) async {
    var schedule = {
      'userId': activity.userId,
      'title': activity.title,
      'appointmentId': activity.appointmentId,
      'projectId': activity.projectId,
      'taskId': activity.taskId,
      'start': activity.start,
      'startLatitude': activity.startLatitude,
      'startLongitude': activity.startLongitude,
      'startLocation': activity.startLocation,
      'end': activity.end,
      'endLatitude': activity.endLatitude,
      'endLongitude': activity.endLongitude,
      'endLocation': activity.endLocation,
    };

    var doc = await collection.add(schedule);

    return doc.id;
  }

  @override
  Future<bool> put(Activity activity) async {
    var schedule = {
      'userId': activity.userId,
      'appointmentId': activity.appointmentId,
      'projectId': activity.projectId,
      'taskId': activity.taskId,
      'start': activity.start,
      'startLatitude': activity.startLatitude,
      'startLongitude': activity.startLongitude,
      'startLocation': activity.startLocation,
      'end': activity.end,
      'endLatitude': activity.endLatitude,
      'endLongitude': activity.endLongitude,
      'endLocation': activity.endLocation,
    };

    collection.doc(activity.id).update(schedule);

    return true;
  }
}
