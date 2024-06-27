import 'package:buildnotifierrear/domain/entities/converters/project_status_converter.dart';
import 'package:buildnotifierrear/domain/entities/enums/project_status_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    @Default('') String id,
    @Default('') String name,
    DateTime? startDate,
    DateTime? expectedCompletionDate,
    @Default(0) double budget,
    @ProjectTypeConverter()
    @Default(ProjectStatus.planning)
    ProjectStatus status,
    @Default('') String clientId,
    @Default('') String clientFirstname,
    @Default('') String clientLastname,
    @Default('') String zipCode,
    @Default('') String state,
    @Default('') String city,
    @Default('') String address,
    @Default('') String address2,
    @Default('') String description,
    int? latitude,
    int? longitude,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);
}
