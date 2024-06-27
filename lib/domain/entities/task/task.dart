import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/converters/task_priority_converter.dart';
import 'package:buildnotifierrear/domain/entities/converters/task_status_converter.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_priority_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    @Default('') String id,
    @Default('') String productId,
    @Default('') String projectName,
    @Default('') String title,
    DateTime? startDate,
    DateTime? expectedEndDate,
    @Default('') String estimatedEffort,
    @TaskPriorityConverter() @Default(TaskPriority.low) TaskPriority priority,
    @TaskStatusConverter() @Default(TaskStatus.toDo) TaskStatus status,
    @Default('') String notes,
    @Default({}) Map<String, String> notesList,
    @Default([]) List<AppointmentUser> assignTo,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}
