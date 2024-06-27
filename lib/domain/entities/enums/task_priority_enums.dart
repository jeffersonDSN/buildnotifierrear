import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:flutter/material.dart';

enum TaskPriority {
  low,
  medium,
  high,
}

extension OnTaskPriority on TaskPriority {
  int get id {
    switch (this) {
      case TaskPriority.low:
        return 0;
      case TaskPriority.medium:
        return 1;
      case TaskPriority.high:
        return 2;
      default:
        return 0;
    }
  }

  String name(BuildContext context) {
    switch (this) {
      case TaskPriority.low:
        return context.tr.low;
      case TaskPriority.medium:
        return context.tr.medium;
      case TaskPriority.high:
        return context.tr.high;
      default:
        return context.tr.low;
    }
  }
}