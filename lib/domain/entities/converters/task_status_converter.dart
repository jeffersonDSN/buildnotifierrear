import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:json_annotation/json_annotation.dart';

class TaskStatusConverter implements JsonConverter<TaskStatus, int> {
  const TaskStatusConverter();

  @override
  TaskStatus fromJson(int value) {
    switch (value) {
      case 0:
        return TaskStatus.toDo;
      case 1:
        return TaskStatus.doing;
      case 2:
        return TaskStatus.blocked;
      case 3:
        return TaskStatus.done;
      default:
        return TaskStatus.toDo;
    }
  }

  @override
  int toJson(TaskStatus value) {
    switch (value) {
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
}
