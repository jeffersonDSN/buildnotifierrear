import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_card.freezed.dart';
part 'time_card.g.dart';

@freezed
class TimeCard with _$TimeCard {
  factory TimeCard({
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
  }) = _TimeCard;

  factory TimeCard.fromJson(Map<String, Object?> json) =>
      _$TimeCardFromJson(json);
}

@freezed
class DailyTotal with _$DailyTotal {
  factory DailyTotal({
    required DateTime day,
    required int hours,
    required int minutes,
  }) = _DailyTotal;
}

extension OnLisTimeCard on List<TimeCard> {
  ({int hours, int minutes}) get totalHoursAndMinutes {
    int totalMinutes = 0;

    forEach((timeCard) {
      if (timeCard.end != null) {
        totalMinutes += timeCard.end!.difference(timeCard.start).inMinutes;
      }
    });

    int hours = totalMinutes ~/ 60;
    int minutes = totalMinutes % 60;

    return (hours: hours, minutes: minutes);
  }

  List<DailyTotal> get dailyTotal {
    List<DailyTotal> result = [];

    forEach((timeCard) {
      DateTime startDate = DateTime(
        timeCard.start.year,
        timeCard.start.month,
        timeCard.start.day,
      );

      if (timeCard.end != null) {
        int totalMinutes = timeCard.end!.difference(timeCard.start).inMinutes;

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
      }
    });

    return result;
  }

  Map<DateTime, List<TimeCard>> groupByStart() {
    Map<DateTime, List<TimeCard>> grouped = {};

    forEach((timeCard) {
      DateTime startDate = DateTime(
        timeCard.start.year,
        timeCard.start.month,
        timeCard.start.day,
      );

      if (grouped.containsKey(startDate)) {
        grouped[startDate]!.add(timeCard);
      } else {
        grouped[startDate] = [timeCard];
      }
    });

    return grouped;
  }
}
