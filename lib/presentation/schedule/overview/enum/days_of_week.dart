import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:flutter/material.dart';

enum DaysOfWeek {
  sun,
  mon,
  tue,
  wed,
  thu,
  fri,
  sat,
}

extension OndaysOfWeek on DaysOfWeek {
  String name(BuildContext context) {
    switch (this) {
      case DaysOfWeek.sun:
        return context.tr.sun;
      case DaysOfWeek.mon:
        return context.tr.mon;
      case DaysOfWeek.tue:
        return context.tr.tue;
      case DaysOfWeek.wed:
        return context.tr.wed;
      case DaysOfWeek.thu:
        return context.tr.thu;
      case DaysOfWeek.fri:
        return context.tr.fri;
      case DaysOfWeek.sat:
        return context.tr.sat;
      default:
        return context.tr.sun;
    }
  }
}
