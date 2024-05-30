import 'package:buildnotifierrear/domain/entities/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    @Default('') String id,
    @Default('') String name,
    @Default('') String zipCode,
    @Default('') String state,
    @Default('') String city,
    @Default('') String address,
    int? latitude,
    int? longitude,
    @Default([]) List<Task> tasks,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);
}
