// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String? ?? '',
      projectId: json['projectId'] as String? ?? '',
      projectName: json['projectName'] as String? ?? '',
      title: json['title'] as String? ?? '',
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      expectedEndDate: json['expectedEndDate'] == null
          ? null
          : DateTime.parse(json['expectedEndDate'] as String),
      budget: (json['budget'] as num?)?.toDouble() ?? 0,
      taskPercProject: (json['taskPercProject'] as num?)?.toInt() ?? 0,
      estimatedEffort: json['estimatedEffort'] as String? ?? '',
      priority: json['priority'] == null
          ? TaskPriority.low
          : const TaskPriorityConverter()
              .fromJson((json['priority'] as num).toInt()),
      status: json['status'] == null
          ? TaskStatus.toDo
          : const TaskStatusConverter()
              .fromJson((json['status'] as num).toInt()),
      notes: json['notes'] as String? ?? '',
      progress: (json['progress'] as num?)?.toInt() ?? 0,
      notesList: (json['notesList'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      assignTo: (json['assignTo'] as List<dynamic>?)
              ?.map((e) => AppointmentUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dependencies: (json['dependencies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'title': instance.title,
      'startDate': instance.startDate?.toIso8601String(),
      'expectedEndDate': instance.expectedEndDate?.toIso8601String(),
      'budget': instance.budget,
      'taskPercProject': instance.taskPercProject,
      'estimatedEffort': instance.estimatedEffort,
      'priority': const TaskPriorityConverter().toJson(instance.priority),
      'status': const TaskStatusConverter().toJson(instance.status),
      'notes': instance.notes,
      'progress': instance.progress,
      'notesList': instance.notesList,
      'assignTo': instance.assignTo,
      'dependencies': instance.dependencies,
    };
