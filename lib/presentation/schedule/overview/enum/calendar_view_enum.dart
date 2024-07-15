import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:flutter/material.dart';

enum CalendarViewEnum {
  month,
  week,
  day,
}

extension OnCalendarViewEnum on CalendarViewEnum {
  String name(BuildContext context) {
    switch (this) {
      case CalendarViewEnum.month:
        return context.tr.month;
      case CalendarViewEnum.week:
        return context.tr.week;
      case CalendarViewEnum.day:
        return context.tr.day;
      default:
        return context.tr.month;
    }
  }

  TResult when<TResult extends Object?>({
    required TResult Function() month,
    required TResult Function() week,
    required TResult Function() day,
  }) {
    switch (this) {
      case CalendarViewEnum.month:
        return month.call();
      case CalendarViewEnum.week:
        return week.call();
      case CalendarViewEnum.day:
        return day.call();
    }
  }
}
