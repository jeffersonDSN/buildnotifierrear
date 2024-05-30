// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectId, CrudType crudType) load,
    required TResult Function(String value) updateProjectId,
    required TResult Function(String value) updateTitle,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectId, CrudType crudType)? load,
    TResult? Function(String value)? updateProjectId,
    TResult? Function(String value)? updateTitle,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectId, CrudType crudType)? load,
    TResult Function(String value)? updateProjectId,
    TResult Function(String value)? updateTitle,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskEditEventLoad value) load,
    required TResult Function(TaskEditEventUpdateProjectId value)
        updateProjectId,
    required TResult Function(TaskEditEventUpdateTitle value) updateTitle,
    required TResult Function(TaskEditEventSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditEventLoad value)? load,
    TResult? Function(TaskEditEventUpdateProjectId value)? updateProjectId,
    TResult? Function(TaskEditEventUpdateTitle value)? updateTitle,
    TResult? Function(TaskEditEventSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditEventLoad value)? load,
    TResult Function(TaskEditEventUpdateProjectId value)? updateProjectId,
    TResult Function(TaskEditEventUpdateTitle value)? updateTitle,
    TResult Function(TaskEditEventSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditEventCopyWith<$Res> {
  factory $TaskEditEventCopyWith(
          TaskEditEvent value, $Res Function(TaskEditEvent) then) =
      _$TaskEditEventCopyWithImpl<$Res, TaskEditEvent>;
}

/// @nodoc
class _$TaskEditEventCopyWithImpl<$Res, $Val extends TaskEditEvent>
    implements $TaskEditEventCopyWith<$Res> {
  _$TaskEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskEditEventLoadImplCopyWith<$Res> {
  factory _$$TaskEditEventLoadImplCopyWith(_$TaskEditEventLoadImpl value,
          $Res Function(_$TaskEditEventLoadImpl) then) =
      __$$TaskEditEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String projectId, CrudType crudType});

  $CrudTypeCopyWith<$Res> get crudType;
}

/// @nodoc
class __$$TaskEditEventLoadImplCopyWithImpl<$Res>
    extends _$TaskEditEventCopyWithImpl<$Res, _$TaskEditEventLoadImpl>
    implements _$$TaskEditEventLoadImplCopyWith<$Res> {
  __$$TaskEditEventLoadImplCopyWithImpl(_$TaskEditEventLoadImpl _value,
      $Res Function(_$TaskEditEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? crudType = null,
  }) {
    return _then(_$TaskEditEventLoadImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      crudType: null == crudType
          ? _value.crudType
          : crudType // ignore: cast_nullable_to_non_nullable
              as CrudType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CrudTypeCopyWith<$Res> get crudType {
    return $CrudTypeCopyWith<$Res>(_value.crudType, (value) {
      return _then(_value.copyWith(crudType: value));
    });
  }
}

/// @nodoc

class _$TaskEditEventLoadImpl implements TaskEditEventLoad {
  const _$TaskEditEventLoadImpl(
      {this.projectId = '', this.crudType = const CrudType.create()});

  @override
  @JsonKey()
  final String projectId;
  @override
  @JsonKey()
  final CrudType crudType;

  @override
  String toString() {
    return 'TaskEditEvent.load(projectId: $projectId, crudType: $crudType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEditEventLoadImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.crudType, crudType) ||
                other.crudType == crudType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectId, crudType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEditEventLoadImplCopyWith<_$TaskEditEventLoadImpl> get copyWith =>
      __$$TaskEditEventLoadImplCopyWithImpl<_$TaskEditEventLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectId, CrudType crudType) load,
    required TResult Function(String value) updateProjectId,
    required TResult Function(String value) updateTitle,
    required TResult Function() save,
  }) {
    return load(projectId, crudType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectId, CrudType crudType)? load,
    TResult? Function(String value)? updateProjectId,
    TResult? Function(String value)? updateTitle,
    TResult? Function()? save,
  }) {
    return load?.call(projectId, crudType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectId, CrudType crudType)? load,
    TResult Function(String value)? updateProjectId,
    TResult Function(String value)? updateTitle,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(projectId, crudType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskEditEventLoad value) load,
    required TResult Function(TaskEditEventUpdateProjectId value)
        updateProjectId,
    required TResult Function(TaskEditEventUpdateTitle value) updateTitle,
    required TResult Function(TaskEditEventSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditEventLoad value)? load,
    TResult? Function(TaskEditEventUpdateProjectId value)? updateProjectId,
    TResult? Function(TaskEditEventUpdateTitle value)? updateTitle,
    TResult? Function(TaskEditEventSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditEventLoad value)? load,
    TResult Function(TaskEditEventUpdateProjectId value)? updateProjectId,
    TResult Function(TaskEditEventUpdateTitle value)? updateTitle,
    TResult Function(TaskEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TaskEditEventLoad implements TaskEditEvent {
  const factory TaskEditEventLoad(
      {final String projectId,
      final CrudType crudType}) = _$TaskEditEventLoadImpl;

  String get projectId;
  CrudType get crudType;
  @JsonKey(ignore: true)
  _$$TaskEditEventLoadImplCopyWith<_$TaskEditEventLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskEditEventUpdateProjectIdImplCopyWith<$Res> {
  factory _$$TaskEditEventUpdateProjectIdImplCopyWith(
          _$TaskEditEventUpdateProjectIdImpl value,
          $Res Function(_$TaskEditEventUpdateProjectIdImpl) then) =
      __$$TaskEditEventUpdateProjectIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$TaskEditEventUpdateProjectIdImplCopyWithImpl<$Res>
    extends _$TaskEditEventCopyWithImpl<$Res,
        _$TaskEditEventUpdateProjectIdImpl>
    implements _$$TaskEditEventUpdateProjectIdImplCopyWith<$Res> {
  __$$TaskEditEventUpdateProjectIdImplCopyWithImpl(
      _$TaskEditEventUpdateProjectIdImpl _value,
      $Res Function(_$TaskEditEventUpdateProjectIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TaskEditEventUpdateProjectIdImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskEditEventUpdateProjectIdImpl
    implements TaskEditEventUpdateProjectId {
  const _$TaskEditEventUpdateProjectIdImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'TaskEditEvent.updateProjectId(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEditEventUpdateProjectIdImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEditEventUpdateProjectIdImplCopyWith<
          _$TaskEditEventUpdateProjectIdImpl>
      get copyWith => __$$TaskEditEventUpdateProjectIdImplCopyWithImpl<
          _$TaskEditEventUpdateProjectIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectId, CrudType crudType) load,
    required TResult Function(String value) updateProjectId,
    required TResult Function(String value) updateTitle,
    required TResult Function() save,
  }) {
    return updateProjectId(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectId, CrudType crudType)? load,
    TResult? Function(String value)? updateProjectId,
    TResult? Function(String value)? updateTitle,
    TResult? Function()? save,
  }) {
    return updateProjectId?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectId, CrudType crudType)? load,
    TResult Function(String value)? updateProjectId,
    TResult Function(String value)? updateTitle,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (updateProjectId != null) {
      return updateProjectId(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskEditEventLoad value) load,
    required TResult Function(TaskEditEventUpdateProjectId value)
        updateProjectId,
    required TResult Function(TaskEditEventUpdateTitle value) updateTitle,
    required TResult Function(TaskEditEventSave value) save,
  }) {
    return updateProjectId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditEventLoad value)? load,
    TResult? Function(TaskEditEventUpdateProjectId value)? updateProjectId,
    TResult? Function(TaskEditEventUpdateTitle value)? updateTitle,
    TResult? Function(TaskEditEventSave value)? save,
  }) {
    return updateProjectId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditEventLoad value)? load,
    TResult Function(TaskEditEventUpdateProjectId value)? updateProjectId,
    TResult Function(TaskEditEventUpdateTitle value)? updateTitle,
    TResult Function(TaskEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (updateProjectId != null) {
      return updateProjectId(this);
    }
    return orElse();
  }
}

abstract class TaskEditEventUpdateProjectId implements TaskEditEvent {
  const factory TaskEditEventUpdateProjectId({required final String value}) =
      _$TaskEditEventUpdateProjectIdImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$TaskEditEventUpdateProjectIdImplCopyWith<
          _$TaskEditEventUpdateProjectIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskEditEventUpdateTitleImplCopyWith<$Res> {
  factory _$$TaskEditEventUpdateTitleImplCopyWith(
          _$TaskEditEventUpdateTitleImpl value,
          $Res Function(_$TaskEditEventUpdateTitleImpl) then) =
      __$$TaskEditEventUpdateTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$TaskEditEventUpdateTitleImplCopyWithImpl<$Res>
    extends _$TaskEditEventCopyWithImpl<$Res, _$TaskEditEventUpdateTitleImpl>
    implements _$$TaskEditEventUpdateTitleImplCopyWith<$Res> {
  __$$TaskEditEventUpdateTitleImplCopyWithImpl(
      _$TaskEditEventUpdateTitleImpl _value,
      $Res Function(_$TaskEditEventUpdateTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TaskEditEventUpdateTitleImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskEditEventUpdateTitleImpl implements TaskEditEventUpdateTitle {
  const _$TaskEditEventUpdateTitleImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'TaskEditEvent.updateTitle(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEditEventUpdateTitleImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEditEventUpdateTitleImplCopyWith<_$TaskEditEventUpdateTitleImpl>
      get copyWith => __$$TaskEditEventUpdateTitleImplCopyWithImpl<
          _$TaskEditEventUpdateTitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectId, CrudType crudType) load,
    required TResult Function(String value) updateProjectId,
    required TResult Function(String value) updateTitle,
    required TResult Function() save,
  }) {
    return updateTitle(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectId, CrudType crudType)? load,
    TResult? Function(String value)? updateProjectId,
    TResult? Function(String value)? updateTitle,
    TResult? Function()? save,
  }) {
    return updateTitle?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectId, CrudType crudType)? load,
    TResult Function(String value)? updateProjectId,
    TResult Function(String value)? updateTitle,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (updateTitle != null) {
      return updateTitle(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskEditEventLoad value) load,
    required TResult Function(TaskEditEventUpdateProjectId value)
        updateProjectId,
    required TResult Function(TaskEditEventUpdateTitle value) updateTitle,
    required TResult Function(TaskEditEventSave value) save,
  }) {
    return updateTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditEventLoad value)? load,
    TResult? Function(TaskEditEventUpdateProjectId value)? updateProjectId,
    TResult? Function(TaskEditEventUpdateTitle value)? updateTitle,
    TResult? Function(TaskEditEventSave value)? save,
  }) {
    return updateTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditEventLoad value)? load,
    TResult Function(TaskEditEventUpdateProjectId value)? updateProjectId,
    TResult Function(TaskEditEventUpdateTitle value)? updateTitle,
    TResult Function(TaskEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (updateTitle != null) {
      return updateTitle(this);
    }
    return orElse();
  }
}

abstract class TaskEditEventUpdateTitle implements TaskEditEvent {
  const factory TaskEditEventUpdateTitle({required final String value}) =
      _$TaskEditEventUpdateTitleImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$TaskEditEventUpdateTitleImplCopyWith<_$TaskEditEventUpdateTitleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskEditEventSaveImplCopyWith<$Res> {
  factory _$$TaskEditEventSaveImplCopyWith(_$TaskEditEventSaveImpl value,
          $Res Function(_$TaskEditEventSaveImpl) then) =
      __$$TaskEditEventSaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskEditEventSaveImplCopyWithImpl<$Res>
    extends _$TaskEditEventCopyWithImpl<$Res, _$TaskEditEventSaveImpl>
    implements _$$TaskEditEventSaveImplCopyWith<$Res> {
  __$$TaskEditEventSaveImplCopyWithImpl(_$TaskEditEventSaveImpl _value,
      $Res Function(_$TaskEditEventSaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskEditEventSaveImpl implements TaskEditEventSave {
  const _$TaskEditEventSaveImpl();

  @override
  String toString() {
    return 'TaskEditEvent.save()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskEditEventSaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectId, CrudType crudType) load,
    required TResult Function(String value) updateProjectId,
    required TResult Function(String value) updateTitle,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectId, CrudType crudType)? load,
    TResult? Function(String value)? updateProjectId,
    TResult? Function(String value)? updateTitle,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectId, CrudType crudType)? load,
    TResult Function(String value)? updateProjectId,
    TResult Function(String value)? updateTitle,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskEditEventLoad value) load,
    required TResult Function(TaskEditEventUpdateProjectId value)
        updateProjectId,
    required TResult Function(TaskEditEventUpdateTitle value) updateTitle,
    required TResult Function(TaskEditEventSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditEventLoad value)? load,
    TResult? Function(TaskEditEventUpdateProjectId value)? updateProjectId,
    TResult? Function(TaskEditEventUpdateTitle value)? updateTitle,
    TResult? Function(TaskEditEventSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditEventLoad value)? load,
    TResult Function(TaskEditEventUpdateProjectId value)? updateProjectId,
    TResult Function(TaskEditEventUpdateTitle value)? updateTitle,
    TResult Function(TaskEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class TaskEditEventSave implements TaskEditEvent {
  const factory TaskEditEventSave() = _$TaskEditEventSaveImpl;
}

/// @nodoc
mixin _$TaskEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType crudType, Task task) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType crudType, Task task)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType crudType, Task task)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskEditStateEmpty value) empty,
    required TResult Function(TaskEditStateLoading value) loading,
    required TResult Function(TaskEditStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditStateEmpty value)? empty,
    TResult? Function(TaskEditStateLoading value)? loading,
    TResult? Function(TaskEditStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditStateEmpty value)? empty,
    TResult Function(TaskEditStateLoading value)? loading,
    TResult Function(TaskEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditStateCopyWith<$Res> {
  factory $TaskEditStateCopyWith(
          TaskEditState value, $Res Function(TaskEditState) then) =
      _$TaskEditStateCopyWithImpl<$Res, TaskEditState>;
}

/// @nodoc
class _$TaskEditStateCopyWithImpl<$Res, $Val extends TaskEditState>
    implements $TaskEditStateCopyWith<$Res> {
  _$TaskEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskEditStateEmptyImplCopyWith<$Res> {
  factory _$$TaskEditStateEmptyImplCopyWith(_$TaskEditStateEmptyImpl value,
          $Res Function(_$TaskEditStateEmptyImpl) then) =
      __$$TaskEditStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskEditStateEmptyImplCopyWithImpl<$Res>
    extends _$TaskEditStateCopyWithImpl<$Res, _$TaskEditStateEmptyImpl>
    implements _$$TaskEditStateEmptyImplCopyWith<$Res> {
  __$$TaskEditStateEmptyImplCopyWithImpl(_$TaskEditStateEmptyImpl _value,
      $Res Function(_$TaskEditStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskEditStateEmptyImpl implements TaskEditStateEmpty {
  const _$TaskEditStateEmptyImpl();

  @override
  String toString() {
    return 'TaskEditState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskEditStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType crudType, Task task) loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType crudType, Task task)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType crudType, Task task)? loaded,
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
    required TResult Function(TaskEditStateEmpty value) empty,
    required TResult Function(TaskEditStateLoading value) loading,
    required TResult Function(TaskEditStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditStateEmpty value)? empty,
    TResult? Function(TaskEditStateLoading value)? loading,
    TResult? Function(TaskEditStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditStateEmpty value)? empty,
    TResult Function(TaskEditStateLoading value)? loading,
    TResult Function(TaskEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class TaskEditStateEmpty implements TaskEditState {
  const factory TaskEditStateEmpty() = _$TaskEditStateEmptyImpl;
}

/// @nodoc
abstract class _$$TaskEditStateLoadingImplCopyWith<$Res> {
  factory _$$TaskEditStateLoadingImplCopyWith(_$TaskEditStateLoadingImpl value,
          $Res Function(_$TaskEditStateLoadingImpl) then) =
      __$$TaskEditStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskEditStateLoadingImplCopyWithImpl<$Res>
    extends _$TaskEditStateCopyWithImpl<$Res, _$TaskEditStateLoadingImpl>
    implements _$$TaskEditStateLoadingImplCopyWith<$Res> {
  __$$TaskEditStateLoadingImplCopyWithImpl(_$TaskEditStateLoadingImpl _value,
      $Res Function(_$TaskEditStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskEditStateLoadingImpl implements TaskEditStateLoading {
  const _$TaskEditStateLoadingImpl();

  @override
  String toString() {
    return 'TaskEditState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEditStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType crudType, Task task) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType crudType, Task task)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType crudType, Task task)? loaded,
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
    required TResult Function(TaskEditStateEmpty value) empty,
    required TResult Function(TaskEditStateLoading value) loading,
    required TResult Function(TaskEditStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditStateEmpty value)? empty,
    TResult? Function(TaskEditStateLoading value)? loading,
    TResult? Function(TaskEditStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditStateEmpty value)? empty,
    TResult Function(TaskEditStateLoading value)? loading,
    TResult Function(TaskEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskEditStateLoading implements TaskEditState {
  const factory TaskEditStateLoading() = _$TaskEditStateLoadingImpl;
}

/// @nodoc
abstract class _$$TaskEditStateLoadedImplCopyWith<$Res> {
  factory _$$TaskEditStateLoadedImplCopyWith(_$TaskEditStateLoadedImpl value,
          $Res Function(_$TaskEditStateLoadedImpl) then) =
      __$$TaskEditStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType crudType, Task task});

  $CrudTypeCopyWith<$Res> get crudType;
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskEditStateLoadedImplCopyWithImpl<$Res>
    extends _$TaskEditStateCopyWithImpl<$Res, _$TaskEditStateLoadedImpl>
    implements _$$TaskEditStateLoadedImplCopyWith<$Res> {
  __$$TaskEditStateLoadedImplCopyWithImpl(_$TaskEditStateLoadedImpl _value,
      $Res Function(_$TaskEditStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crudType = null,
    Object? task = null,
  }) {
    return _then(_$TaskEditStateLoadedImpl(
      crudType: null == crudType
          ? _value.crudType
          : crudType // ignore: cast_nullable_to_non_nullable
              as CrudType,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CrudTypeCopyWith<$Res> get crudType {
    return $CrudTypeCopyWith<$Res>(_value.crudType, (value) {
      return _then(_value.copyWith(crudType: value));
    });
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

class _$TaskEditStateLoadedImpl implements TaskEditStateLoaded {
  const _$TaskEditStateLoadedImpl({required this.crudType, required this.task});

  @override
  final CrudType crudType;
  @override
  final Task task;

  @override
  String toString() {
    return 'TaskEditState.loaded(crudType: $crudType, task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEditStateLoadedImpl &&
            (identical(other.crudType, crudType) ||
                other.crudType == crudType) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crudType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEditStateLoadedImplCopyWith<_$TaskEditStateLoadedImpl> get copyWith =>
      __$$TaskEditStateLoadedImplCopyWithImpl<_$TaskEditStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType crudType, Task task) loaded,
  }) {
    return loaded(crudType, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType crudType, Task task)? loaded,
  }) {
    return loaded?.call(crudType, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType crudType, Task task)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(crudType, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskEditStateEmpty value) empty,
    required TResult Function(TaskEditStateLoading value) loading,
    required TResult Function(TaskEditStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditStateEmpty value)? empty,
    TResult? Function(TaskEditStateLoading value)? loading,
    TResult? Function(TaskEditStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditStateEmpty value)? empty,
    TResult Function(TaskEditStateLoading value)? loading,
    TResult Function(TaskEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TaskEditStateLoaded implements TaskEditState {
  const factory TaskEditStateLoaded(
      {required final CrudType crudType,
      required final Task task}) = _$TaskEditStateLoadedImpl;

  CrudType get crudType;
  Task get task;
  @JsonKey(ignore: true)
  _$$TaskEditStateLoadedImplCopyWith<_$TaskEditStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
