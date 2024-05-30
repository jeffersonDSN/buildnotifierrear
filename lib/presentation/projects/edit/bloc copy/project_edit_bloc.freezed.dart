// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateName,
    required TResult Function(String value) updateZipCode,
    required TResult Function(String value) updateState,
    required TResult Function(String value) updateCity,
    required TResult Function(String value) updateAddress,
    required TResult Function(DependenteStateType value) updateTasksState,
    required TResult Function(Task value) addTask,
    required TResult Function(VoidCallback callback) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateName,
    TResult? Function(String value)? updateZipCode,
    TResult? Function(String value)? updateState,
    TResult? Function(String value)? updateCity,
    TResult? Function(String value)? updateAddress,
    TResult? Function(DependenteStateType value)? updateTasksState,
    TResult? Function(Task value)? addTask,
    TResult? Function(VoidCallback callback)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateName,
    TResult Function(String value)? updateZipCode,
    TResult Function(String value)? updateState,
    TResult Function(String value)? updateCity,
    TResult Function(String value)? updateAddress,
    TResult Function(DependenteStateType value)? updateTasksState,
    TResult Function(Task value)? addTask,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditEventLoad value) load,
    required TResult Function(ProjectEditEventUpdateName value) updateName,
    required TResult Function(ProjectEditEventUpdateZipCode value)
        updateZipCode,
    required TResult Function(ProjectEditEventUpdateState value) updateState,
    required TResult Function(ProjectEditEventUpdateCity value) updateCity,
    required TResult Function(ProjectEditEventUpdateAddress value)
        updateAddress,
    required TResult Function(ProjectEditEventUpdateTasksState value)
        updateTasksState,
    required TResult Function(ProjectEditEventAddTask value) addTask,
    required TResult Function(ProjectEditEventSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditEventLoad value)? load,
    TResult? Function(ProjectEditEventUpdateName value)? updateName,
    TResult? Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult? Function(ProjectEditEventUpdateState value)? updateState,
    TResult? Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult? Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult? Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult? Function(ProjectEditEventAddTask value)? addTask,
    TResult? Function(ProjectEditEventSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditEventLoad value)? load,
    TResult Function(ProjectEditEventUpdateName value)? updateName,
    TResult Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult Function(ProjectEditEventUpdateState value)? updateState,
    TResult Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult Function(ProjectEditEventAddTask value)? addTask,
    TResult Function(ProjectEditEventSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEditEventCopyWith<$Res> {
  factory $ProjectEditEventCopyWith(
          ProjectEditEvent value, $Res Function(ProjectEditEvent) then) =
      _$ProjectEditEventCopyWithImpl<$Res, ProjectEditEvent>;
}

/// @nodoc
class _$ProjectEditEventCopyWithImpl<$Res, $Val extends ProjectEditEvent>
    implements $ProjectEditEventCopyWith<$Res> {
  _$ProjectEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectEditEventLoadImplCopyWith<$Res> {
  factory _$$ProjectEditEventLoadImplCopyWith(_$ProjectEditEventLoadImpl value,
          $Res Function(_$ProjectEditEventLoadImpl) then) =
      __$$ProjectEditEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type});

  $CrudTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$ProjectEditEventLoadImplCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res, _$ProjectEditEventLoadImpl>
    implements _$$ProjectEditEventLoadImplCopyWith<$Res> {
  __$$ProjectEditEventLoadImplCopyWithImpl(_$ProjectEditEventLoadImpl _value,
      $Res Function(_$ProjectEditEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ProjectEditEventLoadImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CrudType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CrudTypeCopyWith<$Res> get type {
    return $CrudTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$ProjectEditEventLoadImpl implements ProjectEditEventLoad {
  const _$ProjectEditEventLoadImpl({this.type = const CrudType.create()});

  @override
  @JsonKey()
  final CrudType type;

  @override
  String toString() {
    return 'ProjectEditEvent.load(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditEventLoadImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEditEventLoadImplCopyWith<_$ProjectEditEventLoadImpl>
      get copyWith =>
          __$$ProjectEditEventLoadImplCopyWithImpl<_$ProjectEditEventLoadImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateName,
    required TResult Function(String value) updateZipCode,
    required TResult Function(String value) updateState,
    required TResult Function(String value) updateCity,
    required TResult Function(String value) updateAddress,
    required TResult Function(DependenteStateType value) updateTasksState,
    required TResult Function(Task value) addTask,
    required TResult Function(VoidCallback callback) save,
  }) {
    return load(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateName,
    TResult? Function(String value)? updateZipCode,
    TResult? Function(String value)? updateState,
    TResult? Function(String value)? updateCity,
    TResult? Function(String value)? updateAddress,
    TResult? Function(DependenteStateType value)? updateTasksState,
    TResult? Function(Task value)? addTask,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return load?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateName,
    TResult Function(String value)? updateZipCode,
    TResult Function(String value)? updateState,
    TResult Function(String value)? updateCity,
    TResult Function(String value)? updateAddress,
    TResult Function(DependenteStateType value)? updateTasksState,
    TResult Function(Task value)? addTask,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditEventLoad value) load,
    required TResult Function(ProjectEditEventUpdateName value) updateName,
    required TResult Function(ProjectEditEventUpdateZipCode value)
        updateZipCode,
    required TResult Function(ProjectEditEventUpdateState value) updateState,
    required TResult Function(ProjectEditEventUpdateCity value) updateCity,
    required TResult Function(ProjectEditEventUpdateAddress value)
        updateAddress,
    required TResult Function(ProjectEditEventUpdateTasksState value)
        updateTasksState,
    required TResult Function(ProjectEditEventAddTask value) addTask,
    required TResult Function(ProjectEditEventSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditEventLoad value)? load,
    TResult? Function(ProjectEditEventUpdateName value)? updateName,
    TResult? Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult? Function(ProjectEditEventUpdateState value)? updateState,
    TResult? Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult? Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult? Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult? Function(ProjectEditEventAddTask value)? addTask,
    TResult? Function(ProjectEditEventSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditEventLoad value)? load,
    TResult Function(ProjectEditEventUpdateName value)? updateName,
    TResult Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult Function(ProjectEditEventUpdateState value)? updateState,
    TResult Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult Function(ProjectEditEventAddTask value)? addTask,
    TResult Function(ProjectEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ProjectEditEventLoad implements ProjectEditEvent {
  const factory ProjectEditEventLoad({final CrudType type}) =
      _$ProjectEditEventLoadImpl;

  CrudType get type;
  @JsonKey(ignore: true)
  _$$ProjectEditEventLoadImplCopyWith<_$ProjectEditEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectEditEventUpdateNameImplCopyWith<$Res> {
  factory _$$ProjectEditEventUpdateNameImplCopyWith(
          _$ProjectEditEventUpdateNameImpl value,
          $Res Function(_$ProjectEditEventUpdateNameImpl) then) =
      __$$ProjectEditEventUpdateNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ProjectEditEventUpdateNameImplCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res,
        _$ProjectEditEventUpdateNameImpl>
    implements _$$ProjectEditEventUpdateNameImplCopyWith<$Res> {
  __$$ProjectEditEventUpdateNameImplCopyWithImpl(
      _$ProjectEditEventUpdateNameImpl _value,
      $Res Function(_$ProjectEditEventUpdateNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ProjectEditEventUpdateNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectEditEventUpdateNameImpl implements ProjectEditEventUpdateName {
  const _$ProjectEditEventUpdateNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ProjectEditEvent.updateName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditEventUpdateNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEditEventUpdateNameImplCopyWith<_$ProjectEditEventUpdateNameImpl>
      get copyWith => __$$ProjectEditEventUpdateNameImplCopyWithImpl<
          _$ProjectEditEventUpdateNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateName,
    required TResult Function(String value) updateZipCode,
    required TResult Function(String value) updateState,
    required TResult Function(String value) updateCity,
    required TResult Function(String value) updateAddress,
    required TResult Function(DependenteStateType value) updateTasksState,
    required TResult Function(Task value) addTask,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updateName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateName,
    TResult? Function(String value)? updateZipCode,
    TResult? Function(String value)? updateState,
    TResult? Function(String value)? updateCity,
    TResult? Function(String value)? updateAddress,
    TResult? Function(DependenteStateType value)? updateTasksState,
    TResult? Function(Task value)? addTask,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updateName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateName,
    TResult Function(String value)? updateZipCode,
    TResult Function(String value)? updateState,
    TResult Function(String value)? updateCity,
    TResult Function(String value)? updateAddress,
    TResult Function(DependenteStateType value)? updateTasksState,
    TResult Function(Task value)? addTask,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditEventLoad value) load,
    required TResult Function(ProjectEditEventUpdateName value) updateName,
    required TResult Function(ProjectEditEventUpdateZipCode value)
        updateZipCode,
    required TResult Function(ProjectEditEventUpdateState value) updateState,
    required TResult Function(ProjectEditEventUpdateCity value) updateCity,
    required TResult Function(ProjectEditEventUpdateAddress value)
        updateAddress,
    required TResult Function(ProjectEditEventUpdateTasksState value)
        updateTasksState,
    required TResult Function(ProjectEditEventAddTask value) addTask,
    required TResult Function(ProjectEditEventSave value) save,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditEventLoad value)? load,
    TResult? Function(ProjectEditEventUpdateName value)? updateName,
    TResult? Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult? Function(ProjectEditEventUpdateState value)? updateState,
    TResult? Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult? Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult? Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult? Function(ProjectEditEventAddTask value)? addTask,
    TResult? Function(ProjectEditEventSave value)? save,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditEventLoad value)? load,
    TResult Function(ProjectEditEventUpdateName value)? updateName,
    TResult Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult Function(ProjectEditEventUpdateState value)? updateState,
    TResult Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult Function(ProjectEditEventAddTask value)? addTask,
    TResult Function(ProjectEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class ProjectEditEventUpdateName implements ProjectEditEvent {
  const factory ProjectEditEventUpdateName({required final String value}) =
      _$ProjectEditEventUpdateNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ProjectEditEventUpdateNameImplCopyWith<_$ProjectEditEventUpdateNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectEditEventUpdateZipCodeImplCopyWith<$Res> {
  factory _$$ProjectEditEventUpdateZipCodeImplCopyWith(
          _$ProjectEditEventUpdateZipCodeImpl value,
          $Res Function(_$ProjectEditEventUpdateZipCodeImpl) then) =
      __$$ProjectEditEventUpdateZipCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ProjectEditEventUpdateZipCodeImplCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res,
        _$ProjectEditEventUpdateZipCodeImpl>
    implements _$$ProjectEditEventUpdateZipCodeImplCopyWith<$Res> {
  __$$ProjectEditEventUpdateZipCodeImplCopyWithImpl(
      _$ProjectEditEventUpdateZipCodeImpl _value,
      $Res Function(_$ProjectEditEventUpdateZipCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ProjectEditEventUpdateZipCodeImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectEditEventUpdateZipCodeImpl
    implements ProjectEditEventUpdateZipCode {
  const _$ProjectEditEventUpdateZipCodeImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ProjectEditEvent.updateZipCode(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditEventUpdateZipCodeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEditEventUpdateZipCodeImplCopyWith<
          _$ProjectEditEventUpdateZipCodeImpl>
      get copyWith => __$$ProjectEditEventUpdateZipCodeImplCopyWithImpl<
          _$ProjectEditEventUpdateZipCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateName,
    required TResult Function(String value) updateZipCode,
    required TResult Function(String value) updateState,
    required TResult Function(String value) updateCity,
    required TResult Function(String value) updateAddress,
    required TResult Function(DependenteStateType value) updateTasksState,
    required TResult Function(Task value) addTask,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updateZipCode(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateName,
    TResult? Function(String value)? updateZipCode,
    TResult? Function(String value)? updateState,
    TResult? Function(String value)? updateCity,
    TResult? Function(String value)? updateAddress,
    TResult? Function(DependenteStateType value)? updateTasksState,
    TResult? Function(Task value)? addTask,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updateZipCode?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateName,
    TResult Function(String value)? updateZipCode,
    TResult Function(String value)? updateState,
    TResult Function(String value)? updateCity,
    TResult Function(String value)? updateAddress,
    TResult Function(DependenteStateType value)? updateTasksState,
    TResult Function(Task value)? addTask,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updateZipCode != null) {
      return updateZipCode(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditEventLoad value) load,
    required TResult Function(ProjectEditEventUpdateName value) updateName,
    required TResult Function(ProjectEditEventUpdateZipCode value)
        updateZipCode,
    required TResult Function(ProjectEditEventUpdateState value) updateState,
    required TResult Function(ProjectEditEventUpdateCity value) updateCity,
    required TResult Function(ProjectEditEventUpdateAddress value)
        updateAddress,
    required TResult Function(ProjectEditEventUpdateTasksState value)
        updateTasksState,
    required TResult Function(ProjectEditEventAddTask value) addTask,
    required TResult Function(ProjectEditEventSave value) save,
  }) {
    return updateZipCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditEventLoad value)? load,
    TResult? Function(ProjectEditEventUpdateName value)? updateName,
    TResult? Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult? Function(ProjectEditEventUpdateState value)? updateState,
    TResult? Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult? Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult? Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult? Function(ProjectEditEventAddTask value)? addTask,
    TResult? Function(ProjectEditEventSave value)? save,
  }) {
    return updateZipCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditEventLoad value)? load,
    TResult Function(ProjectEditEventUpdateName value)? updateName,
    TResult Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult Function(ProjectEditEventUpdateState value)? updateState,
    TResult Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult Function(ProjectEditEventAddTask value)? addTask,
    TResult Function(ProjectEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (updateZipCode != null) {
      return updateZipCode(this);
    }
    return orElse();
  }
}

abstract class ProjectEditEventUpdateZipCode implements ProjectEditEvent {
  const factory ProjectEditEventUpdateZipCode({required final String value}) =
      _$ProjectEditEventUpdateZipCodeImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ProjectEditEventUpdateZipCodeImplCopyWith<
          _$ProjectEditEventUpdateZipCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectEditEventUpdateStateImplCopyWith<$Res> {
  factory _$$ProjectEditEventUpdateStateImplCopyWith(
          _$ProjectEditEventUpdateStateImpl value,
          $Res Function(_$ProjectEditEventUpdateStateImpl) then) =
      __$$ProjectEditEventUpdateStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ProjectEditEventUpdateStateImplCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res,
        _$ProjectEditEventUpdateStateImpl>
    implements _$$ProjectEditEventUpdateStateImplCopyWith<$Res> {
  __$$ProjectEditEventUpdateStateImplCopyWithImpl(
      _$ProjectEditEventUpdateStateImpl _value,
      $Res Function(_$ProjectEditEventUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ProjectEditEventUpdateStateImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectEditEventUpdateStateImpl implements ProjectEditEventUpdateState {
  const _$ProjectEditEventUpdateStateImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ProjectEditEvent.updateState(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditEventUpdateStateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEditEventUpdateStateImplCopyWith<_$ProjectEditEventUpdateStateImpl>
      get copyWith => __$$ProjectEditEventUpdateStateImplCopyWithImpl<
          _$ProjectEditEventUpdateStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateName,
    required TResult Function(String value) updateZipCode,
    required TResult Function(String value) updateState,
    required TResult Function(String value) updateCity,
    required TResult Function(String value) updateAddress,
    required TResult Function(DependenteStateType value) updateTasksState,
    required TResult Function(Task value) addTask,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updateState(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateName,
    TResult? Function(String value)? updateZipCode,
    TResult? Function(String value)? updateState,
    TResult? Function(String value)? updateCity,
    TResult? Function(String value)? updateAddress,
    TResult? Function(DependenteStateType value)? updateTasksState,
    TResult? Function(Task value)? addTask,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updateState?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateName,
    TResult Function(String value)? updateZipCode,
    TResult Function(String value)? updateState,
    TResult Function(String value)? updateCity,
    TResult Function(String value)? updateAddress,
    TResult Function(DependenteStateType value)? updateTasksState,
    TResult Function(Task value)? addTask,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updateState != null) {
      return updateState(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditEventLoad value) load,
    required TResult Function(ProjectEditEventUpdateName value) updateName,
    required TResult Function(ProjectEditEventUpdateZipCode value)
        updateZipCode,
    required TResult Function(ProjectEditEventUpdateState value) updateState,
    required TResult Function(ProjectEditEventUpdateCity value) updateCity,
    required TResult Function(ProjectEditEventUpdateAddress value)
        updateAddress,
    required TResult Function(ProjectEditEventUpdateTasksState value)
        updateTasksState,
    required TResult Function(ProjectEditEventAddTask value) addTask,
    required TResult Function(ProjectEditEventSave value) save,
  }) {
    return updateState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditEventLoad value)? load,
    TResult? Function(ProjectEditEventUpdateName value)? updateName,
    TResult? Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult? Function(ProjectEditEventUpdateState value)? updateState,
    TResult? Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult? Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult? Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult? Function(ProjectEditEventAddTask value)? addTask,
    TResult? Function(ProjectEditEventSave value)? save,
  }) {
    return updateState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditEventLoad value)? load,
    TResult Function(ProjectEditEventUpdateName value)? updateName,
    TResult Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult Function(ProjectEditEventUpdateState value)? updateState,
    TResult Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult Function(ProjectEditEventAddTask value)? addTask,
    TResult Function(ProjectEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (updateState != null) {
      return updateState(this);
    }
    return orElse();
  }
}

abstract class ProjectEditEventUpdateState implements ProjectEditEvent {
  const factory ProjectEditEventUpdateState({required final String value}) =
      _$ProjectEditEventUpdateStateImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ProjectEditEventUpdateStateImplCopyWith<_$ProjectEditEventUpdateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectEditEventUpdateCityImplCopyWith<$Res> {
  factory _$$ProjectEditEventUpdateCityImplCopyWith(
          _$ProjectEditEventUpdateCityImpl value,
          $Res Function(_$ProjectEditEventUpdateCityImpl) then) =
      __$$ProjectEditEventUpdateCityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ProjectEditEventUpdateCityImplCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res,
        _$ProjectEditEventUpdateCityImpl>
    implements _$$ProjectEditEventUpdateCityImplCopyWith<$Res> {
  __$$ProjectEditEventUpdateCityImplCopyWithImpl(
      _$ProjectEditEventUpdateCityImpl _value,
      $Res Function(_$ProjectEditEventUpdateCityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ProjectEditEventUpdateCityImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectEditEventUpdateCityImpl implements ProjectEditEventUpdateCity {
  const _$ProjectEditEventUpdateCityImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ProjectEditEvent.updateCity(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditEventUpdateCityImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEditEventUpdateCityImplCopyWith<_$ProjectEditEventUpdateCityImpl>
      get copyWith => __$$ProjectEditEventUpdateCityImplCopyWithImpl<
          _$ProjectEditEventUpdateCityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateName,
    required TResult Function(String value) updateZipCode,
    required TResult Function(String value) updateState,
    required TResult Function(String value) updateCity,
    required TResult Function(String value) updateAddress,
    required TResult Function(DependenteStateType value) updateTasksState,
    required TResult Function(Task value) addTask,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updateCity(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateName,
    TResult? Function(String value)? updateZipCode,
    TResult? Function(String value)? updateState,
    TResult? Function(String value)? updateCity,
    TResult? Function(String value)? updateAddress,
    TResult? Function(DependenteStateType value)? updateTasksState,
    TResult? Function(Task value)? addTask,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updateCity?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateName,
    TResult Function(String value)? updateZipCode,
    TResult Function(String value)? updateState,
    TResult Function(String value)? updateCity,
    TResult Function(String value)? updateAddress,
    TResult Function(DependenteStateType value)? updateTasksState,
    TResult Function(Task value)? addTask,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updateCity != null) {
      return updateCity(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditEventLoad value) load,
    required TResult Function(ProjectEditEventUpdateName value) updateName,
    required TResult Function(ProjectEditEventUpdateZipCode value)
        updateZipCode,
    required TResult Function(ProjectEditEventUpdateState value) updateState,
    required TResult Function(ProjectEditEventUpdateCity value) updateCity,
    required TResult Function(ProjectEditEventUpdateAddress value)
        updateAddress,
    required TResult Function(ProjectEditEventUpdateTasksState value)
        updateTasksState,
    required TResult Function(ProjectEditEventAddTask value) addTask,
    required TResult Function(ProjectEditEventSave value) save,
  }) {
    return updateCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditEventLoad value)? load,
    TResult? Function(ProjectEditEventUpdateName value)? updateName,
    TResult? Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult? Function(ProjectEditEventUpdateState value)? updateState,
    TResult? Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult? Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult? Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult? Function(ProjectEditEventAddTask value)? addTask,
    TResult? Function(ProjectEditEventSave value)? save,
  }) {
    return updateCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditEventLoad value)? load,
    TResult Function(ProjectEditEventUpdateName value)? updateName,
    TResult Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult Function(ProjectEditEventUpdateState value)? updateState,
    TResult Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult Function(ProjectEditEventAddTask value)? addTask,
    TResult Function(ProjectEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (updateCity != null) {
      return updateCity(this);
    }
    return orElse();
  }
}

abstract class ProjectEditEventUpdateCity implements ProjectEditEvent {
  const factory ProjectEditEventUpdateCity({required final String value}) =
      _$ProjectEditEventUpdateCityImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ProjectEditEventUpdateCityImplCopyWith<_$ProjectEditEventUpdateCityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectEditEventUpdateAddressImplCopyWith<$Res> {
  factory _$$ProjectEditEventUpdateAddressImplCopyWith(
          _$ProjectEditEventUpdateAddressImpl value,
          $Res Function(_$ProjectEditEventUpdateAddressImpl) then) =
      __$$ProjectEditEventUpdateAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ProjectEditEventUpdateAddressImplCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res,
        _$ProjectEditEventUpdateAddressImpl>
    implements _$$ProjectEditEventUpdateAddressImplCopyWith<$Res> {
  __$$ProjectEditEventUpdateAddressImplCopyWithImpl(
      _$ProjectEditEventUpdateAddressImpl _value,
      $Res Function(_$ProjectEditEventUpdateAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ProjectEditEventUpdateAddressImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectEditEventUpdateAddressImpl
    implements ProjectEditEventUpdateAddress {
  const _$ProjectEditEventUpdateAddressImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ProjectEditEvent.updateAddress(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditEventUpdateAddressImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEditEventUpdateAddressImplCopyWith<
          _$ProjectEditEventUpdateAddressImpl>
      get copyWith => __$$ProjectEditEventUpdateAddressImplCopyWithImpl<
          _$ProjectEditEventUpdateAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateName,
    required TResult Function(String value) updateZipCode,
    required TResult Function(String value) updateState,
    required TResult Function(String value) updateCity,
    required TResult Function(String value) updateAddress,
    required TResult Function(DependenteStateType value) updateTasksState,
    required TResult Function(Task value) addTask,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updateAddress(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateName,
    TResult? Function(String value)? updateZipCode,
    TResult? Function(String value)? updateState,
    TResult? Function(String value)? updateCity,
    TResult? Function(String value)? updateAddress,
    TResult? Function(DependenteStateType value)? updateTasksState,
    TResult? Function(Task value)? addTask,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updateAddress?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateName,
    TResult Function(String value)? updateZipCode,
    TResult Function(String value)? updateState,
    TResult Function(String value)? updateCity,
    TResult Function(String value)? updateAddress,
    TResult Function(DependenteStateType value)? updateTasksState,
    TResult Function(Task value)? addTask,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditEventLoad value) load,
    required TResult Function(ProjectEditEventUpdateName value) updateName,
    required TResult Function(ProjectEditEventUpdateZipCode value)
        updateZipCode,
    required TResult Function(ProjectEditEventUpdateState value) updateState,
    required TResult Function(ProjectEditEventUpdateCity value) updateCity,
    required TResult Function(ProjectEditEventUpdateAddress value)
        updateAddress,
    required TResult Function(ProjectEditEventUpdateTasksState value)
        updateTasksState,
    required TResult Function(ProjectEditEventAddTask value) addTask,
    required TResult Function(ProjectEditEventSave value) save,
  }) {
    return updateAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditEventLoad value)? load,
    TResult? Function(ProjectEditEventUpdateName value)? updateName,
    TResult? Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult? Function(ProjectEditEventUpdateState value)? updateState,
    TResult? Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult? Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult? Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult? Function(ProjectEditEventAddTask value)? addTask,
    TResult? Function(ProjectEditEventSave value)? save,
  }) {
    return updateAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditEventLoad value)? load,
    TResult Function(ProjectEditEventUpdateName value)? updateName,
    TResult Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult Function(ProjectEditEventUpdateState value)? updateState,
    TResult Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult Function(ProjectEditEventAddTask value)? addTask,
    TResult Function(ProjectEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(this);
    }
    return orElse();
  }
}

abstract class ProjectEditEventUpdateAddress implements ProjectEditEvent {
  const factory ProjectEditEventUpdateAddress({required final String value}) =
      _$ProjectEditEventUpdateAddressImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ProjectEditEventUpdateAddressImplCopyWith<
          _$ProjectEditEventUpdateAddressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectEditEventUpdateTasksStateImplCopyWith<$Res> {
  factory _$$ProjectEditEventUpdateTasksStateImplCopyWith(
          _$ProjectEditEventUpdateTasksStateImpl value,
          $Res Function(_$ProjectEditEventUpdateTasksStateImpl) then) =
      __$$ProjectEditEventUpdateTasksStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DependenteStateType value});

  $DependenteStateTypeCopyWith<$Res> get value;
}

/// @nodoc
class __$$ProjectEditEventUpdateTasksStateImplCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res,
        _$ProjectEditEventUpdateTasksStateImpl>
    implements _$$ProjectEditEventUpdateTasksStateImplCopyWith<$Res> {
  __$$ProjectEditEventUpdateTasksStateImplCopyWithImpl(
      _$ProjectEditEventUpdateTasksStateImpl _value,
      $Res Function(_$ProjectEditEventUpdateTasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ProjectEditEventUpdateTasksStateImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DependenteStateType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenteStateTypeCopyWith<$Res> get value {
    return $DependenteStateTypeCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$ProjectEditEventUpdateTasksStateImpl
    implements ProjectEditEventUpdateTasksState {
  const _$ProjectEditEventUpdateTasksStateImpl({required this.value});

  @override
  final DependenteStateType value;

  @override
  String toString() {
    return 'ProjectEditEvent.updateTasksState(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditEventUpdateTasksStateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEditEventUpdateTasksStateImplCopyWith<
          _$ProjectEditEventUpdateTasksStateImpl>
      get copyWith => __$$ProjectEditEventUpdateTasksStateImplCopyWithImpl<
          _$ProjectEditEventUpdateTasksStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateName,
    required TResult Function(String value) updateZipCode,
    required TResult Function(String value) updateState,
    required TResult Function(String value) updateCity,
    required TResult Function(String value) updateAddress,
    required TResult Function(DependenteStateType value) updateTasksState,
    required TResult Function(Task value) addTask,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updateTasksState(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateName,
    TResult? Function(String value)? updateZipCode,
    TResult? Function(String value)? updateState,
    TResult? Function(String value)? updateCity,
    TResult? Function(String value)? updateAddress,
    TResult? Function(DependenteStateType value)? updateTasksState,
    TResult? Function(Task value)? addTask,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updateTasksState?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateName,
    TResult Function(String value)? updateZipCode,
    TResult Function(String value)? updateState,
    TResult Function(String value)? updateCity,
    TResult Function(String value)? updateAddress,
    TResult Function(DependenteStateType value)? updateTasksState,
    TResult Function(Task value)? addTask,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updateTasksState != null) {
      return updateTasksState(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditEventLoad value) load,
    required TResult Function(ProjectEditEventUpdateName value) updateName,
    required TResult Function(ProjectEditEventUpdateZipCode value)
        updateZipCode,
    required TResult Function(ProjectEditEventUpdateState value) updateState,
    required TResult Function(ProjectEditEventUpdateCity value) updateCity,
    required TResult Function(ProjectEditEventUpdateAddress value)
        updateAddress,
    required TResult Function(ProjectEditEventUpdateTasksState value)
        updateTasksState,
    required TResult Function(ProjectEditEventAddTask value) addTask,
    required TResult Function(ProjectEditEventSave value) save,
  }) {
    return updateTasksState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditEventLoad value)? load,
    TResult? Function(ProjectEditEventUpdateName value)? updateName,
    TResult? Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult? Function(ProjectEditEventUpdateState value)? updateState,
    TResult? Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult? Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult? Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult? Function(ProjectEditEventAddTask value)? addTask,
    TResult? Function(ProjectEditEventSave value)? save,
  }) {
    return updateTasksState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditEventLoad value)? load,
    TResult Function(ProjectEditEventUpdateName value)? updateName,
    TResult Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult Function(ProjectEditEventUpdateState value)? updateState,
    TResult Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult Function(ProjectEditEventAddTask value)? addTask,
    TResult Function(ProjectEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (updateTasksState != null) {
      return updateTasksState(this);
    }
    return orElse();
  }
}

abstract class ProjectEditEventUpdateTasksState implements ProjectEditEvent {
  const factory ProjectEditEventUpdateTasksState(
          {required final DependenteStateType value}) =
      _$ProjectEditEventUpdateTasksStateImpl;

  DependenteStateType get value;
  @JsonKey(ignore: true)
  _$$ProjectEditEventUpdateTasksStateImplCopyWith<
          _$ProjectEditEventUpdateTasksStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectEditEventAddTaskImplCopyWith<$Res> {
  factory _$$ProjectEditEventAddTaskImplCopyWith(
          _$ProjectEditEventAddTaskImpl value,
          $Res Function(_$ProjectEditEventAddTaskImpl) then) =
      __$$ProjectEditEventAddTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task value});

  $TaskCopyWith<$Res> get value;
}

/// @nodoc
class __$$ProjectEditEventAddTaskImplCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res, _$ProjectEditEventAddTaskImpl>
    implements _$$ProjectEditEventAddTaskImplCopyWith<$Res> {
  __$$ProjectEditEventAddTaskImplCopyWithImpl(
      _$ProjectEditEventAddTaskImpl _value,
      $Res Function(_$ProjectEditEventAddTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ProjectEditEventAddTaskImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get value {
    return $TaskCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$ProjectEditEventAddTaskImpl implements ProjectEditEventAddTask {
  const _$ProjectEditEventAddTaskImpl({required this.value});

  @override
  final Task value;

  @override
  String toString() {
    return 'ProjectEditEvent.addTask(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditEventAddTaskImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEditEventAddTaskImplCopyWith<_$ProjectEditEventAddTaskImpl>
      get copyWith => __$$ProjectEditEventAddTaskImplCopyWithImpl<
          _$ProjectEditEventAddTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateName,
    required TResult Function(String value) updateZipCode,
    required TResult Function(String value) updateState,
    required TResult Function(String value) updateCity,
    required TResult Function(String value) updateAddress,
    required TResult Function(DependenteStateType value) updateTasksState,
    required TResult Function(Task value) addTask,
    required TResult Function(VoidCallback callback) save,
  }) {
    return addTask(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateName,
    TResult? Function(String value)? updateZipCode,
    TResult? Function(String value)? updateState,
    TResult? Function(String value)? updateCity,
    TResult? Function(String value)? updateAddress,
    TResult? Function(DependenteStateType value)? updateTasksState,
    TResult? Function(Task value)? addTask,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return addTask?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateName,
    TResult Function(String value)? updateZipCode,
    TResult Function(String value)? updateState,
    TResult Function(String value)? updateCity,
    TResult Function(String value)? updateAddress,
    TResult Function(DependenteStateType value)? updateTasksState,
    TResult Function(Task value)? addTask,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditEventLoad value) load,
    required TResult Function(ProjectEditEventUpdateName value) updateName,
    required TResult Function(ProjectEditEventUpdateZipCode value)
        updateZipCode,
    required TResult Function(ProjectEditEventUpdateState value) updateState,
    required TResult Function(ProjectEditEventUpdateCity value) updateCity,
    required TResult Function(ProjectEditEventUpdateAddress value)
        updateAddress,
    required TResult Function(ProjectEditEventUpdateTasksState value)
        updateTasksState,
    required TResult Function(ProjectEditEventAddTask value) addTask,
    required TResult Function(ProjectEditEventSave value) save,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditEventLoad value)? load,
    TResult? Function(ProjectEditEventUpdateName value)? updateName,
    TResult? Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult? Function(ProjectEditEventUpdateState value)? updateState,
    TResult? Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult? Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult? Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult? Function(ProjectEditEventAddTask value)? addTask,
    TResult? Function(ProjectEditEventSave value)? save,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditEventLoad value)? load,
    TResult Function(ProjectEditEventUpdateName value)? updateName,
    TResult Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult Function(ProjectEditEventUpdateState value)? updateState,
    TResult Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult Function(ProjectEditEventAddTask value)? addTask,
    TResult Function(ProjectEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class ProjectEditEventAddTask implements ProjectEditEvent {
  const factory ProjectEditEventAddTask({required final Task value}) =
      _$ProjectEditEventAddTaskImpl;

  Task get value;
  @JsonKey(ignore: true)
  _$$ProjectEditEventAddTaskImplCopyWith<_$ProjectEditEventAddTaskImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectEditEventSaveImplCopyWith<$Res> {
  factory _$$ProjectEditEventSaveImplCopyWith(_$ProjectEditEventSaveImpl value,
          $Res Function(_$ProjectEditEventSaveImpl) then) =
      __$$ProjectEditEventSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback callback});
}

/// @nodoc
class __$$ProjectEditEventSaveImplCopyWithImpl<$Res>
    extends _$ProjectEditEventCopyWithImpl<$Res, _$ProjectEditEventSaveImpl>
    implements _$$ProjectEditEventSaveImplCopyWith<$Res> {
  __$$ProjectEditEventSaveImplCopyWithImpl(_$ProjectEditEventSaveImpl _value,
      $Res Function(_$ProjectEditEventSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$ProjectEditEventSaveImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$ProjectEditEventSaveImpl implements ProjectEditEventSave {
  const _$ProjectEditEventSaveImpl({required this.callback});

  @override
  final VoidCallback callback;

  @override
  String toString() {
    return 'ProjectEditEvent.save(callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditEventSaveImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEditEventSaveImplCopyWith<_$ProjectEditEventSaveImpl>
      get copyWith =>
          __$$ProjectEditEventSaveImplCopyWithImpl<_$ProjectEditEventSaveImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateName,
    required TResult Function(String value) updateZipCode,
    required TResult Function(String value) updateState,
    required TResult Function(String value) updateCity,
    required TResult Function(String value) updateAddress,
    required TResult Function(DependenteStateType value) updateTasksState,
    required TResult Function(Task value) addTask,
    required TResult Function(VoidCallback callback) save,
  }) {
    return save(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateName,
    TResult? Function(String value)? updateZipCode,
    TResult? Function(String value)? updateState,
    TResult? Function(String value)? updateCity,
    TResult? Function(String value)? updateAddress,
    TResult? Function(DependenteStateType value)? updateTasksState,
    TResult? Function(Task value)? addTask,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return save?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateName,
    TResult Function(String value)? updateZipCode,
    TResult Function(String value)? updateState,
    TResult Function(String value)? updateCity,
    TResult Function(String value)? updateAddress,
    TResult Function(DependenteStateType value)? updateTasksState,
    TResult Function(Task value)? addTask,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditEventLoad value) load,
    required TResult Function(ProjectEditEventUpdateName value) updateName,
    required TResult Function(ProjectEditEventUpdateZipCode value)
        updateZipCode,
    required TResult Function(ProjectEditEventUpdateState value) updateState,
    required TResult Function(ProjectEditEventUpdateCity value) updateCity,
    required TResult Function(ProjectEditEventUpdateAddress value)
        updateAddress,
    required TResult Function(ProjectEditEventUpdateTasksState value)
        updateTasksState,
    required TResult Function(ProjectEditEventAddTask value) addTask,
    required TResult Function(ProjectEditEventSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditEventLoad value)? load,
    TResult? Function(ProjectEditEventUpdateName value)? updateName,
    TResult? Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult? Function(ProjectEditEventUpdateState value)? updateState,
    TResult? Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult? Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult? Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult? Function(ProjectEditEventAddTask value)? addTask,
    TResult? Function(ProjectEditEventSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditEventLoad value)? load,
    TResult Function(ProjectEditEventUpdateName value)? updateName,
    TResult Function(ProjectEditEventUpdateZipCode value)? updateZipCode,
    TResult Function(ProjectEditEventUpdateState value)? updateState,
    TResult Function(ProjectEditEventUpdateCity value)? updateCity,
    TResult Function(ProjectEditEventUpdateAddress value)? updateAddress,
    TResult Function(ProjectEditEventUpdateTasksState value)? updateTasksState,
    TResult Function(ProjectEditEventAddTask value)? addTask,
    TResult Function(ProjectEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class ProjectEditEventSave implements ProjectEditEvent {
  const factory ProjectEditEventSave({required final VoidCallback callback}) =
      _$ProjectEditEventSaveImpl;

  VoidCallback get callback;
  @JsonKey(ignore: true)
  _$$ProjectEditEventSaveImplCopyWith<_$ProjectEditEventSaveImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, Project project, DependenteStateType tasksState)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            CrudType type, Project project, DependenteStateType tasksState)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            CrudType type, Project project, DependenteStateType tasksState)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditStateEmpty value) empty,
    required TResult Function(ProjectEditStateLoading value) loading,
    required TResult Function(ProjectEditStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditStateEmpty value)? empty,
    TResult? Function(ProjectEditStateLoading value)? loading,
    TResult? Function(ProjectEditStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditStateEmpty value)? empty,
    TResult Function(ProjectEditStateLoading value)? loading,
    TResult Function(ProjectEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEditStateCopyWith<$Res> {
  factory $ProjectEditStateCopyWith(
          ProjectEditState value, $Res Function(ProjectEditState) then) =
      _$ProjectEditStateCopyWithImpl<$Res, ProjectEditState>;
}

/// @nodoc
class _$ProjectEditStateCopyWithImpl<$Res, $Val extends ProjectEditState>
    implements $ProjectEditStateCopyWith<$Res> {
  _$ProjectEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectEditStateEmptyImplCopyWith<$Res> {
  factory _$$ProjectEditStateEmptyImplCopyWith(
          _$ProjectEditStateEmptyImpl value,
          $Res Function(_$ProjectEditStateEmptyImpl) then) =
      __$$ProjectEditStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectEditStateEmptyImplCopyWithImpl<$Res>
    extends _$ProjectEditStateCopyWithImpl<$Res, _$ProjectEditStateEmptyImpl>
    implements _$$ProjectEditStateEmptyImplCopyWith<$Res> {
  __$$ProjectEditStateEmptyImplCopyWithImpl(_$ProjectEditStateEmptyImpl _value,
      $Res Function(_$ProjectEditStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectEditStateEmptyImpl implements ProjectEditStateEmpty {
  const _$ProjectEditStateEmptyImpl();

  @override
  String toString() {
    return 'ProjectEditState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, Project project, DependenteStateType tasksState)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            CrudType type, Project project, DependenteStateType tasksState)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            CrudType type, Project project, DependenteStateType tasksState)?
        loaded,
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
    required TResult Function(ProjectEditStateEmpty value) empty,
    required TResult Function(ProjectEditStateLoading value) loading,
    required TResult Function(ProjectEditStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditStateEmpty value)? empty,
    TResult? Function(ProjectEditStateLoading value)? loading,
    TResult? Function(ProjectEditStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditStateEmpty value)? empty,
    TResult Function(ProjectEditStateLoading value)? loading,
    TResult Function(ProjectEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ProjectEditStateEmpty implements ProjectEditState {
  const factory ProjectEditStateEmpty() = _$ProjectEditStateEmptyImpl;
}

/// @nodoc
abstract class _$$ProjectEditStateLoadingImplCopyWith<$Res> {
  factory _$$ProjectEditStateLoadingImplCopyWith(
          _$ProjectEditStateLoadingImpl value,
          $Res Function(_$ProjectEditStateLoadingImpl) then) =
      __$$ProjectEditStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectEditStateLoadingImplCopyWithImpl<$Res>
    extends _$ProjectEditStateCopyWithImpl<$Res, _$ProjectEditStateLoadingImpl>
    implements _$$ProjectEditStateLoadingImplCopyWith<$Res> {
  __$$ProjectEditStateLoadingImplCopyWithImpl(
      _$ProjectEditStateLoadingImpl _value,
      $Res Function(_$ProjectEditStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectEditStateLoadingImpl implements ProjectEditStateLoading {
  const _$ProjectEditStateLoadingImpl();

  @override
  String toString() {
    return 'ProjectEditState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, Project project, DependenteStateType tasksState)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            CrudType type, Project project, DependenteStateType tasksState)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            CrudType type, Project project, DependenteStateType tasksState)?
        loaded,
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
    required TResult Function(ProjectEditStateEmpty value) empty,
    required TResult Function(ProjectEditStateLoading value) loading,
    required TResult Function(ProjectEditStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditStateEmpty value)? empty,
    TResult? Function(ProjectEditStateLoading value)? loading,
    TResult? Function(ProjectEditStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditStateEmpty value)? empty,
    TResult Function(ProjectEditStateLoading value)? loading,
    TResult Function(ProjectEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProjectEditStateLoading implements ProjectEditState {
  const factory ProjectEditStateLoading() = _$ProjectEditStateLoadingImpl;
}

/// @nodoc
abstract class _$$ProjectEditStateLoadedImplCopyWith<$Res> {
  factory _$$ProjectEditStateLoadedImplCopyWith(
          _$ProjectEditStateLoadedImpl value,
          $Res Function(_$ProjectEditStateLoadedImpl) then) =
      __$$ProjectEditStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type, Project project, DependenteStateType tasksState});

  $CrudTypeCopyWith<$Res> get type;
  $ProjectCopyWith<$Res> get project;
  $DependenteStateTypeCopyWith<$Res> get tasksState;
}

/// @nodoc
class __$$ProjectEditStateLoadedImplCopyWithImpl<$Res>
    extends _$ProjectEditStateCopyWithImpl<$Res, _$ProjectEditStateLoadedImpl>
    implements _$$ProjectEditStateLoadedImplCopyWith<$Res> {
  __$$ProjectEditStateLoadedImplCopyWithImpl(
      _$ProjectEditStateLoadedImpl _value,
      $Res Function(_$ProjectEditStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? project = null,
    Object? tasksState = null,
  }) {
    return _then(_$ProjectEditStateLoadedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CrudType,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      tasksState: null == tasksState
          ? _value.tasksState
          : tasksState // ignore: cast_nullable_to_non_nullable
              as DependenteStateType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CrudTypeCopyWith<$Res> get type {
    return $CrudTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenteStateTypeCopyWith<$Res> get tasksState {
    return $DependenteStateTypeCopyWith<$Res>(_value.tasksState, (value) {
      return _then(_value.copyWith(tasksState: value));
    });
  }
}

/// @nodoc

class _$ProjectEditStateLoadedImpl implements ProjectEditStateLoaded {
  const _$ProjectEditStateLoadedImpl(
      {required this.type,
      required this.project,
      this.tasksState = const DependenteStateType.listing()});

  @override
  final CrudType type;
  @override
  final Project project;
  @override
  @JsonKey()
  final DependenteStateType tasksState;

  @override
  String toString() {
    return 'ProjectEditState.loaded(type: $type, project: $project, tasksState: $tasksState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditStateLoadedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.tasksState, tasksState) ||
                other.tasksState == tasksState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, project, tasksState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEditStateLoadedImplCopyWith<_$ProjectEditStateLoadedImpl>
      get copyWith => __$$ProjectEditStateLoadedImplCopyWithImpl<
          _$ProjectEditStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, Project project, DependenteStateType tasksState)
        loaded,
  }) {
    return loaded(type, project, tasksState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            CrudType type, Project project, DependenteStateType tasksState)?
        loaded,
  }) {
    return loaded?.call(type, project, tasksState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            CrudType type, Project project, DependenteStateType tasksState)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(type, project, tasksState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectEditStateEmpty value) empty,
    required TResult Function(ProjectEditStateLoading value) loading,
    required TResult Function(ProjectEditStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectEditStateEmpty value)? empty,
    TResult? Function(ProjectEditStateLoading value)? loading,
    TResult? Function(ProjectEditStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectEditStateEmpty value)? empty,
    TResult Function(ProjectEditStateLoading value)? loading,
    TResult Function(ProjectEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProjectEditStateLoaded implements ProjectEditState {
  const factory ProjectEditStateLoaded(
      {required final CrudType type,
      required final Project project,
      final DependenteStateType tasksState}) = _$ProjectEditStateLoadedImpl;

  CrudType get type;
  Project get project;
  DependenteStateType get tasksState;
  @JsonKey(ignore: true)
  _$$ProjectEditStateLoadedImplCopyWith<_$ProjectEditStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
