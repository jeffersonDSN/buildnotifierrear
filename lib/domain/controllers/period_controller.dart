import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_settings_repository.dart';

class PeriodController {
  final AbsISettingsRepository _repository;

  PeriodController({
    required AbsISettingsRepository repository,
  }) : _repository = repository;

  Future<List<Period>> getPeriods() async {
    var settings = await _repository.get();

    DateTime now = DateTime.now();

    var currentPeriod = _getPeriod(
      now,
      settings.periodStart,
      settings.payPeriod,
      current: true,
    );
    var previousPeriod = _getPeriod(
      now,
      settings.periodStart,
      settings.payPeriod,
      current: false,
    );

    return [
      Period(
        name: 'Current Period',
        startDate: currentPeriod['start']!,
        endDate: currentPeriod['end']!,
      ),
      Period(
        name: 'Previous Period',
        startDate: previousPeriod['start']!,
        endDate: previousPeriod['end']!,
      ),
    ];
  }

  Map<String, DateTime> _getPeriod(
      DateTime referenceDate, DateTime periodStart, int payPeriod,
      {required bool current}) {
    DateTime startOfCurrentPeriod;
    DateTime endOfCurrentPeriod;
    DateTime startOfPreviousPeriod;

    if (payPeriod == 0) {
      int daysSinceStart = referenceDate.difference(periodStart).inDays % 7;
      startOfCurrentPeriod = referenceDate.subtract(
        Duration(days: daysSinceStart),
      );
      startOfPreviousPeriod = startOfCurrentPeriod.subtract(
        const Duration(days: 7),
      );
      endOfCurrentPeriod = startOfCurrentPeriod.add(
        const Duration(days: 6),
      );
    } else if (payPeriod == 1) {
      int daysSinceStart = referenceDate.difference(periodStart).inDays % 14;
      startOfCurrentPeriod = referenceDate.subtract(
        Duration(days: daysSinceStart),
      );
      startOfPreviousPeriod = startOfCurrentPeriod.subtract(
        const Duration(days: 14),
      );
      endOfCurrentPeriod = startOfCurrentPeriod.add(
        const Duration(days: 13),
      );
    } else if (payPeriod == 2) {
      // Mensal
      int currentYear = referenceDate.year;
      int currentMonth = referenceDate.month;
      int periodDay = periodStart.day;

      startOfCurrentPeriod = DateTime(currentYear, currentMonth, periodDay);

      if (referenceDate.isBefore(startOfCurrentPeriod)) {
        currentMonth -= 1;
        if (currentMonth == 0) {
          currentMonth = 12;
          currentYear -= 1;
        }
        startOfCurrentPeriod = DateTime(currentYear, currentMonth, periodDay);
      }

      int previousMonth = startOfCurrentPeriod.month - 1;
      int previousYear = startOfCurrentPeriod.year;
      if (previousMonth == 0) {
        previousMonth = 12;
        previousYear -= 1;
      }
      startOfPreviousPeriod = DateTime(previousYear, previousMonth, periodDay);
      endOfCurrentPeriod = DateTime(
        startOfCurrentPeriod.year,
        startOfCurrentPeriod.month + 1,
        periodDay,
      ).subtract(
        const Duration(days: 1),
      );
    } else {
      int daysSinceStart = referenceDate.difference(periodStart).inDays % 7;
      startOfCurrentPeriod = referenceDate.subtract(
        Duration(
          days: daysSinceStart,
        ),
      );
      startOfPreviousPeriod = startOfCurrentPeriod.subtract(
        const Duration(days: 7),
      );
      endOfCurrentPeriod = startOfCurrentPeriod.add(
        const Duration(days: 6),
      );
    }

    return current
        ? {
            'start': DateTime(
              startOfCurrentPeriod.year,
              startOfCurrentPeriod.month,
              startOfCurrentPeriod.day,
            ),
            'end': DateTime(
              endOfCurrentPeriod.year,
              endOfCurrentPeriod.month,
              endOfCurrentPeriod.day,
              23,
              59,
              59,
            )
          }
        : {
            'start': DateTime(
              startOfPreviousPeriod.year,
              startOfPreviousPeriod.month,
              startOfPreviousPeriod.day,
            ),
            'end': DateTime(
              startOfCurrentPeriod.year,
              startOfCurrentPeriod.month,
              startOfCurrentPeriod.day - 1,
              23,
              59,
              59,
            )
          };
  }
}
