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
    required TResult Function(Appointment value) changeSelectedAppointment,
    required TResult Function(DateTime date) addDate,
    required TResult Function(Appointment value) remodeAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(SchedulePeriodType value)? changePeriodType,
    TResult? Function(Appointment value)? changeSelectedAppointment,
    TResult? Function(DateTime date)? addDate,
    TResult? Function(Appointment value)? remodeAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(SchedulePeriodType value)? changePeriodType,
    TResult Function(Appointment value)? changeSelectedAppointment,
    TResult Function(DateTime date)? addDate,
    TResult Function(Appointment value)? remodeAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditEventLoad value) load,
    required TResult Function(ScheduleEditEventChangePeriodType value)
        changePeriodType,
    required TResult Function(ScheduleEditEventChangeSelectedAppointment value)
        changeSelectedAppointment,
    required TResult Function(ScheduleEditEventAddDate value) addDate,
    required TResult Function(ScheduleEditEventRemoveAppointment value)
        remodeAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditEventLoad value)? load,
    TResult? Function(ScheduleEditEventChangePeriodType value)?
        changePeriodType,
    TResult? Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult? Function(ScheduleEditEventAddDate value)? addDate,
    TResult? Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditEventLoad value)? load,
    TResult Function(ScheduleEditEventChangePeriodType value)? changePeriodType,
    TResult Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult Function(ScheduleEditEventAddDate value)? addDate,
    TResult Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
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
    required TResult Function(Appointment value) changeSelectedAppointment,
    required TResult Function(DateTime date) addDate,
    required TResult Function(Appointment value) remodeAppointment,
  }) {
    return load(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(SchedulePeriodType value)? changePeriodType,
    TResult? Function(Appointment value)? changeSelectedAppointment,
    TResult? Function(DateTime date)? addDate,
    TResult? Function(Appointment value)? remodeAppointment,
  }) {
    return load?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(SchedulePeriodType value)? changePeriodType,
    TResult Function(Appointment value)? changeSelectedAppointment,
    TResult Function(DateTime date)? addDate,
    TResult Function(Appointment value)? remodeAppointment,
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
    required TResult Function(ScheduleEditEventChangeSelectedAppointment value)
        changeSelectedAppointment,
    required TResult Function(ScheduleEditEventAddDate value) addDate,
    required TResult Function(ScheduleEditEventRemoveAppointment value)
        remodeAppointment,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditEventLoad value)? load,
    TResult? Function(ScheduleEditEventChangePeriodType value)?
        changePeriodType,
    TResult? Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult? Function(ScheduleEditEventAddDate value)? addDate,
    TResult? Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditEventLoad value)? load,
    TResult Function(ScheduleEditEventChangePeriodType value)? changePeriodType,
    TResult Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult Function(ScheduleEditEventAddDate value)? addDate,
    TResult Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
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
    required TResult Function(Appointment value) changeSelectedAppointment,
    required TResult Function(DateTime date) addDate,
    required TResult Function(Appointment value) remodeAppointment,
  }) {
    return changePeriodType(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(SchedulePeriodType value)? changePeriodType,
    TResult? Function(Appointment value)? changeSelectedAppointment,
    TResult? Function(DateTime date)? addDate,
    TResult? Function(Appointment value)? remodeAppointment,
  }) {
    return changePeriodType?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(SchedulePeriodType value)? changePeriodType,
    TResult Function(Appointment value)? changeSelectedAppointment,
    TResult Function(DateTime date)? addDate,
    TResult Function(Appointment value)? remodeAppointment,
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
    required TResult Function(ScheduleEditEventChangeSelectedAppointment value)
        changeSelectedAppointment,
    required TResult Function(ScheduleEditEventAddDate value) addDate,
    required TResult Function(ScheduleEditEventRemoveAppointment value)
        remodeAppointment,
  }) {
    return changePeriodType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditEventLoad value)? load,
    TResult? Function(ScheduleEditEventChangePeriodType value)?
        changePeriodType,
    TResult? Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult? Function(ScheduleEditEventAddDate value)? addDate,
    TResult? Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
  }) {
    return changePeriodType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditEventLoad value)? load,
    TResult Function(ScheduleEditEventChangePeriodType value)? changePeriodType,
    TResult Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult Function(ScheduleEditEventAddDate value)? addDate,
    TResult Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
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
abstract class _$$ScheduleEditEventChangeSelectedAppointmentImplCopyWith<$Res> {
  factory _$$ScheduleEditEventChangeSelectedAppointmentImplCopyWith(
          _$ScheduleEditEventChangeSelectedAppointmentImpl value,
          $Res Function(_$ScheduleEditEventChangeSelectedAppointmentImpl)
              then) =
      __$$ScheduleEditEventChangeSelectedAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Appointment value});

  $AppointmentCopyWith<$Res> get value;
}

/// @nodoc
class __$$ScheduleEditEventChangeSelectedAppointmentImplCopyWithImpl<$Res>
    extends _$ScheduleEditEventCopyWithImpl<$Res,
        _$ScheduleEditEventChangeSelectedAppointmentImpl>
    implements _$$ScheduleEditEventChangeSelectedAppointmentImplCopyWith<$Res> {
  __$$ScheduleEditEventChangeSelectedAppointmentImplCopyWithImpl(
      _$ScheduleEditEventChangeSelectedAppointmentImpl _value,
      $Res Function(_$ScheduleEditEventChangeSelectedAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ScheduleEditEventChangeSelectedAppointmentImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res> get value {
    return $AppointmentCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$ScheduleEditEventChangeSelectedAppointmentImpl
    implements ScheduleEditEventChangeSelectedAppointment {
  const _$ScheduleEditEventChangeSelectedAppointmentImpl({required this.value});

  @override
  final Appointment value;

  @override
  String toString() {
    return 'ScheduleEditEvent.changeSelectedAppointment(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditEventChangeSelectedAppointmentImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEditEventChangeSelectedAppointmentImplCopyWith<
          _$ScheduleEditEventChangeSelectedAppointmentImpl>
      get copyWith =>
          __$$ScheduleEditEventChangeSelectedAppointmentImplCopyWithImpl<
                  _$ScheduleEditEventChangeSelectedAppointmentImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(SchedulePeriodType value) changePeriodType,
    required TResult Function(Appointment value) changeSelectedAppointment,
    required TResult Function(DateTime date) addDate,
    required TResult Function(Appointment value) remodeAppointment,
  }) {
    return changeSelectedAppointment(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(SchedulePeriodType value)? changePeriodType,
    TResult? Function(Appointment value)? changeSelectedAppointment,
    TResult? Function(DateTime date)? addDate,
    TResult? Function(Appointment value)? remodeAppointment,
  }) {
    return changeSelectedAppointment?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(SchedulePeriodType value)? changePeriodType,
    TResult Function(Appointment value)? changeSelectedAppointment,
    TResult Function(DateTime date)? addDate,
    TResult Function(Appointment value)? remodeAppointment,
    required TResult orElse(),
  }) {
    if (changeSelectedAppointment != null) {
      return changeSelectedAppointment(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditEventLoad value) load,
    required TResult Function(ScheduleEditEventChangePeriodType value)
        changePeriodType,
    required TResult Function(ScheduleEditEventChangeSelectedAppointment value)
        changeSelectedAppointment,
    required TResult Function(ScheduleEditEventAddDate value) addDate,
    required TResult Function(ScheduleEditEventRemoveAppointment value)
        remodeAppointment,
  }) {
    return changeSelectedAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditEventLoad value)? load,
    TResult? Function(ScheduleEditEventChangePeriodType value)?
        changePeriodType,
    TResult? Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult? Function(ScheduleEditEventAddDate value)? addDate,
    TResult? Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
  }) {
    return changeSelectedAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditEventLoad value)? load,
    TResult Function(ScheduleEditEventChangePeriodType value)? changePeriodType,
    TResult Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult Function(ScheduleEditEventAddDate value)? addDate,
    TResult Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
    required TResult orElse(),
  }) {
    if (changeSelectedAppointment != null) {
      return changeSelectedAppointment(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditEventChangeSelectedAppointment
    implements ScheduleEditEvent {
  const factory ScheduleEditEventChangeSelectedAppointment(
          {required final Appointment value}) =
      _$ScheduleEditEventChangeSelectedAppointmentImpl;

  Appointment get value;
  @JsonKey(ignore: true)
  _$$ScheduleEditEventChangeSelectedAppointmentImplCopyWith<
          _$ScheduleEditEventChangeSelectedAppointmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEditEventAddDateImplCopyWith<$Res> {
  factory _$$ScheduleEditEventAddDateImplCopyWith(
          _$ScheduleEditEventAddDateImpl value,
          $Res Function(_$ScheduleEditEventAddDateImpl) then) =
      __$$ScheduleEditEventAddDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$ScheduleEditEventAddDateImplCopyWithImpl<$Res>
    extends _$ScheduleEditEventCopyWithImpl<$Res,
        _$ScheduleEditEventAddDateImpl>
    implements _$$ScheduleEditEventAddDateImplCopyWith<$Res> {
  __$$ScheduleEditEventAddDateImplCopyWithImpl(
      _$ScheduleEditEventAddDateImpl _value,
      $Res Function(_$ScheduleEditEventAddDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$ScheduleEditEventAddDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ScheduleEditEventAddDateImpl implements ScheduleEditEventAddDate {
  const _$ScheduleEditEventAddDateImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ScheduleEditEvent.addDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditEventAddDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEditEventAddDateImplCopyWith<_$ScheduleEditEventAddDateImpl>
      get copyWith => __$$ScheduleEditEventAddDateImplCopyWithImpl<
          _$ScheduleEditEventAddDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(SchedulePeriodType value) changePeriodType,
    required TResult Function(Appointment value) changeSelectedAppointment,
    required TResult Function(DateTime date) addDate,
    required TResult Function(Appointment value) remodeAppointment,
  }) {
    return addDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(SchedulePeriodType value)? changePeriodType,
    TResult? Function(Appointment value)? changeSelectedAppointment,
    TResult? Function(DateTime date)? addDate,
    TResult? Function(Appointment value)? remodeAppointment,
  }) {
    return addDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(SchedulePeriodType value)? changePeriodType,
    TResult Function(Appointment value)? changeSelectedAppointment,
    TResult Function(DateTime date)? addDate,
    TResult Function(Appointment value)? remodeAppointment,
    required TResult orElse(),
  }) {
    if (addDate != null) {
      return addDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditEventLoad value) load,
    required TResult Function(ScheduleEditEventChangePeriodType value)
        changePeriodType,
    required TResult Function(ScheduleEditEventChangeSelectedAppointment value)
        changeSelectedAppointment,
    required TResult Function(ScheduleEditEventAddDate value) addDate,
    required TResult Function(ScheduleEditEventRemoveAppointment value)
        remodeAppointment,
  }) {
    return addDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditEventLoad value)? load,
    TResult? Function(ScheduleEditEventChangePeriodType value)?
        changePeriodType,
    TResult? Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult? Function(ScheduleEditEventAddDate value)? addDate,
    TResult? Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
  }) {
    return addDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditEventLoad value)? load,
    TResult Function(ScheduleEditEventChangePeriodType value)? changePeriodType,
    TResult Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult Function(ScheduleEditEventAddDate value)? addDate,
    TResult Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
    required TResult orElse(),
  }) {
    if (addDate != null) {
      return addDate(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditEventAddDate implements ScheduleEditEvent {
  const factory ScheduleEditEventAddDate({required final DateTime date}) =
      _$ScheduleEditEventAddDateImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$ScheduleEditEventAddDateImplCopyWith<_$ScheduleEditEventAddDateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEditEventRemoveAppointmentImplCopyWith<$Res> {
  factory _$$ScheduleEditEventRemoveAppointmentImplCopyWith(
          _$ScheduleEditEventRemoveAppointmentImpl value,
          $Res Function(_$ScheduleEditEventRemoveAppointmentImpl) then) =
      __$$ScheduleEditEventRemoveAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Appointment value});

  $AppointmentCopyWith<$Res> get value;
}

/// @nodoc
class __$$ScheduleEditEventRemoveAppointmentImplCopyWithImpl<$Res>
    extends _$ScheduleEditEventCopyWithImpl<$Res,
        _$ScheduleEditEventRemoveAppointmentImpl>
    implements _$$ScheduleEditEventRemoveAppointmentImplCopyWith<$Res> {
  __$$ScheduleEditEventRemoveAppointmentImplCopyWithImpl(
      _$ScheduleEditEventRemoveAppointmentImpl _value,
      $Res Function(_$ScheduleEditEventRemoveAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ScheduleEditEventRemoveAppointmentImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res> get value {
    return $AppointmentCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$ScheduleEditEventRemoveAppointmentImpl
    implements ScheduleEditEventRemoveAppointment {
  const _$ScheduleEditEventRemoveAppointmentImpl({required this.value});

  @override
  final Appointment value;

  @override
  String toString() {
    return 'ScheduleEditEvent.remodeAppointment(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditEventRemoveAppointmentImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEditEventRemoveAppointmentImplCopyWith<
          _$ScheduleEditEventRemoveAppointmentImpl>
      get copyWith => __$$ScheduleEditEventRemoveAppointmentImplCopyWithImpl<
          _$ScheduleEditEventRemoveAppointmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(SchedulePeriodType value) changePeriodType,
    required TResult Function(Appointment value) changeSelectedAppointment,
    required TResult Function(DateTime date) addDate,
    required TResult Function(Appointment value) remodeAppointment,
  }) {
    return remodeAppointment(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(SchedulePeriodType value)? changePeriodType,
    TResult? Function(Appointment value)? changeSelectedAppointment,
    TResult? Function(DateTime date)? addDate,
    TResult? Function(Appointment value)? remodeAppointment,
  }) {
    return remodeAppointment?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(SchedulePeriodType value)? changePeriodType,
    TResult Function(Appointment value)? changeSelectedAppointment,
    TResult Function(DateTime date)? addDate,
    TResult Function(Appointment value)? remodeAppointment,
    required TResult orElse(),
  }) {
    if (remodeAppointment != null) {
      return remodeAppointment(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditEventLoad value) load,
    required TResult Function(ScheduleEditEventChangePeriodType value)
        changePeriodType,
    required TResult Function(ScheduleEditEventChangeSelectedAppointment value)
        changeSelectedAppointment,
    required TResult Function(ScheduleEditEventAddDate value) addDate,
    required TResult Function(ScheduleEditEventRemoveAppointment value)
        remodeAppointment,
  }) {
    return remodeAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditEventLoad value)? load,
    TResult? Function(ScheduleEditEventChangePeriodType value)?
        changePeriodType,
    TResult? Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult? Function(ScheduleEditEventAddDate value)? addDate,
    TResult? Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
  }) {
    return remodeAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditEventLoad value)? load,
    TResult Function(ScheduleEditEventChangePeriodType value)? changePeriodType,
    TResult Function(ScheduleEditEventChangeSelectedAppointment value)?
        changeSelectedAppointment,
    TResult Function(ScheduleEditEventAddDate value)? addDate,
    TResult Function(ScheduleEditEventRemoveAppointment value)?
        remodeAppointment,
    required TResult orElse(),
  }) {
    if (remodeAppointment != null) {
      return remodeAppointment(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditEventRemoveAppointment implements ScheduleEditEvent {
  const factory ScheduleEditEventRemoveAppointment(
          {required final Appointment value}) =
      _$ScheduleEditEventRemoveAppointmentImpl;

  Appointment get value;
  @JsonKey(ignore: true)
  _$$ScheduleEditEventRemoveAppointmentImplCopyWith<
          _$ScheduleEditEventRemoveAppointmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(SchedulePeriodType periodType,
            List<Appointment> appointments, Appointment? selectedAppointment)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(SchedulePeriodType periodType,
            List<Appointment> appointments, Appointment? selectedAppointment)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(SchedulePeriodType periodType,
            List<Appointment> appointments, Appointment? selectedAppointment)?
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
    required TResult Function(SchedulePeriodType periodType,
            List<Appointment> appointments, Appointment? selectedAppointment)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(SchedulePeriodType periodType,
            List<Appointment> appointments, Appointment? selectedAppointment)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(SchedulePeriodType periodType,
            List<Appointment> appointments, Appointment? selectedAppointment)?
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
  $Res call(
      {SchedulePeriodType periodType,
      List<Appointment> appointments,
      Appointment? selectedAppointment});

  $AppointmentCopyWith<$Res>? get selectedAppointment;
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
    Object? selectedAppointment = freezed,
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
      selectedAppointment: freezed == selectedAppointment
          ? _value.selectedAppointment
          : selectedAppointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res>? get selectedAppointment {
    if (_value.selectedAppointment == null) {
      return null;
    }

    return $AppointmentCopyWith<$Res>(_value.selectedAppointment!, (value) {
      return _then(_value.copyWith(selectedAppointment: value));
    });
  }
}

/// @nodoc

class _$ScheduleEditStateLoadedImpl implements ScheduleEditStateLoaded {
  const _$ScheduleEditStateLoadedImpl(
      {required this.periodType,
      required final List<Appointment> appointments,
      this.selectedAppointment})
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
  final Appointment? selectedAppointment;

  @override
  String toString() {
    return 'ScheduleEditState.loaded(periodType: $periodType, appointments: $appointments, selectedAppointment: $selectedAppointment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditStateLoadedImpl &&
            (identical(other.periodType, periodType) ||
                other.periodType == periodType) &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments) &&
            (identical(other.selectedAppointment, selectedAppointment) ||
                other.selectedAppointment == selectedAppointment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, periodType,
      const DeepCollectionEquality().hash(_appointments), selectedAppointment);

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
    required TResult Function(SchedulePeriodType periodType,
            List<Appointment> appointments, Appointment? selectedAppointment)
        loaded,
  }) {
    return loaded(periodType, appointments, selectedAppointment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(SchedulePeriodType periodType,
            List<Appointment> appointments, Appointment? selectedAppointment)?
        loaded,
  }) {
    return loaded?.call(periodType, appointments, selectedAppointment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(SchedulePeriodType periodType,
            List<Appointment> appointments, Appointment? selectedAppointment)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(periodType, appointments, selectedAppointment);
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
      required final List<Appointment> appointments,
      final Appointment? selectedAppointment}) = _$ScheduleEditStateLoadedImpl;

  SchedulePeriodType get periodType;
  List<Appointment> get appointments;
  Appointment? get selectedAppointment;
  @JsonKey(ignore: true)
  _$$ScheduleEditStateLoadedImplCopyWith<_$ScheduleEditStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
