import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

enum ProjectStatus {
  planning,
  planned,
  inProgress,
  blocked,
  concluded,
}

extension OnProjectStatus on ProjectStatus {
  int get id {
    switch (this) {
      case ProjectStatus.planning:
        return 0;
      case ProjectStatus.planned:
        return 1;
      case ProjectStatus.inProgress:
        return 2;
      case ProjectStatus.blocked:
        return 3;
      case ProjectStatus.concluded:
        return 4;
      default:
        return 0;
    }
  }

  Color get color {
    switch (this) {
      case ProjectStatus.planning:
        return AppColor.warning;
      case ProjectStatus.planned:
        return AppColor.orange;
      case ProjectStatus.inProgress:
        return AppColor.green;
      case ProjectStatus.blocked:
        return AppColor.red;
      case ProjectStatus.concluded:
        return AppColor.success;
      default:
        return AppColor.warning;
    }
  }

  String name(BuildContext context) {
    switch (this) {
      case ProjectStatus.planning:
        return context.tr.planning;
      case ProjectStatus.planned:
        return context.tr.planned;
      case ProjectStatus.inProgress:
        return context.tr.inProgress;
      case ProjectStatus.blocked:
        return context.tr.blocked;
      case ProjectStatus.concluded:
        return context.tr.concluded;
      default:
        return context.tr.planning;
    }
  }
}
