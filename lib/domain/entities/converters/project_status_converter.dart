import 'package:buildnotifierrear/domain/entities/enums/project_status_enums.dart';
import 'package:json_annotation/json_annotation.dart';

class ProjectTypeConverter implements JsonConverter<ProjectStatus, int> {
  const ProjectTypeConverter();

  @override
  ProjectStatus fromJson(int value) {
    switch (value) {
      case 0:
        return ProjectStatus.planning;
      case 1:
        return ProjectStatus.planned;
      case 2:
        return ProjectStatus.inProgress;
      case 3:
        return ProjectStatus.blocked;
      case 4:
        return ProjectStatus.concluded;
      default:
        return ProjectStatus.planning;
    }
  }

  @override
  int toJson(ProjectStatus value) {
    switch (value) {
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
}
