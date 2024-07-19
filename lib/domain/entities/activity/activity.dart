import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
class Activity with _$Activity {
  factory Activity({
    @Default('') String id,
    required String userId,
    required String userFirstName,
    required String userLastName,
    required String appointmentId,
    @Default('') projectId,
    @Default('') taskId,
    required DateTime start,
    double? startLatitude,
    double? startLongitude,
    String? startLocation,
    DateTime? end,
    double? endLatitude,
    double? endLongitude,
    String? endLocation,
    @Default('') String invoiceId,
  }) = _Activity;

  factory Activity.fromJson(Map<String, Object?> json) =>
      _$ActivityFromJson(json);
}

extension OnActivity on Activity {
  ({int hours, int minutes}) get totalHoursAndMinutes {
    int totalMinutes = 0;

    if (end != null) {
      totalMinutes += end!.difference(start).inMinutes;
    }

    int hours = totalMinutes ~/ 60;
    int minutes = totalMinutes % 60;

    return (hours: hours, minutes: minutes);
  }

  double get hoursDifference {
    Duration difference = end!.difference(start);
    return difference.inMinutes / 60.0;
  }
}

extension OnListActivity on List<Activity> {
  ({int hours, int minutes}) get totalHoursAndMinutes {
    int totalMinutes = 0;

    forEach((activity) {
      if (activity.end != null) {
        totalMinutes += activity.end!.difference(activity.start).inMinutes;
      }
    });

    int hours = totalMinutes ~/ 60;
    int minutes = totalMinutes % 60;

    return (hours: hours, minutes: minutes);
  }

  Map<String, ({int hours, int minutes})> get totalHoursByProject {
    Map<String, int> projectMinutes = {};

    forEach((activity) {
      if (activity.end != null) {
        int minutes = activity.end!.difference(activity.start).inMinutes;
        if (projectMinutes.containsKey(activity.projectId)) {
          projectMinutes[activity.projectId] =
              projectMinutes[activity.projectId]! + minutes;
        } else {
          projectMinutes[activity.projectId] = minutes;
        }
      }
    });

    return projectMinutes.map((projectId, totalMinutes) {
      int hours = totalMinutes ~/ 60;
      int minutes = totalMinutes % 60;
      return MapEntry(projectId, (hours: hours, minutes: minutes));
    });
  }

  List<DailyTotal> get dailyTotal {
    List<DailyTotal> result = [];

    forEach((activity) {
      DateTime startDate = DateTime(
        activity.start.year,
        activity.start.month,
        activity.start.day,
      );

      int totalMinutes = 0;

      if (activity.end != null) {
        totalMinutes = activity.end!.difference(activity.start).inMinutes;
      }

      var index = result.indexWhere((card) => card.day == startDate);
      if (index > -1) {
        var card = result[index];

        result[index] = card.copyWith(
          totalMinutes: card.totalMinutes + totalMinutes,
        );
      } else {
        result.add(
          DailyTotal(
            day: startDate,
            totalMinutes: totalMinutes,
          ),
        );
      }
    });

    return result;
  }

  List<Activity> getByStart(DateTime value) {
    DateTime day = DateTime(
      value.year,
      value.month,
      value.day,
    );

    var result = where(
      (activity) {
        DateTime startDate = DateTime(
          activity.start.year,
          activity.start.month,
          activity.start.day,
        );

        var result = day.difference(startDate).inDays == 0;

        return result;
      },
    ).toList();

    return result;
  }
}

extension OnDailyTotal on DailyTotal {
  int get hours => totalMinutes ~/ 60;
  int get minutes => totalMinutes % 60;
}
