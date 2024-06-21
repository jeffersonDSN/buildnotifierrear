import 'package:buildnotifierrear/domain/entities/activity/activity.dart';

abstract interface class AbsIActivitiesRepository {
  Future<List<Activity>> getAllActivityAppointment(String id);

  Future<List<Activity>> getAllActivityInThePeriod(
    DateTime startDate,
    DateTime endDate,
  );

  Future<String> post(Activity activity);

  Future<bool> put(Activity activity);
}
