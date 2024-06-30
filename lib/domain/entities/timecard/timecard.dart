import 'package:freezed_annotation/freezed_annotation.dart';

part 'timecard.freezed.dart';
part 'timecard.g.dart';

@freezed
class Timecard with _$Timecard {
  factory Timecard({
    @Default('') String id,
    required String employeeId,
    @Default('') String employeeFirstName,
    @Default('') String employeeLastName,
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
    required int totalMinutes,
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

  List<Timecard> getByStart(DateTime value) {
    DateTime day = DateTime(
      value.year,
      value.month,
      value.day,
    );

    var result = where(
      (timecard) {
        DateTime startDate = DateTime(
          timecard.start.year,
          timecard.start.month,
          timecard.start.day,
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
