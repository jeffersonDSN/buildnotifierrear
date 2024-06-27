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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksOverviewEventLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewEventLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewEventLoad value)? load,
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
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
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
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewEventLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewEventLoad value)? load,
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
mixin _$TasksOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksOverviewStateEmpty value) empty,
    required TResult Function(TasksOverviewStateLoading value) loading,
    required TResult Function(TasksOverviewStateloaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewStateEmpty value)? empty,
    TResult? Function(TasksOverviewStateLoading value)? loading,
    TResult? Function(TasksOverviewStateloaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewStateEmpty value)? empty,
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
abstract class _$$TasksOverviewStateEmptyImplCopyWith<$Res> {
  factory _$$TasksOverviewStateEmptyImplCopyWith(
          _$TasksOverviewStateEmptyImpl value,
          $Res Function(_$TasksOverviewStateEmptyImpl) then) =
      __$$TasksOverviewStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksOverviewStateEmptyImplCopyWithImpl<$Res>
    extends _$TasksOverviewStateCopyWithImpl<$Res,
        _$TasksOverviewStateEmptyImpl>
    implements _$$TasksOverviewStateEmptyImplCopyWith<$Res> {
  __$$TasksOverviewStateEmptyImplCopyWithImpl(
      _$TasksOverviewStateEmptyImpl _value,
      $Res Function(_$TasksOverviewStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksOverviewStateEmptyImpl implements TasksOverviewStateEmpty {
  const _$TasksOverviewStateEmptyImpl();

  @override
  String toString() {
    return 'TasksOverviewState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksOverviewStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksOverviewStateEmpty value) empty,
    required TResult Function(TasksOverviewStateLoading value) loading,
    required TResult Function(TasksOverviewStateloaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewStateEmpty value)? empty,
    TResult? Function(TasksOverviewStateLoading value)? loading,
    TResult? Function(TasksOverviewStateloaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewStateEmpty value)? empty,
    TResult Function(TasksOverviewStateLoading value)? loading,
    TResult Function(TasksOverviewStateloaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class TasksOverviewStateEmpty implements TasksOverviewState {
  const factory TasksOverviewStateEmpty() = _$TasksOverviewStateEmptyImpl;
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
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
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
    required TResult Function(TasksOverviewStateEmpty value) empty,
    required TResult Function(TasksOverviewStateLoading value) loading,
    required TResult Function(TasksOverviewStateloaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewStateEmpty value)? empty,
    TResult? Function(TasksOverviewStateLoading value)? loading,
    TResult? Function(TasksOverviewStateloaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewStateEmpty value)? empty,
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
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
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
    required TResult Function(TasksOverviewStateEmpty value) empty,
    required TResult Function(TasksOverviewStateLoading value) loading,
    required TResult Function(TasksOverviewStateloaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksOverviewStateEmpty value)? empty,
    TResult? Function(TasksOverviewStateLoading value)? loading,
    TResult? Function(TasksOverviewStateloaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksOverviewStateEmpty value)? empty,
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