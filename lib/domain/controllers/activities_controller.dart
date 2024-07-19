import 'package:buildnotifierrear/domain/entities/activity/activity.dart';
import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_activities_repository.dart';

class ActivitiesController {
  final AbsIActivitiesRepository _repository;

  ActivitiesController({
    required AbsIActivitiesRepository repository,
  }) : _repository = repository;

  Future<List<Activity>> getAllActivityAppointment(String appointmentId) {
    return _repository.getAllActivityAppointment(appointmentId);
  }

  Future<List<Activity>> getAllActivityInThePeriod(Period period) {
    return _repository.getAllActivityInThePeriod(
      period.startDate,
      period.endDate,
    );
  }

  Future<List<Activity>> getAllUnbilledActivities(
    String projectId,
  ) {
    return _repository.getAllUnbilledActivities(projectId);
  }

  Future<String> startActivities(Activity activity) {
    return _repository.post(activity);
  }

  Future<bool> stopActivities(Activity activity) {
    return _repository.put(activity);
  }
}
