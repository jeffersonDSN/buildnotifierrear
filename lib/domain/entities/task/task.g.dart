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
      width: (json['width'] as num?)?.toDouble() ?? 0,
      dragPosFactor: (json['dragPosFactor'] as num?)?.toDouble() ?? 0,
      draggingRemainingWidth: (json['draggingRemainingWidth'] as num?)?.toInt(),
      remainingWidth: (json['remainingWidth'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'title': instance.title,
      'startDate': instance.startDate?.toIso8601String(),
      'expectedEndDate': instance.expectedEndDate?.toIso8601String(),
      'estimatedEffort': instance.estimatedEffort,
      'priority': const TaskPriorityConverter().toJson(instance.priority),
      'status': const TaskStatusConverter().toJson(instance.status),
      'notes': instance.notes,
      'notesList': instance.notesList,
      'assignTo': instance.assignTo,
      'dependencies': instance.dependencies,
      'width': instance.width,
      'dragPosFactor': instance.dragPosFactor,
      'draggingRemainingWidth': instance.draggingRemainingWidth,
      'remainingWidth': instance.remainingWidth,
    };
