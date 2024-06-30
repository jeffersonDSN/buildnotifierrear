// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Task task, TaskStatus status) changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Task task, TaskStatus status)? changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Task task, TaskStatus status)? changeStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksOverviewEventLoad value) load,
    required TResult Function(TasksOverviewEventChangeStatus value)
        changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewEventLoad value)? load,
    TResult? Function(TasksOverviewEventChangeStatus value)? changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewEventLoad value)? load,
    TResult Function(TasksOverviewEventChangeStatus value)? changeStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksOverviewEventCopyWith<$Res> {
  factory $TasksOverviewEventCopyWith(
          TasksOverviewEvent value, $Res Function(TasksOverviewEvent) then) =
      _$TasksOverviewEventCopyWithImpl<$Res, TasksOverviewEvent>;
}

/// @nodoc
class _$TasksOverviewEventCopyWithImpl<$Res, $Val extends TasksOverviewEvent>
    implements $TasksOverviewEventCopyWith<$Res> {
  _$TasksOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TasksOverviewEventLoadImplCopyWith<$Res> {
  factory _$$TasksOverviewEventLoadImplCopyWith(
          _$TasksOverviewEventLoadImpl value,
          $Res Function(_$TasksOverviewEventLoadImpl) then) =
      __$$TasksOverviewEventLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksOverviewEventLoadImplCopyWithImpl<$Res>
    extends _$TasksOverviewEventCopyWithImpl<$Res, _$TasksOverviewEventLoadImpl>
    implements _$$TasksOverviewEventLoadImplCopyWith<$Res> {
  __$$TasksOverviewEventLoadImplCopyWithImpl(
      _$TasksOverviewEventLoadImpl _value,
      $Res Function(_$TasksOverviewEventLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksOverviewEventLoadImpl implements TasksOverviewEventLoad {
  const _$TasksOverviewEventLoadImpl();

  @override
  String toString() {
    return 'TasksOverviewEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksOverviewEventLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Task task, TaskStatus status) changeStatus,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Task task, TaskStatus status)? changeStatus,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Task task, TaskStatus status)? changeStatus,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksOverviewEventLoad value) load,
    required TResult Function(TasksOverviewEventChangeStatus value)
        changeStatus,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewEventLoad value)? load,
    TResult? Function(TasksOverviewEventChangeStatus value)? changeStatus,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewEventLoad value)? load,
    TResult Function(TasksOverviewEventChangeStatus value)? changeStatus,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TasksOverviewEventLoad implements TasksOverviewEvent {
  const factory TasksOverviewEventLoad() = _$TasksOverviewEventLoadImpl;
}

/// @nodoc
abstract class _$$TasksOverviewEventChangeStatusImplCopyWith<$Res> {
  factory _$$TasksOverviewEventChangeStatusImplCopyWith(
          _$TasksOverviewEventChangeStatusImpl value,
          $Res Function(_$TasksOverviewEventChangeStatusImpl) then) =
      __$$TasksOverviewEventChangeStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task, TaskStatus status});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$TasksOverviewEventChangeStatusImplCopyWithImpl<$Res>
    extends _$TasksOverviewEventCopyWithImpl<$Res,
        _$TasksOverviewEventChangeStatusImpl>
    implements _$$TasksOverviewEventChangeStatusImplCopyWith<$Res> {
  __$$TasksOverviewEventChangeStatusImplCopyWithImpl(
      _$TasksOverviewEventChangeStatusImpl _value,
      $Res Function(_$TasksOverviewEventChangeStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? status = null,
  }) {
    return _then(_$TasksOverviewEventChangeStatusImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$TasksOverviewEventChangeStatusImpl
    implements TasksOverviewEventChangeStatus {
  const _$TasksOverviewEventChangeStatusImpl(
      {required this.task, required this.status});

  @override
  final Task task;
  @override
  final TaskStatus status;

  @override
  String toString() {
    return 'TasksOverviewEvent.changeStatus(task: $task, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksOverviewEventChangeStatusImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksOverviewEventChangeStatusImplCopyWith<
          _$TasksOverviewEventChangeStatusImpl>
      get copyWith => __$$TasksOverviewEventChangeStatusImplCopyWithImpl<
          _$TasksOverviewEventChangeStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Task task, TaskStatus status) changeStatus,
  }) {
    return changeStatus(task, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Task task, TaskStatus status)? changeStatus,
  }) {
    return changeStatus?.call(task, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Task task, TaskStatus status)? changeStatus,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(task, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksOverviewEventLoad value) load,
    required TResult Function(TasksOverviewEventChangeStatus value)
        changeStatus,
  }) {
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewEventLoad value)? load,
    TResult? Function(TasksOverviewEventChangeStatus value)? changeStatus,
  }) {
    return changeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewEventLoad value)? load,
    TResult Function(TasksOverviewEventChangeStatus value)? changeStatus,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(this);
    }
    return orElse();
  }
}

abstract class TasksOverviewEventChangeStatus implements TasksOverviewEvent {
  const factory TasksOverviewEventChangeStatus(
      {required final Task task,
      required final TaskStatus status}) = _$TasksOverviewEventChangeStatusImpl;

  Task get task;
  TaskStatus get status;
  @JsonKey(ignore: true)
  _$$TasksOverviewEventChangeStatusImplCopyWith<
          _$TasksOverviewEventChangeStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksOverviewStateInit value) init,
    required TResult Function(TasksOverviewStateLoading value) loading,
    required TResult Function(TasksOverviewStateloaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewStateInit value)? init,
    TResult? Function(TasksOverviewStateLoading value)? loading,
    TResult? Function(TasksOverviewStateloaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewStateInit value)? init,
    TResult Function(TasksOverviewStateLoading value)? loading,
    TResult Function(TasksOverviewStateloaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksOverviewStateCopyWith<$Res> {
  factory $TasksOverviewStateCopyWith(
          TasksOverviewState value, $Res Function(TasksOverviewState) then) =
      _$TasksOverviewStateCopyWithImpl<$Res, TasksOverviewState>;
}

/// @nodoc
class _$TasksOverviewStateCopyWithImpl<$Res, $Val extends TasksOverviewState>
    implements $TasksOverviewStateCopyWith<$Res> {
  _$TasksOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TasksOverviewStateInitImplCopyWith<$Res> {
  factory _$$TasksOverviewStateInitImplCopyWith(
          _$TasksOverviewStateInitImpl value,
          $Res Function(_$TasksOverviewStateInitImpl) then) =
      __$$TasksOverviewStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksOverviewStateInitImplCopyWithImpl<$Res>
    extends _$TasksOverviewStateCopyWithImpl<$Res, _$TasksOverviewStateInitImpl>
    implements _$$TasksOverviewStateInitImplCopyWith<$Res> {
  __$$TasksOverviewStateInitImplCopyWithImpl(
      _$TasksOverviewStateInitImpl _value,
      $Res Function(_$TasksOverviewStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksOverviewStateInitImpl implements TasksOverviewStateInit {
  const _$TasksOverviewStateInitImpl();

  @override
  String toString() {
    return 'TasksOverviewState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksOverviewStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksOverviewStateInit value) init,
    required TResult Function(TasksOverviewStateLoading value) loading,
    required TResult Function(TasksOverviewStateloaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewStateInit value)? init,
    TResult? Function(TasksOverviewStateLoading value)? loading,
    TResult? Function(TasksOverviewStateloaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewStateInit value)? init,
    TResult Function(TasksOverviewStateLoading value)? loading,
    TResult Function(TasksOverviewStateloaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TasksOverviewStateInit implements TasksOverviewState {
  const factory TasksOverviewStateInit() = _$TasksOverviewStateInitImpl;
}

/// @nodoc
abstract class _$$TasksOverviewStateLoadingImplCopyWith<$Res> {
  factory _$$TasksOverviewStateLoadingImplCopyWith(
          _$TasksOverviewStateLoadingImpl value,
          $Res Function(_$TasksOverviewStateLoadingImpl) then) =
      __$$TasksOverviewStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksOverviewStateLoadingImplCopyWithImpl<$Res>
    extends _$TasksOverviewStateCopyWithImpl<$Res,
        _$TasksOverviewStateLoadingImpl>
    implements _$$TasksOverviewStateLoadingImplCopyWith<$Res> {
  __$$TasksOverviewStateLoadingImplCopyWithImpl(
      _$TasksOverviewStateLoadingImpl _value,
      $Res Function(_$TasksOverviewStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksOverviewStateLoadingImpl implements TasksOverviewStateLoading {
  const _$TasksOverviewStateLoadingImpl();

  @override
  String toString() {
    return 'TasksOverviewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksOverviewStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksOverviewStateInit value) init,
    required TResult Function(TasksOverviewStateLoading value) loading,
    required TResult Function(TasksOverviewStateloaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewStateInit value)? init,
    TResult? Function(TasksOverviewStateLoading value)? loading,
    TResult? Function(TasksOverviewStateloaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewStateInit value)? init,
    TResult Function(TasksOverviewStateLoading value)? loading,
    TResult Function(TasksOverviewStateloaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TasksOverviewStateLoading implements TasksOverviewState {
  const factory TasksOverviewStateLoading() = _$TasksOverviewStateLoadingImpl;
}

/// @nodoc
abstract class _$$TasksOverviewStateloadedImplCopyWith<$Res> {
  factory _$$TasksOverviewStateloadedImplCopyWith(
          _$TasksOverviewStateloadedImpl value,
          $Res Function(_$TasksOverviewStateloadedImpl) then) =
      __$$TasksOverviewStateloadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$$TasksOverviewStateloadedImplCopyWithImpl<$Res>
    extends _$TasksOverviewStateCopyWithImpl<$Res,
        _$TasksOverviewStateloadedImpl>
    implements _$$TasksOverviewStateloadedImplCopyWith<$Res> {
  __$$TasksOverviewStateloadedImplCopyWithImpl(
      _$TasksOverviewStateloadedImpl _value,
      $Res Function(_$TasksOverviewStateloadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TasksOverviewStateloadedImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$TasksOverviewStateloadedImpl implements TasksOverviewStateloaded {
  const _$TasksOverviewStateloadedImpl({required final List<Task> tasks})
      : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksOverviewState.loaded(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksOverviewStateloadedImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksOverviewStateloadedImplCopyWith<_$TasksOverviewStateloadedImpl>
      get copyWith => __$$TasksOverviewStateloadedImplCopyWithImpl<
          _$TasksOverviewStateloadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksOverviewStateInit value) init,
    required TResult Function(TasksOverviewStateLoading value) loading,
    required TResult Function(TasksOverviewStateloaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewStateInit value)? init,
    TResult? Function(TasksOverviewStateLoading value)? loading,
    TResult? Function(TasksOverviewStateloaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewStateInit value)? init,
    TResult Function(TasksOverviewStateLoading value)? loading,
    TResult Function(TasksOverviewStateloaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TasksOverviewStateloaded implements TasksOverviewState {
  const factory TasksOverviewStateloaded({required final List<Task> tasks}) =
      _$TasksOverviewStateloadedImpl;

  List<Task> get tasks;
  @JsonKey(ignore: true)
  _$$TasksOverviewStateloadedImplCopyWith<_$TasksOverviewStateloadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
