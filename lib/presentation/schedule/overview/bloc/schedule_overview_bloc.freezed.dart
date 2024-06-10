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
    required TResult Function(DateTime selectedDay) changeSelectedDay,
    required TResult Function(String appointmantId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDay)? changeSelectedDay,
    TResult? Function(String appointmantId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDay)? changeSelectedDay,
    TResult Function(String appointmantId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEOverViewVentChangeSelectedDay value)
        changeSelectedDay,
    required TResult Function(ScheduleOverViewEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEOverViewVentChangeSelectedDay value)?
        changeSelectedDay,
    TResult? Function(ScheduleOverViewEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEOverViewVentChangeSelectedDay value)?
        changeSelectedDay,
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
abstract class _$$ScheduleEOverViewVentChangeSelectedDayImplCopyWith<$Res> {
  factory _$$ScheduleEOverViewVentChangeSelectedDayImplCopyWith(
          _$ScheduleEOverViewVentChangeSelectedDayImpl value,
          $Res Function(_$ScheduleEOverViewVentChangeSelectedDayImpl) then) =
      __$$ScheduleEOverViewVentChangeSelectedDayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDay});
}

/// @nodoc
class __$$ScheduleEOverViewVentChangeSelectedDayImplCopyWithImpl<$Res>
    extends _$ScheduleOverViewEventCopyWithImpl<$Res,
        _$ScheduleEOverViewVentChangeSelectedDayImpl>
    implements _$$ScheduleEOverViewVentChangeSelectedDayImplCopyWith<$Res> {
  __$$ScheduleEOverViewVentChangeSelectedDayImplCopyWithImpl(
      _$ScheduleEOverViewVentChangeSelectedDayImpl _value,
      $Res Function(_$ScheduleEOverViewVentChangeSelectedDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = null,
  }) {
    return _then(_$ScheduleEOverViewVentChangeSelectedDayImpl(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ScheduleEOverViewVentChangeSelectedDayImpl
    with DiagnosticableTreeMixin
    implements ScheduleEOverViewVentChangeSelectedDay {
  const _$ScheduleEOverViewVentChangeSelectedDayImpl(
      {required this.selectedDay});

  @override
  final DateTime selectedDay;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleOverViewEvent.changeSelectedDay(selectedDay: $selectedDay)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ScheduleOverViewEvent.changeSelectedDay'))
      ..add(DiagnosticsProperty('selectedDay', selectedDay));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEOverViewVentChangeSelectedDayImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEOverViewVentChangeSelectedDayImplCopyWith<
          _$ScheduleEOverViewVentChangeSelectedDayImpl>
      get copyWith =>
          __$$ScheduleEOverViewVentChangeSelectedDayImplCopyWithImpl<
              _$ScheduleEOverViewVentChangeSelectedDayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDay) changeSelectedDay,
    required TResult Function(String appointmantId) delete,
  }) {
    return changeSelectedDay(selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDay)? changeSelectedDay,
    TResult? Function(String appointmantId)? delete,
  }) {
    return changeSelectedDay?.call(selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDay)? changeSelectedDay,
    TResult Function(String appointmantId)? delete,
    required TResult orElse(),
  }) {
    if (changeSelectedDay != null) {
      return changeSelectedDay(selectedDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEOverViewVentChangeSelectedDay value)
        changeSelectedDay,
    required TResult Function(ScheduleOverViewEventDelete value) delete,
  }) {
    return changeSelectedDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEOverViewVentChangeSelectedDay value)?
        changeSelectedDay,
    TResult? Function(ScheduleOverViewEventDelete value)? delete,
  }) {
    return changeSelectedDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEOverViewVentChangeSelectedDay value)?
        changeSelectedDay,
    TResult Function(ScheduleOverViewEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (changeSelectedDay != null) {
      return changeSelectedDay(this);
    }
    return orElse();
  }
}

abstract class ScheduleEOverViewVentChangeSelectedDay
    implements ScheduleOverViewEvent {
  const factory ScheduleEOverViewVentChangeSelectedDay(
          {required final DateTime selectedDay}) =
      _$ScheduleEOverViewVentChangeSelectedDayImpl;

  DateTime get selectedDay;
  @JsonKey(ignore: true)
  _$$ScheduleEOverViewVentChangeSelectedDayImplCopyWith<
          _$ScheduleEOverViewVentChangeSelectedDayImpl>
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
    required TResult Function(DateTime selectedDay) changeSelectedDay,
    required TResult Function(String appointmantId) delete,
  }) {
    return delete(appointmantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDay)? changeSelectedDay,
    TResult? Function(String appointmantId)? delete,
  }) {
    return delete?.call(appointmantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDay)? changeSelectedDay,
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
    required TResult Function(ScheduleEOverViewVentChangeSelectedDay value)
        changeSelectedDay,
    required TResult Function(ScheduleOverViewEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEOverViewVentChangeSelectedDay value)?
        changeSelectedDay,
    TResult? Function(ScheduleOverViewEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEOverViewVentChangeSelectedDay value)?
        changeSelectedDay,
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
  DateTime get selectedDay => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDay) empty,
    required TResult Function(DateTime selectedDay) loading,
    required TResult Function(
            DateTime selectedDay, List<Appointment> appointments)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDay)? empty,
    TResult? Function(DateTime selectedDay)? loading,
    TResult? Function(DateTime selectedDay, List<Appointment> appointments)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDay)? empty,
    TResult Function(DateTime selectedDay)? loading,
    TResult Function(DateTime selectedDay, List<Appointment> appointments)?
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

  @JsonKey(ignore: true)
  $ScheduleOverViewStateCopyWith<ScheduleOverViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleOverViewStateCopyWith<$Res> {
  factory $ScheduleOverViewStateCopyWith(ScheduleOverViewState value,
          $Res Function(ScheduleOverViewState) then) =
      _$ScheduleOverViewStateCopyWithImpl<$Res, ScheduleOverViewState>;
  @useResult
  $Res call({DateTime selectedDay});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = null,
  }) {
    return _then(_value.copyWith(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleOverViewStateEmptyImplCopyWith<$Res>
    implements $ScheduleOverViewStateCopyWith<$Res> {
  factory _$$ScheduleOverViewStateEmptyImplCopyWith(
          _$ScheduleOverViewStateEmptyImpl value,
          $Res Function(_$ScheduleOverViewStateEmptyImpl) then) =
      __$$ScheduleOverViewStateEmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedDay});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = null,
  }) {
    return _then(_$ScheduleOverViewStateEmptyImpl(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ScheduleOverViewStateEmptyImpl
    with DiagnosticableTreeMixin
    implements ScheduleOverViewStateEmpty {
  const _$ScheduleOverViewStateEmptyImpl({required this.selectedDay});

  @override
  final DateTime selectedDay;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleOverViewState.empty(selectedDay: $selectedDay)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleOverViewState.empty'))
      ..add(DiagnosticsProperty('selectedDay', selectedDay));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleOverViewStateEmptyImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleOverViewStateEmptyImplCopyWith<_$ScheduleOverViewStateEmptyImpl>
      get copyWith => __$$ScheduleOverViewStateEmptyImplCopyWithImpl<
          _$ScheduleOverViewStateEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDay) empty,
    required TResult Function(DateTime selectedDay) loading,
    required TResult Function(
            DateTime selectedDay, List<Appointment> appointments)
        loaded,
  }) {
    return empty(selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDay)? empty,
    TResult? Function(DateTime selectedDay)? loading,
    TResult? Function(DateTime selectedDay, List<Appointment> appointments)?
        loaded,
  }) {
    return empty?.call(selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDay)? empty,
    TResult Function(DateTime selectedDay)? loading,
    TResult Function(DateTime selectedDay, List<Appointment> appointments)?
        loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(selectedDay);
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
  const factory ScheduleOverViewStateEmpty(
      {required final DateTime selectedDay}) = _$ScheduleOverViewStateEmptyImpl;

  @override
  DateTime get selectedDay;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleOverViewStateEmptyImplCopyWith<_$ScheduleOverViewStateEmptyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleOverViewStateLoadingImplCopyWith<$Res>
    implements $ScheduleOverViewStateCopyWith<$Res> {
  factory _$$ScheduleOverViewStateLoadingImplCopyWith(
          _$ScheduleOverViewStateLoadingImpl value,
          $Res Function(_$ScheduleOverViewStateLoadingImpl) then) =
      __$$ScheduleOverViewStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedDay});
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
    Object? selectedDay = null,
  }) {
    return _then(_$ScheduleOverViewStateLoadingImpl(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ScheduleOverViewStateLoadingImpl
    with DiagnosticableTreeMixin
    implements ScheduleOverViewStateLoading {
  const _$ScheduleOverViewStateLoadingImpl({required this.selectedDay});

  @override
  final DateTime selectedDay;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleOverViewState.loading(selectedDay: $selectedDay)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleOverViewState.loading'))
      ..add(DiagnosticsProperty('selectedDay', selectedDay));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleOverViewStateLoadingImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDay);

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
    required TResult Function(DateTime selectedDay) empty,
    required TResult Function(DateTime selectedDay) loading,
    required TResult Function(
            DateTime selectedDay, List<Appointment> appointments)
        loaded,
  }) {
    return loading(selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDay)? empty,
    TResult? Function(DateTime selectedDay)? loading,
    TResult? Function(DateTime selectedDay, List<Appointment> appointments)?
        loaded,
  }) {
    return loading?.call(selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDay)? empty,
    TResult Function(DateTime selectedDay)? loading,
    TResult Function(DateTime selectedDay, List<Appointment> appointments)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(selectedDay);
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
          {required final DateTime selectedDay}) =
      _$ScheduleOverViewStateLoadingImpl;

  @override
  DateTime get selectedDay;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleOverViewStateLoadingImplCopyWith<
          _$ScheduleOverViewStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleOverViewStateLoadedImplCopyWith<$Res>
    implements $ScheduleOverViewStateCopyWith<$Res> {
  factory _$$ScheduleOverViewStateLoadedImplCopyWith(
          _$ScheduleOverViewStateLoadedImpl value,
          $Res Function(_$ScheduleOverViewStateLoadedImpl) then) =
      __$$ScheduleOverViewStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedDay, List<Appointment> appointments});
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
    Object? selectedDay = null,
    Object? appointments = null,
  }) {
    return _then(_$ScheduleOverViewStateLoadedImpl(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
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
      {required this.selectedDay,
      required final List<Appointment> appointments})
      : _appointments = appointments;

  @override
  final DateTime selectedDay;
  final List<Appointment> _appointments;
  @override
  List<Appointment> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleOverViewState.loaded(selectedDay: $selectedDay, appointments: $appointments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleOverViewState.loaded'))
      ..add(DiagnosticsProperty('selectedDay', selectedDay))
      ..add(DiagnosticsProperty('appointments', appointments));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleOverViewStateLoadedImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDay,
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
    required TResult Function(DateTime selectedDay) empty,
    required TResult Function(DateTime selectedDay) loading,
    required TResult Function(
            DateTime selectedDay, List<Appointment> appointments)
        loaded,
  }) {
    return loaded(selectedDay, appointments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDay)? empty,
    TResult? Function(DateTime selectedDay)? loading,
    TResult? Function(DateTime selectedDay, List<Appointment> appointments)?
        loaded,
  }) {
    return loaded?.call(selectedDay, appointments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDay)? empty,
    TResult Function(DateTime selectedDay)? loading,
    TResult Function(DateTime selectedDay, List<Appointment> appointments)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(selectedDay, appointments);
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
          {required final DateTime selectedDay,
          required final List<Appointment> appointments}) =
      _$ScheduleOverViewStateLoadedImpl;

  @override
  DateTime get selectedDay;
  List<Appointment> get appointments;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleOverViewStateLoadedImplCopyWith<_$ScheduleOverViewStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
