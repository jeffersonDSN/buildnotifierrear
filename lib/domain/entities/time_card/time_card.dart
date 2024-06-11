import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_card.freezed.dart';
part 'time_card.g.dart';

@freezed
class Timecard with _$Timecard {
  factory Timecard({
    @Default('') String id,
    required String userId,
    required DateTime start,
    double? startLatitude,
    double? startLongitude,
    String? startLocation,
    DateTime? end,
    double? endLatitude,
    double? endLongitude,
    String? endLocation,
  }) = _Timecard;

  factory Timecard.fromJson(Map<String, Object?> json) =>
      _$TimecardFromJson(json);
}

@freezed
class DailyTotal with _$DailyTotal {
  factory DailyTotal({
    required DateTime day,
    required int hours,
    required int minutes,
  }) = _DailyTotal;
}

extension OnTimecard on Timecard {
  ({int hours, int minutes}) get totalHoursAndMinutes {
    int totalMinutes = 0;

    if (end != null) {
      totalMinutes += end!.difference(start).inMinutes;
    }

    int hours = totalMinutes ~/ 60;
    int minutes = totalMinutes % 60;

    return (hours: hours, minutes: minutes);
  }
}

extension OnLisTimecard on List<Timecard> {
  ({int hours, int minutes}) get totalHoursAndMinutes {
    int totalMinutes = 0;

    forEach((timecard) {
      if (timecard.end != null) {
        totalMinutes += timecard.end!.difference(timecard.start).inMinutes;
      }
    });

    int hours = totalMinutes ~/ 60;
    int minutes = totalMinutes % 60;

    return (hours: hours, minutes: minutes);
  }

  List<DailyTotal> get dailyTotal {
    List<DailyTotal> result = [];

    forEach((timecard) {
      DateTime startDate = DateTime(
        timecard.start.year,
        timecard.start.month,
        timecard.start.day,
      );

      int totalMinutes = 0;

      if (timecard.end != null) {
        totalMinutes = timecard.end!.difference(timecard.start).inMinutes;
      }

      var index = result.indexWhere((card) => card.day == startDate);
      if (index > -1) {
        var card = result[index];

        result[index] = card.copyWith(
          hours: card.hours + totalMinutes ~/ 60,
          minutes: card.minutes + totalMinutes % 60,
        );
      } else {
        result.add(
          DailyTotal(
            day: startDate,
            hours: totalMinutes ~/ 60,
            minutes: totalMinutes % 60,
          ),
        );
      }
    });

    return result;
  }

  List<Timecard> getByStart(DateTime start) {
    var result = where(
      (timecard) => timecard.start.difference(start).inDays == 0,
    ).toList();

    return result;
  }
}
