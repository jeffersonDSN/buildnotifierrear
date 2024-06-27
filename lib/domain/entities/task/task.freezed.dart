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
  String get productId => throw _privateConstructorUsedError;
  String get projectName => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get expectedEndDate => throw _privateConstructorUsedError;
  String get estimatedEffort => throw _privateConstructorUsedError;
  @TaskPriorityConverter()
  TaskPriority get priority => throw _privateConstructorUsedError;
  @TaskStatusConverter()
  TaskStatus get status => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  Map<String, String> get notesList => throw _privateConstructorUsedError;
  List<AppointmentUser> get assignTo => throw _privateConstructorUsedError;

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
      String productId,
      String projectName,
      String title,
      DateTime? startDate,
      DateTime? expectedEndDate,
      String estimatedEffort,
      @TaskPriorityConverter() TaskPriority priority,
      @TaskStatusConverter() TaskStatus status,
      String notes,
      Map<String, String> notesList,
      List<AppointmentUser> assignTo});
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
    Object? productId = null,
    Object? projectName = null,
    Object? title = null,
    Object? startDate = freezed,
    Object? expectedEndDate = freezed,
    Object? estimatedEffort = null,
    Object? priority = null,
    Object? status = null,
    Object? notes = null,
    Object? notesList = null,
    Object? assignTo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
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
      notesList: null == notesList
          ? _value.notesList
          : notesList // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      assignTo: null == assignTo
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as List<AppointmentUser>,
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
      String productId,
      String projectName,
      String title,
      DateTime? startDate,
      DateTime? expectedEndDate,
      String estimatedEffort,
      @TaskPriorityConverter() TaskPriority priority,
      @TaskStatusConverter() TaskStatus status,
      String notes,
      Map<String, String> notesList,
      List<AppointmentUser> assignTo});
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
    Object? productId = null,
    Object? projectName = null,
    Object? title = null,
    Object? startDate = freezed,
    Object? expectedEndDate = freezed,
    Object? estimatedEffort = null,
    Object? priority = null,
    Object? status = null,
    Object? notes = null,
    Object? notesList = null,
    Object? assignTo = null,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
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
      notesList: null == notesList
          ? _value._notesList
          : notesList // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      assignTo: null == assignTo
          ? _value._assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as List<AppointmentUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {this.id = '',
      this.productId = '',
      this.projectName = '',
      this.title = '',
      this.startDate,
      this.expectedEndDate,
      this.estimatedEffort = '',
      @TaskPriorityConverter() this.priority = TaskPriority.low,
      @TaskStatusConverter() this.status = TaskStatus.toDo,
      this.notes = '',
      final Map<String, String> notesList = const {},
      final List<AppointmentUser> assignTo = const []})
      : _notesList = notesList,
        _assignTo = assignTo;

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String productId;
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

  @override
  String toString() {
    return 'Task(id: $id, productId: $productId, projectName: $projectName, title: $title, startDate: $startDate, expectedEndDate: $expectedEndDate, estimatedEffort: $estimatedEffort, priority: $priority, status: $status, notes: $notes, notesList: $notesList, assignTo: $assignTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.expectedEndDate, expectedEndDate) ||
                other.expectedEndDate == expectedEndDate) &&
            (identical(other.estimatedEffort, estimatedEffort) ||
                other.estimatedEffort == estimatedEffort) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._notesList, _notesList) &&
            const DeepCollectionEquality().equals(other._assignTo, _assignTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      projectName,
      title,
      startDate,
      expectedEndDate,
      estimatedEffort,
      priority,
      status,
      notes,
      const DeepCollectionEquality().hash(_notesList),
      const DeepCollectionEquality().hash(_assignTo));

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
      final String productId,
      final String projectName,
      final String title,
      final DateTime? startDate,
      final DateTime? expectedEndDate,
      final String estimatedEffort,
      @TaskPriorityConverter() final TaskPriority priority,
      @TaskStatusConverter() final TaskStatus status,
      final String notes,
      final Map<String, String> notesList,
      final List<AppointmentUser> assignTo}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  String get id;
  @override
  String get productId;
  @override
  String get projectName;
  @override
  String get title;
  @override
  DateTime? get startDate;
  @override
  DateTime? get expectedEndDate;
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
  Map<String, String> get notesList;
  @override
  List<AppointmentUser> get assignTo;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
