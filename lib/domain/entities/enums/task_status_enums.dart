import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:flutter/material.dart';

enum TaskStatus {
  toDo,
  doing,
  blocked,
  done,
}

extension OnTaskStatus on TaskStatus {
  int get id {
    switch (this) {
      case TaskStatus.toDo:
        return 0;
      case TaskStatus.doing:
        return 1;
      case TaskStatus.blocked:
        return 2;
      case TaskStatus.done:
        return 3;
      default:
        return 0;
    }
  }

  String name(BuildContext context) {
    switch (this) {
      case TaskStatus.toDo:
        return context.tr.toDo;
      case TaskStatus.doing:
        return context.tr.doing;
      case TaskStatus.blocked:
        return context.tr.blocked;
      case TaskStatus.done:
        return context.tr.done;
      default:
        return context.tr.toDo;
    }
  }
}
