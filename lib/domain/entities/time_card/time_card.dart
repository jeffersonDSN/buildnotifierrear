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

extension OnLisTimeCard on List<TimeCard> {
  ({int hours, int minutes}) get totalHoursAndMinutes {
    double totalMinutes = 0;

    forEach((timeCard) {
      if (timeCard.end != null) {
        totalMinutes += timeCard.end!.difference(timeCard.start).inMinutes;
      }
    });

    int hours = totalMinutes ~/ 60;
    int minutes = (totalMinutes % 60) as int;

    return (hours: hours, minutes: minutes);
  }
}
