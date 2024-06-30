import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

enum TaskStatus {
  toDo,
  inProgress,
  blocked,
  done,
}

extension OnTaskStatus on TaskStatus {
  int get id {
    switch (this) {
      case TaskStatus.toDo:
        return 0;
      case TaskStatus.inProgress:
        return 1;
      case TaskStatus.blocked:
        return 2;
      case TaskStatus.done:
        return 3;
      default:
        return 0;
    }
  }

  Color get color {
    switch (this) {
      case TaskStatus.toDo:
        return AppColor.warning;
      case TaskStatus.inProgress:
        return AppColor.green;
      case TaskStatus.blocked:
        return AppColor.red;
      case TaskStatus.done:
        return AppColor.success;
      default:
        return AppColor.warning;
    }
  }

  String name(BuildContext context) {
    switch (this) {
      case TaskStatus.toDo:
        return context.tr.toDo;
      case TaskStatus.inProgress:
        return context.tr.inProgress;
      case TaskStatus.blocked:
        return context.tr.blocked;
      case TaskStatus.done:
        return context.tr.done;
      default:
        return context.tr.toDo;
    }
  }
}
