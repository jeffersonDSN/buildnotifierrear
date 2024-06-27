import 'package:buildnotifierrear/domain/entities/enums/task_priority_enums.dart';
import 'package:json_annotation/json_annotation.dart';

class TaskPriorityConverter implements JsonConverter<TaskPriority, int> {
  const TaskPriorityConverter();

  @override
  TaskPriority fromJson(int value) {
    switch (value) {
      case 0:
        return TaskPriority.low;
      case 1:
        return TaskPriority.medium;
      case 2:
        return TaskPriority.high;
      default:
        return TaskPriority.low;
    }
  }

  @override
  int toJson(TaskPriority value) {
    switch (value) {
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
}
