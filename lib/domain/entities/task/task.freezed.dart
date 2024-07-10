// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String get id => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get projectName => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get expectedEndDate => throw _privateConstructorUsedError;
  double get budget => throw _privateConstructorUsedError;
  int get taskPercProject => throw _privateConstructorUsedError;
  String get estimatedEffort => throw _privateConstructorUsedError;
  @TaskPriorityConverter()
  TaskPriority get priority => throw _privateConstructorUsedError;
  @TaskStatusConverter()
  TaskStatus get status => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  Map<String, String> get notesList => throw _privateConstructorUsedError;
  List<AppointmentUser> get assignTo => throw _privateConstructorUsedError;
  List<String> get dependencies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String id,
      String projectId,
      String projectName,
      String title,
      DateTime? startDate,
      DateTime? expectedEndDate,
      double budget,
      int taskPercProject,
      String estimatedEffort,
      @TaskPriorityConverter() TaskPriority priority,
      @TaskStatusConverter() TaskStatus status,
      String notes,
      int progress,
      Map<String, String> notesList,
      List<AppointmentUser> assignTo,
      List<String> dependencies});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? projectName = null,
    Object? title = null,
    Object? startDate = freezed,
    Object? expectedEndDate = freezed,
    Object? budget = null,
    Object? taskPercProject = null,
    Object? estimatedEffort = null,
    Object? priority = null,
    Object? status = null,
    Object? notes = null,
    Object? progress = null,
    Object? notesList = null,
    Object? assignTo = null,
    Object? dependencies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedEndDate: freezed == expectedEndDate
          ? _value.expectedEndDate
          : expectedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      taskPercProject: null == taskPercProject
          ? _value.taskPercProject
          : taskPercProject // ignore: cast_nullable_to_non_nullable
              as int,
      estimatedEffort: null == estimatedEffort
          ? _value.estimatedEffort
          : estimatedEffort // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriority,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      notesList: null == notesList
          ? _value.notesList
          : notesList // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      assignTo: null == assignTo
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as List<AppointmentUser>,
      dependencies: null == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String projectId,
      String projectName,
      String title,
      DateTime? startDate,
      DateTime? expectedEndDate,
      double budget,
      int taskPercProject,
      String estimatedEffort,
      @TaskPriorityConverter() TaskPriority priority,
      @TaskStatusConverter() TaskStatus status,
      String notes,
      int progress,
      Map<String, String> notesList,
      List<AppointmentUser> assignTo,
      List<String> dependencies});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? projectName = null,
    Object? title = null,
    Object? startDate = freezed,
    Object? expectedEndDate = freezed,
    Object? budget = null,
    Object? taskPercProject = null,
    Object? estimatedEffort = null,
    Object? priority = null,
    Object? status = null,
    Object? notes = null,
    Object? progress = null,
    Object? notesList = null,
    Object? assignTo = null,
    Object? dependencies = null,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedEndDate: freezed == expectedEndDate
          ? _value.expectedEndDate
          : expectedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      taskPercProject: null == taskPercProject
          ? _value.taskPercProject
          : taskPercProject // ignore: cast_nullable_to_non_nullable
              as int,
      estimatedEffort: null == estimatedEffort
          ? _value.estimatedEffort
          : estimatedEffort // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriority,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      notesList: null == notesList
          ? _value._notesList
          : notesList // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      assignTo: null == assignTo
          ? _value._assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as List<AppointmentUser>,
      dependencies: null == dependencies
          ? _value._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {this.id = '',
      this.projectId = '',
      this.projectName = '',
      this.title = '',
      this.startDate,
      this.expectedEndDate,
      this.budget = 0,
      this.taskPercProject = 0,
      this.estimatedEffort = '',
      @TaskPriorityConverter() this.priority = TaskPriority.low,
      @TaskStatusConverter() this.status = TaskStatus.toDo,
      this.notes = '',
      this.progress = 0,
      final Map<String, String> notesList = const {},
      final List<AppointmentUser> assignTo = const [],
      final List<String> dependencies = const []})
      : _notesList = notesList,
        _assignTo = assignTo,
        _dependencies = dependencies;

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String projectId;
  @override
  @JsonKey()
  final String projectName;
  @override
  @JsonKey()
  final String title;
  @override
  final DateTime? startDate;
  @override
  final DateTime? expectedEndDate;
  @override
  @JsonKey()
  final double budget;
  @override
  @JsonKey()
  final int taskPercProject;
  @override
  @JsonKey()
  final String estimatedEffort;
  @override
  @JsonKey()
  @TaskPriorityConverter()
  final TaskPriority priority;
  @override
  @JsonKey()
  @TaskStatusConverter()
  final TaskStatus status;
  @override
  @JsonKey()
  final String notes;
  @override
  @JsonKey()
  final int progress;
  final Map<String, String> _notesList;
  @override
  @JsonKey()
  Map<String, String> get notesList {
    if (_notesList is EqualUnmodifiableMapView) return _notesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_notesList);
  }

  final List<AppointmentUser> _assignTo;
  @override
  @JsonKey()
  List<AppointmentUser> get assignTo {
    if (_assignTo is EqualUnmodifiableListView) return _assignTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignTo);
  }

  final List<String> _dependencies;
  @override
  @JsonKey()
  List<String> get dependencies {
    if (_dependencies is EqualUnmodifiableListView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependencies);
  }

  @override
  String toString() {
    return 'Task(id: $id, projectId: $projectId, projectName: $projectName, title: $title, startDate: $startDate, expectedEndDate: $expectedEndDate, budget: $budget, taskPercProject: $taskPercProject, estimatedEffort: $estimatedEffort, priority: $priority, status: $status, notes: $notes, progress: $progress, notesList: $notesList, assignTo: $assignTo, dependencies: $dependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.expectedEndDate, expectedEndDate) ||
                other.expectedEndDate == expectedEndDate) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.taskPercProject, taskPercProject) ||
                other.taskPercProject == taskPercProject) &&
            (identical(other.estimatedEffort, estimatedEffort) ||
                other.estimatedEffort == estimatedEffort) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality()
                .equals(other._notesList, _notesList) &&
            const DeepCollectionEquality().equals(other._assignTo, _assignTo) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      projectId,
      projectName,
      title,
      startDate,
      expectedEndDate,
      budget,
      taskPercProject,
      estimatedEffort,
      priority,
      status,
      notes,
      progress,
      const DeepCollectionEquality().hash(_notesList),
      const DeepCollectionEquality().hash(_assignTo),
      const DeepCollectionEquality().hash(_dependencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {final String id,
      final String projectId,
      final String projectName,
      final String title,
      final DateTime? startDate,
      final DateTime? expectedEndDate,
      final double budget,
      final int taskPercProject,
      final String estimatedEffort,
      @TaskPriorityConverter() final TaskPriority priority,
      @TaskStatusConverter() final TaskStatus status,
      final String notes,
      final int progress,
      final Map<String, String> notesList,
      final List<AppointmentUser> assignTo,
      final List<String> dependencies}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  String get id;
  @override
  String get projectId;
  @override
  String get projectName;
  @override
  String get title;
  @override
  DateTime? get startDate;
  @override
  DateTime? get expectedEndDate;
  @override
  double get budget;
  @override
  int get taskPercProject;
  @override
  String get estimatedEffort;
  @override
  @TaskPriorityConverter()
  TaskPriority get priority;
  @override
  @TaskStatusConverter()
  TaskStatus get status;
  @override
  String get notes;
  @override
  int get progress;
  @override
  Map<String, String> get notesList;
  @override
  List<AppointmentUser> get assignTo;
  @override
  List<String> get dependencies;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
