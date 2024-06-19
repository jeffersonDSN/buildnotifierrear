import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    @Default('') String id,
    @Default('') String productId,
    @Default('') String title,
    DateTime? startDate,
    DateTime? expectedEndDate,
    @Default('') String estimatedEffort,
    @Default(0) int priority,
    @Default(0) int status,
    @Default('') String notes,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}
