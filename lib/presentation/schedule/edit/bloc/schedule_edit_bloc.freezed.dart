// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(SchedulePeriodType value) changePeriodType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(SchedulePeriodType value)? changePeriodType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(SchedulePeriodType value)? changePeriodType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditEventLoad value) load,
    required TResult Function(ScheduleEditEventChangePeriodType value)
        changePeriodType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditEventLoad value)? load,
    TResult? Function(ScheduleEditEventChangePeriodType value)?
        changePeriodType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditEventLoad value)? load,
    TResult Function(ScheduleEditEventChangePeriodType value)? changePeriodType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEditEventCopyWith<$Res> {
  factory $ScheduleEditEventCopyWith(
          ScheduleEditEvent value, $Res Function(ScheduleEditEvent) then) =
      _$ScheduleEditEventCopyWithImpl<$Res, ScheduleEditEvent>;
}

/// @nodoc
class _$ScheduleEditEventCopyWithImpl<$Res, $Val extends ScheduleEditEvent>
    implements $ScheduleEditEventCopyWith<$Res> {
  _$ScheduleEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScheduleEditEventLoadImplCopyWith<$Res> {
  factory _$$ScheduleEditEventLoadImplCopyWith(
          _$ScheduleEditEventLoadImpl value,
          $Res Function(_$ScheduleEditEventLoadImpl) then) =
      __$$ScheduleEditEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type});

  $CrudTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$ScheduleEditEventLoadImplCopyWithImpl<$Res>
    extends _$ScheduleEditEventCopyWithImpl<$Res, _$ScheduleEditEventLoadImpl>
    implements _$$ScheduleEditEventLoadImplCopyWith<$Res> {
  __$$ScheduleEditEventLoadImplCopyWithImpl(_$ScheduleEditEventLoadImpl _value,
      $Res Function(_$ScheduleEditEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ScheduleEditEventLoadImpl(
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

class _$ScheduleEditEventLoadImpl implements ScheduleEditEventLoad {
  const _$ScheduleEditEventLoadImpl({required this.type});

  @override
  final CrudType type;

  @override
  String toString() {
    return 'ScheduleEditEvent.load(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditEventLoadImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEditEventLoadImplCopyWith<_$ScheduleEditEventLoadImpl>
      get copyWith => __$$ScheduleEditEventLoadImplCopyWithImpl<
          _$ScheduleEditEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(SchedulePeriodType value) changePeriodType,
  }) {
    return load(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(SchedulePeriodType value)? changePeriodType,
  }) {
    return load?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(SchedulePeriodType value)? changePeriodType,
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
    required TResult Function(ScheduleEditEventLoad value) load,
    required TResult Function(ScheduleEditEventChangePeriodType value)
        changePeriodType,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditEventLoad value)? load,
    TResult? Function(ScheduleEditEventChangePeriodType value)?
        changePeriodType,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditEventLoad value)? load,
    TResult Function(ScheduleEditEventChangePeriodType value)? changePeriodType,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditEventLoad implements ScheduleEditEvent {
  const factory ScheduleEditEventLoad({required final CrudType type}) =
      _$ScheduleEditEventLoadImpl;

  CrudType get type;
  @JsonKey(ignore: true)
  _$$ScheduleEditEventLoadImplCopyWith<_$ScheduleEditEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEditEventChangePeriodTypeImplCopyWith<$Res> {
  factory _$$ScheduleEditEventChangePeriodTypeImplCopyWith(
          _$ScheduleEditEventChangePeriodTypeImpl value,
          $Res Function(_$ScheduleEditEventChangePeriodTypeImpl) then) =
      __$$ScheduleEditEventChangePeriodTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SchedulePeriodType value});
}

/// @nodoc
class __$$ScheduleEditEventChangePeriodTypeImplCopyWithImpl<$Res>
    extends _$ScheduleEditEventCopyWithImpl<$Res,
        _$ScheduleEditEventChangePeriodTypeImpl>
    implements _$$ScheduleEditEventChangePeriodTypeImplCopyWith<$Res> {
  __$$ScheduleEditEventChangePeriodTypeImplCopyWithImpl(
      _$ScheduleEditEventChangePeriodTypeImpl _value,
      $Res Function(_$ScheduleEditEventChangePeriodTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ScheduleEditEventChangePeriodTypeImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as SchedulePeriodType,
    ));
  }
}

/// @nodoc

class _$ScheduleEditEventChangePeriodTypeImpl
    implements ScheduleEditEventChangePeriodType {
  const _$ScheduleEditEventChangePeriodTypeImpl({required this.value});

  @override
  final SchedulePeriodType value;

  @override
  String toString() {
    return 'ScheduleEditEvent.changePeriodType(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditEventChangePeriodTypeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEditEventChangePeriodTypeImplCopyWith<
          _$ScheduleEditEventChangePeriodTypeImpl>
      get copyWith => __$$ScheduleEditEventChangePeriodTypeImplCopyWithImpl<
          _$ScheduleEditEventChangePeriodTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(SchedulePeriodType value) changePeriodType,
  }) {
    return changePeriodType(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(SchedulePeriodType value)? changePeriodType,
  }) {
    return changePeriodType?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(SchedulePeriodType value)? changePeriodType,
    required TResult orElse(),
  }) {
    if (changePeriodType != null) {
      return changePeriodType(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditEventLoad value) load,
    required TResult Function(ScheduleEditEventChangePeriodType value)
        changePeriodType,
  }) {
    return changePeriodType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditEventLoad value)? load,
    TResult? Function(ScheduleEditEventChangePeriodType value)?
        changePeriodType,
  }) {
    return changePeriodType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditEventLoad value)? load,
    TResult Function(ScheduleEditEventChangePeriodType value)? changePeriodType,
    required TResult orElse(),
  }) {
    if (changePeriodType != null) {
      return changePeriodType(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditEventChangePeriodType implements ScheduleEditEvent {
  const factory ScheduleEditEventChangePeriodType(
          {required final SchedulePeriodType value}) =
      _$ScheduleEditEventChangePeriodTypeImpl;

  SchedulePeriodType get value;
  @JsonKey(ignore: true)
  _$$ScheduleEditEventChangePeriodTypeImplCopyWith<
          _$ScheduleEditEventChangePeriodTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            SchedulePeriodType periodType, List<Appointment> appointments)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            SchedulePeriodType periodType, List<Appointment> appointments)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            SchedulePeriodType periodType, List<Appointment> appointments)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditStateEmpty value) empty,
    required TResult Function(ScheduleEditStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditStateEmpty value)? empty,
    TResult? Function(ScheduleEditStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditStateEmpty value)? empty,
    TResult Function(ScheduleEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEditStateCopyWith<$Res> {
  factory $ScheduleEditStateCopyWith(
          ScheduleEditState value, $Res Function(ScheduleEditState) then) =
      _$ScheduleEditStateCopyWithImpl<$Res, ScheduleEditState>;
}

/// @nodoc
class _$ScheduleEditStateCopyWithImpl<$Res, $Val extends ScheduleEditState>
    implements $ScheduleEditStateCopyWith<$Res> {
  _$ScheduleEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScheduleEditStateEmptyImplCopyWith<$Res> {
  factory _$$ScheduleEditStateEmptyImplCopyWith(
          _$ScheduleEditStateEmptyImpl value,
          $Res Function(_$ScheduleEditStateEmptyImpl) then) =
      __$$ScheduleEditStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleEditStateEmptyImplCopyWithImpl<$Res>
    extends _$ScheduleEditStateCopyWithImpl<$Res, _$ScheduleEditStateEmptyImpl>
    implements _$$ScheduleEditStateEmptyImplCopyWith<$Res> {
  __$$ScheduleEditStateEmptyImplCopyWithImpl(
      _$ScheduleEditStateEmptyImpl _value,
      $Res Function(_$ScheduleEditStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScheduleEditStateEmptyImpl implements ScheduleEditStateEmpty {
  const _$ScheduleEditStateEmptyImpl();

  @override
  String toString() {
    return 'ScheduleEditState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            SchedulePeriodType periodType, List<Appointment> appointments)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            SchedulePeriodType periodType, List<Appointment> appointments)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            SchedulePeriodType periodType, List<Appointment> appointments)?
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
    required TResult Function(ScheduleEditStateEmpty value) empty,
    required TResult Function(ScheduleEditStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditStateEmpty value)? empty,
    TResult? Function(ScheduleEditStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditStateEmpty value)? empty,
    TResult Function(ScheduleEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditStateEmpty implements ScheduleEditState {
  const factory ScheduleEditStateEmpty() = _$ScheduleEditStateEmptyImpl;
}

/// @nodoc
abstract class _$$ScheduleEditStateLoadedImplCopyWith<$Res> {
  factory _$$ScheduleEditStateLoadedImplCopyWith(
          _$ScheduleEditStateLoadedImpl value,
          $Res Function(_$ScheduleEditStateLoadedImpl) then) =
      __$$ScheduleEditStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SchedulePeriodType periodType, List<Appointment> appointments});
}

/// @nodoc
class __$$ScheduleEditStateLoadedImplCopyWithImpl<$Res>
    extends _$ScheduleEditStateCopyWithImpl<$Res, _$ScheduleEditStateLoadedImpl>
    implements _$$ScheduleEditStateLoadedImplCopyWith<$Res> {
  __$$ScheduleEditStateLoadedImplCopyWithImpl(
      _$ScheduleEditStateLoadedImpl _value,
      $Res Function(_$ScheduleEditStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodType = null,
    Object? appointments = null,
  }) {
    return _then(_$ScheduleEditStateLoadedImpl(
      periodType: null == periodType
          ? _value.periodType
          : periodType // ignore: cast_nullable_to_non_nullable
              as SchedulePeriodType,
      appointments: null == appointments
          ? _value._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
    ));
  }
}

/// @nodoc

class _$ScheduleEditStateLoadedImpl implements ScheduleEditStateLoaded {
  const _$ScheduleEditStateLoadedImpl(
      {required this.periodType, required final List<Appointment> appointments})
      : _appointments = appointments;

  @override
  final SchedulePeriodType periodType;
  final List<Appointment> _appointments;
  @override
  List<Appointment> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  String toString() {
    return 'ScheduleEditState.loaded(periodType: $periodType, appointments: $appointments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditStateLoadedImpl &&
            (identical(other.periodType, periodType) ||
                other.periodType == periodType) &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, periodType,
      const DeepCollectionEquality().hash(_appointments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEditStateLoadedImplCopyWith<_$ScheduleEditStateLoadedImpl>
      get copyWith => __$$ScheduleEditStateLoadedImplCopyWithImpl<
          _$ScheduleEditStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            SchedulePeriodType periodType, List<Appointment> appointments)
        loaded,
  }) {
    return loaded(periodType, appointments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            SchedulePeriodType periodType, List<Appointment> appointments)?
        loaded,
  }) {
    return loaded?.call(periodType, appointments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            SchedulePeriodType periodType, List<Appointment> appointments)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(periodType, appointments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditStateEmpty value) empty,
    required TResult Function(ScheduleEditStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditStateEmpty value)? empty,
    TResult? Function(ScheduleEditStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditStateEmpty value)? empty,
    TResult Function(ScheduleEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditStateLoaded implements ScheduleEditState {
  const factory ScheduleEditStateLoaded(
          {required final SchedulePeriodType periodType,
          required final List<Appointment> appointments}) =
      _$ScheduleEditStateLoadedImpl;

  SchedulePeriodType get periodType;
  List<Appointment> get appointments;
  @JsonKey(ignore: true)
  _$$ScheduleEditStateLoadedImplCopyWith<_$ScheduleEditStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
