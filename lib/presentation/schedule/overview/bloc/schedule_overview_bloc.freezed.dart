// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleOverViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)
        load,
    required TResult Function(String appointmantId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        load,
    TResult? Function(String appointmantId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        load,
    TResult Function(String appointmantId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEOverViewVentLoad value) load,
    required TResult Function(ScheduleOverViewEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEOverViewVentLoad value)? load,
    TResult? Function(ScheduleOverViewEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEOverViewVentLoad value)? load,
    TResult Function(ScheduleOverViewEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleOverViewEventCopyWith<$Res> {
  factory $ScheduleOverViewEventCopyWith(ScheduleOverViewEvent value,
          $Res Function(ScheduleOverViewEvent) then) =
      _$ScheduleOverViewEventCopyWithImpl<$Res, ScheduleOverViewEvent>;
}

/// @nodoc
class _$ScheduleOverViewEventCopyWithImpl<$Res,
        $Val extends ScheduleOverViewEvent>
    implements $ScheduleOverViewEventCopyWith<$Res> {
  _$ScheduleOverViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScheduleEOverViewVentLoadImplCopyWith<$Res> {
  factory _$$ScheduleEOverViewVentLoadImplCopyWith(
          _$ScheduleEOverViewVentLoadImpl value,
          $Res Function(_$ScheduleEOverViewVentLoadImpl) then) =
      __$$ScheduleEOverViewVentLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate});
}

/// @nodoc
class __$$ScheduleEOverViewVentLoadImplCopyWithImpl<$Res>
    extends _$ScheduleOverViewEventCopyWithImpl<$Res,
        _$ScheduleEOverViewVentLoadImpl>
    implements _$$ScheduleEOverViewVentLoadImplCopyWith<$Res> {
  __$$ScheduleEOverViewVentLoadImplCopyWithImpl(
      _$ScheduleEOverViewVentLoadImpl _value,
      $Res Function(_$ScheduleEOverViewVentLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarView = null,
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$ScheduleEOverViewVentLoadImpl(
      calendarView: null == calendarView
          ? _value.calendarView
          : calendarView // ignore: cast_nullable_to_non_nullable
              as CalendarViewEnum,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ScheduleEOverViewVentLoadImpl
    with DiagnosticableTreeMixin
    implements ScheduleEOverViewVentLoad {
  const _$ScheduleEOverViewVentLoadImpl(
      {required this.calendarView,
      required this.fromDate,
      required this.toDate});

  @override
  final CalendarViewEnum calendarView;
  @override
  final DateTime fromDate;
  @override
  final DateTime toDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleOverViewEvent.load(calendarView: $calendarView, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleOverViewEvent.load'))
      ..add(DiagnosticsProperty('calendarView', calendarView))
      ..add(DiagnosticsProperty('fromDate', fromDate))
      ..add(DiagnosticsProperty('toDate', toDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEOverViewVentLoadImpl &&
            (identical(other.calendarView, calendarView) ||
                other.calendarView == calendarView) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calendarView, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEOverViewVentLoadImplCopyWith<_$ScheduleEOverViewVentLoadImpl>
      get copyWith => __$$ScheduleEOverViewVentLoadImplCopyWithImpl<
          _$ScheduleEOverViewVentLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)
        load,
    required TResult Function(String appointmantId) delete,
  }) {
    return load(calendarView, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        load,
    TResult? Function(String appointmantId)? delete,
  }) {
    return load?.call(calendarView, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        load,
    TResult Function(String appointmantId)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(calendarView, fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEOverViewVentLoad value) load,
    required TResult Function(ScheduleOverViewEventDelete value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEOverViewVentLoad value)? load,
    TResult? Function(ScheduleOverViewEventDelete value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEOverViewVentLoad value)? load,
    TResult Function(ScheduleOverViewEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ScheduleEOverViewVentLoad implements ScheduleOverViewEvent {
  const factory ScheduleEOverViewVentLoad(
      {required final CalendarViewEnum calendarView,
      required final DateTime fromDate,
      required final DateTime toDate}) = _$ScheduleEOverViewVentLoadImpl;

  CalendarViewEnum get calendarView;
  DateTime get fromDate;
  DateTime get toDate;
  @JsonKey(ignore: true)
  _$$ScheduleEOverViewVentLoadImplCopyWith<_$ScheduleEOverViewVentLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleOverViewEventDeleteImplCopyWith<$Res> {
  factory _$$ScheduleOverViewEventDeleteImplCopyWith(
          _$ScheduleOverViewEventDeleteImpl value,
          $Res Function(_$ScheduleOverViewEventDeleteImpl) then) =
      __$$ScheduleOverViewEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String appointmantId});
}

/// @nodoc
class __$$ScheduleOverViewEventDeleteImplCopyWithImpl<$Res>
    extends _$ScheduleOverViewEventCopyWithImpl<$Res,
        _$ScheduleOverViewEventDeleteImpl>
    implements _$$ScheduleOverViewEventDeleteImplCopyWith<$Res> {
  __$$ScheduleOverViewEventDeleteImplCopyWithImpl(
      _$ScheduleOverViewEventDeleteImpl _value,
      $Res Function(_$ScheduleOverViewEventDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmantId = null,
  }) {
    return _then(_$ScheduleOverViewEventDeleteImpl(
      appointmantId: null == appointmantId
          ? _value.appointmantId
          : appointmantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScheduleOverViewEventDeleteImpl
    with DiagnosticableTreeMixin
    implements ScheduleOverViewEventDelete {
  const _$ScheduleOverViewEventDeleteImpl({required this.appointmantId});

  @override
  final String appointmantId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleOverViewEvent.delete(appointmantId: $appointmantId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleOverViewEvent.delete'))
      ..add(DiagnosticsProperty('appointmantId', appointmantId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleOverViewEventDeleteImpl &&
            (identical(other.appointmantId, appointmantId) ||
                other.appointmantId == appointmantId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleOverViewEventDeleteImplCopyWith<_$ScheduleOverViewEventDeleteImpl>
      get copyWith => __$$ScheduleOverViewEventDeleteImplCopyWithImpl<
          _$ScheduleOverViewEventDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)
        load,
    required TResult Function(String appointmantId) delete,
  }) {
    return delete(appointmantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        load,
    TResult? Function(String appointmantId)? delete,
  }) {
    return delete?.call(appointmantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        load,
    TResult Function(String appointmantId)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(appointmantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEOverViewVentLoad value) load,
    required TResult Function(ScheduleOverViewEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEOverViewVentLoad value)? load,
    TResult? Function(ScheduleOverViewEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEOverViewVentLoad value)? load,
    TResult Function(ScheduleOverViewEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class ScheduleOverViewEventDelete implements ScheduleOverViewEvent {
  const factory ScheduleOverViewEventDelete(
          {required final String appointmantId}) =
      _$ScheduleOverViewEventDeleteImpl;

  String get appointmantId;
  @JsonKey(ignore: true)
  _$$ScheduleOverViewEventDeleteImplCopyWith<_$ScheduleOverViewEventDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleOverViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)
        loading,
    required TResult Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        loading,
    TResult? Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        loading,
    TResult Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleOverViewStateEmpty value) empty,
    required TResult Function(ScheduleOverViewStateLoading value) loading,
    required TResult Function(ScheduleOverViewStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleOverViewStateEmpty value)? empty,
    TResult? Function(ScheduleOverViewStateLoading value)? loading,
    TResult? Function(ScheduleOverViewStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleOverViewStateEmpty value)? empty,
    TResult Function(ScheduleOverViewStateLoading value)? loading,
    TResult Function(ScheduleOverViewStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleOverViewStateCopyWith<$Res> {
  factory $ScheduleOverViewStateCopyWith(ScheduleOverViewState value,
          $Res Function(ScheduleOverViewState) then) =
      _$ScheduleOverViewStateCopyWithImpl<$Res, ScheduleOverViewState>;
}

/// @nodoc
class _$ScheduleOverViewStateCopyWithImpl<$Res,
        $Val extends ScheduleOverViewState>
    implements $ScheduleOverViewStateCopyWith<$Res> {
  _$ScheduleOverViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScheduleOverViewStateEmptyImplCopyWith<$Res> {
  factory _$$ScheduleOverViewStateEmptyImplCopyWith(
          _$ScheduleOverViewStateEmptyImpl value,
          $Res Function(_$ScheduleOverViewStateEmptyImpl) then) =
      __$$ScheduleOverViewStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleOverViewStateEmptyImplCopyWithImpl<$Res>
    extends _$ScheduleOverViewStateCopyWithImpl<$Res,
        _$ScheduleOverViewStateEmptyImpl>
    implements _$$ScheduleOverViewStateEmptyImplCopyWith<$Res> {
  __$$ScheduleOverViewStateEmptyImplCopyWithImpl(
      _$ScheduleOverViewStateEmptyImpl _value,
      $Res Function(_$ScheduleOverViewStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScheduleOverViewStateEmptyImpl
    with DiagnosticableTreeMixin
    implements ScheduleOverViewStateEmpty {
  const _$ScheduleOverViewStateEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleOverViewState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ScheduleOverViewState.empty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleOverViewStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)
        loading,
    required TResult Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        loading,
    TResult? Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        loading,
    TResult Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)?
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
    required TResult Function(ScheduleOverViewStateEmpty value) empty,
    required TResult Function(ScheduleOverViewStateLoading value) loading,
    required TResult Function(ScheduleOverViewStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleOverViewStateEmpty value)? empty,
    TResult? Function(ScheduleOverViewStateLoading value)? loading,
    TResult? Function(ScheduleOverViewStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleOverViewStateEmpty value)? empty,
    TResult Function(ScheduleOverViewStateLoading value)? loading,
    TResult Function(ScheduleOverViewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ScheduleOverViewStateEmpty implements ScheduleOverViewState {
  const factory ScheduleOverViewStateEmpty() = _$ScheduleOverViewStateEmptyImpl;
}

/// @nodoc
abstract class _$$ScheduleOverViewStateLoadingImplCopyWith<$Res> {
  factory _$$ScheduleOverViewStateLoadingImplCopyWith(
          _$ScheduleOverViewStateLoadingImpl value,
          $Res Function(_$ScheduleOverViewStateLoadingImpl) then) =
      __$$ScheduleOverViewStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate});
}

/// @nodoc
class __$$ScheduleOverViewStateLoadingImplCopyWithImpl<$Res>
    extends _$ScheduleOverViewStateCopyWithImpl<$Res,
        _$ScheduleOverViewStateLoadingImpl>
    implements _$$ScheduleOverViewStateLoadingImplCopyWith<$Res> {
  __$$ScheduleOverViewStateLoadingImplCopyWithImpl(
      _$ScheduleOverViewStateLoadingImpl _value,
      $Res Function(_$ScheduleOverViewStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarView = null,
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$ScheduleOverViewStateLoadingImpl(
      calendarView: null == calendarView
          ? _value.calendarView
          : calendarView // ignore: cast_nullable_to_non_nullable
              as CalendarViewEnum,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ScheduleOverViewStateLoadingImpl
    with DiagnosticableTreeMixin
    implements ScheduleOverViewStateLoading {
  const _$ScheduleOverViewStateLoadingImpl(
      {required this.calendarView,
      required this.fromDate,
      required this.toDate});

  @override
  final CalendarViewEnum calendarView;
  @override
  final DateTime fromDate;
  @override
  final DateTime toDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleOverViewState.loading(calendarView: $calendarView, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleOverViewState.loading'))
      ..add(DiagnosticsProperty('calendarView', calendarView))
      ..add(DiagnosticsProperty('fromDate', fromDate))
      ..add(DiagnosticsProperty('toDate', toDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleOverViewStateLoadingImpl &&
            (identical(other.calendarView, calendarView) ||
                other.calendarView == calendarView) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calendarView, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleOverViewStateLoadingImplCopyWith<
          _$ScheduleOverViewStateLoadingImpl>
      get copyWith => __$$ScheduleOverViewStateLoadingImplCopyWithImpl<
          _$ScheduleOverViewStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)
        loading,
    required TResult Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)
        loaded,
  }) {
    return loading(calendarView, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        loading,
    TResult? Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)?
        loaded,
  }) {
    return loading?.call(calendarView, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        loading,
    TResult Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(calendarView, fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleOverViewStateEmpty value) empty,
    required TResult Function(ScheduleOverViewStateLoading value) loading,
    required TResult Function(ScheduleOverViewStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleOverViewStateEmpty value)? empty,
    TResult? Function(ScheduleOverViewStateLoading value)? loading,
    TResult? Function(ScheduleOverViewStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleOverViewStateEmpty value)? empty,
    TResult Function(ScheduleOverViewStateLoading value)? loading,
    TResult Function(ScheduleOverViewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ScheduleOverViewStateLoading implements ScheduleOverViewState {
  const factory ScheduleOverViewStateLoading(
      {required final CalendarViewEnum calendarView,
      required final DateTime fromDate,
      required final DateTime toDate}) = _$ScheduleOverViewStateLoadingImpl;

  CalendarViewEnum get calendarView;
  DateTime get fromDate;
  DateTime get toDate;
  @JsonKey(ignore: true)
  _$$ScheduleOverViewStateLoadingImplCopyWith<
          _$ScheduleOverViewStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleOverViewStateLoadedImplCopyWith<$Res> {
  factory _$$ScheduleOverViewStateLoadedImplCopyWith(
          _$ScheduleOverViewStateLoadedImpl value,
          $Res Function(_$ScheduleOverViewStateLoadedImpl) then) =
      __$$ScheduleOverViewStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CalendarViewEnum calendarView,
      DateTime fromDate,
      DateTime toDate,
      List<Appointment> appointments});
}

/// @nodoc
class __$$ScheduleOverViewStateLoadedImplCopyWithImpl<$Res>
    extends _$ScheduleOverViewStateCopyWithImpl<$Res,
        _$ScheduleOverViewStateLoadedImpl>
    implements _$$ScheduleOverViewStateLoadedImplCopyWith<$Res> {
  __$$ScheduleOverViewStateLoadedImplCopyWithImpl(
      _$ScheduleOverViewStateLoadedImpl _value,
      $Res Function(_$ScheduleOverViewStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarView = null,
    Object? fromDate = null,
    Object? toDate = null,
    Object? appointments = null,
  }) {
    return _then(_$ScheduleOverViewStateLoadedImpl(
      calendarView: null == calendarView
          ? _value.calendarView
          : calendarView // ignore: cast_nullable_to_non_nullable
              as CalendarViewEnum,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      appointments: null == appointments
          ? _value._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
    ));
  }
}

/// @nodoc

class _$ScheduleOverViewStateLoadedImpl
    with DiagnosticableTreeMixin
    implements ScheduleOverViewStateLoaded {
  const _$ScheduleOverViewStateLoadedImpl(
      {required this.calendarView,
      required this.fromDate,
      required this.toDate,
      required final List<Appointment> appointments})
      : _appointments = appointments;

  @override
  final CalendarViewEnum calendarView;
  @override
  final DateTime fromDate;
  @override
  final DateTime toDate;
  final List<Appointment> _appointments;
  @override
  List<Appointment> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleOverViewState.loaded(calendarView: $calendarView, fromDate: $fromDate, toDate: $toDate, appointments: $appointments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleOverViewState.loaded'))
      ..add(DiagnosticsProperty('calendarView', calendarView))
      ..add(DiagnosticsProperty('fromDate', fromDate))
      ..add(DiagnosticsProperty('toDate', toDate))
      ..add(DiagnosticsProperty('appointments', appointments));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleOverViewStateLoadedImpl &&
            (identical(other.calendarView, calendarView) ||
                other.calendarView == calendarView) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calendarView, fromDate, toDate,
      const DeepCollectionEquality().hash(_appointments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleOverViewStateLoadedImplCopyWith<_$ScheduleOverViewStateLoadedImpl>
      get copyWith => __$$ScheduleOverViewStateLoadedImplCopyWithImpl<
          _$ScheduleOverViewStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)
        loading,
    required TResult Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)
        loaded,
  }) {
    return loaded(calendarView, fromDate, toDate, appointments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        loading,
    TResult? Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)?
        loaded,
  }) {
    return loaded?.call(calendarView, fromDate, toDate, appointments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            CalendarViewEnum calendarView, DateTime fromDate, DateTime toDate)?
        loading,
    TResult Function(CalendarViewEnum calendarView, DateTime fromDate,
            DateTime toDate, List<Appointment> appointments)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(calendarView, fromDate, toDate, appointments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleOverViewStateEmpty value) empty,
    required TResult Function(ScheduleOverViewStateLoading value) loading,
    required TResult Function(ScheduleOverViewStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleOverViewStateEmpty value)? empty,
    TResult? Function(ScheduleOverViewStateLoading value)? loading,
    TResult? Function(ScheduleOverViewStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleOverViewStateEmpty value)? empty,
    TResult Function(ScheduleOverViewStateLoading value)? loading,
    TResult Function(ScheduleOverViewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ScheduleOverViewStateLoaded implements ScheduleOverViewState {
  const factory ScheduleOverViewStateLoaded(
          {required final CalendarViewEnum calendarView,
          required final DateTime fromDate,
          required final DateTime toDate,
          required final List<Appointment> appointments}) =
      _$ScheduleOverViewStateLoadedImpl;

  CalendarViewEnum get calendarView;
  DateTime get fromDate;
  DateTime get toDate;
  List<Appointment> get appointments;
  @JsonKey(ignore: true)
  _$$ScheduleOverViewStateLoadedImplCopyWith<_$ScheduleOverViewStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
