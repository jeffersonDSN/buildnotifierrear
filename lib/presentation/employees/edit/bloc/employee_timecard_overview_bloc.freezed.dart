// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_timecard_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeTimecardOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Employee employee) load,
    required TResult Function(Period period) changePeriod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Employee employee)? load,
    TResult? Function(Period period)? changePeriod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Employee employee)? load,
    TResult Function(Period period)? changePeriod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeTimecardOverviewEventLoad value) load,
    required TResult Function(EmployeeTimecardOverviewEventChangePeriod value)
        changePeriod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeTimecardOverviewEventLoad value)? load,
    TResult? Function(EmployeeTimecardOverviewEventChangePeriod value)?
        changePeriod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeTimecardOverviewEventLoad value)? load,
    TResult Function(EmployeeTimecardOverviewEventChangePeriod value)?
        changePeriod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeTimecardOverviewEventCopyWith<$Res> {
  factory $EmployeeTimecardOverviewEventCopyWith(
          EmployeeTimecardOverviewEvent value,
          $Res Function(EmployeeTimecardOverviewEvent) then) =
      _$EmployeeTimecardOverviewEventCopyWithImpl<$Res,
          EmployeeTimecardOverviewEvent>;
}

/// @nodoc
class _$EmployeeTimecardOverviewEventCopyWithImpl<$Res,
        $Val extends EmployeeTimecardOverviewEvent>
    implements $EmployeeTimecardOverviewEventCopyWith<$Res> {
  _$EmployeeTimecardOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmployeeTimecardOverviewEventLoadImplCopyWith<$Res> {
  factory _$$EmployeeTimecardOverviewEventLoadImplCopyWith(
          _$EmployeeTimecardOverviewEventLoadImpl value,
          $Res Function(_$EmployeeTimecardOverviewEventLoadImpl) then) =
      __$$EmployeeTimecardOverviewEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$EmployeeTimecardOverviewEventLoadImplCopyWithImpl<$Res>
    extends _$EmployeeTimecardOverviewEventCopyWithImpl<$Res,
        _$EmployeeTimecardOverviewEventLoadImpl>
    implements _$$EmployeeTimecardOverviewEventLoadImplCopyWith<$Res> {
  __$$EmployeeTimecardOverviewEventLoadImplCopyWithImpl(
      _$EmployeeTimecardOverviewEventLoadImpl _value,
      $Res Function(_$EmployeeTimecardOverviewEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$EmployeeTimecardOverviewEventLoadImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc

class _$EmployeeTimecardOverviewEventLoadImpl
    implements EmployeeTimecardOverviewEventLoad {
  const _$EmployeeTimecardOverviewEventLoadImpl({required this.employee});

  @override
  final Employee employee;

  @override
  String toString() {
    return 'EmployeeTimecardOverviewEvent.load(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeTimecardOverviewEventLoadImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeTimecardOverviewEventLoadImplCopyWith<
          _$EmployeeTimecardOverviewEventLoadImpl>
      get copyWith => __$$EmployeeTimecardOverviewEventLoadImplCopyWithImpl<
          _$EmployeeTimecardOverviewEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Employee employee) load,
    required TResult Function(Period period) changePeriod,
  }) {
    return load(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Employee employee)? load,
    TResult? Function(Period period)? changePeriod,
  }) {
    return load?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Employee employee)? load,
    TResult Function(Period period)? changePeriod,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeTimecardOverviewEventLoad value) load,
    required TResult Function(EmployeeTimecardOverviewEventChangePeriod value)
        changePeriod,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeTimecardOverviewEventLoad value)? load,
    TResult? Function(EmployeeTimecardOverviewEventChangePeriod value)?
        changePeriod,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeTimecardOverviewEventLoad value)? load,
    TResult Function(EmployeeTimecardOverviewEventChangePeriod value)?
        changePeriod,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class EmployeeTimecardOverviewEventLoad
    implements EmployeeTimecardOverviewEvent {
  const factory EmployeeTimecardOverviewEventLoad(
          {required final Employee employee}) =
      _$EmployeeTimecardOverviewEventLoadImpl;

  Employee get employee;
  @JsonKey(ignore: true)
  _$$EmployeeTimecardOverviewEventLoadImplCopyWith<
          _$EmployeeTimecardOverviewEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmployeeTimecardOverviewEventChangePeriodImplCopyWith<$Res> {
  factory _$$EmployeeTimecardOverviewEventChangePeriodImplCopyWith(
          _$EmployeeTimecardOverviewEventChangePeriodImpl value,
          $Res Function(_$EmployeeTimecardOverviewEventChangePeriodImpl) then) =
      __$$EmployeeTimecardOverviewEventChangePeriodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Period period});

  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class __$$EmployeeTimecardOverviewEventChangePeriodImplCopyWithImpl<$Res>
    extends _$EmployeeTimecardOverviewEventCopyWithImpl<$Res,
        _$EmployeeTimecardOverviewEventChangePeriodImpl>
    implements _$$EmployeeTimecardOverviewEventChangePeriodImplCopyWith<$Res> {
  __$$EmployeeTimecardOverviewEventChangePeriodImplCopyWithImpl(
      _$EmployeeTimecardOverviewEventChangePeriodImpl _value,
      $Res Function(_$EmployeeTimecardOverviewEventChangePeriodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
  }) {
    return _then(_$EmployeeTimecardOverviewEventChangePeriodImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res> get period {
    return $PeriodCopyWith<$Res>(_value.period, (value) {
      return _then(_value.copyWith(period: value));
    });
  }
}

/// @nodoc

class _$EmployeeTimecardOverviewEventChangePeriodImpl
    implements EmployeeTimecardOverviewEventChangePeriod {
  const _$EmployeeTimecardOverviewEventChangePeriodImpl({required this.period});

  @override
  final Period period;

  @override
  String toString() {
    return 'EmployeeTimecardOverviewEvent.changePeriod(period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeTimecardOverviewEventChangePeriodImpl &&
            (identical(other.period, period) || other.period == period));
  }

  @override
  int get hashCode => Object.hash(runtimeType, period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeTimecardOverviewEventChangePeriodImplCopyWith<
          _$EmployeeTimecardOverviewEventChangePeriodImpl>
      get copyWith =>
          __$$EmployeeTimecardOverviewEventChangePeriodImplCopyWithImpl<
                  _$EmployeeTimecardOverviewEventChangePeriodImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Employee employee) load,
    required TResult Function(Period period) changePeriod,
  }) {
    return changePeriod(period);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Employee employee)? load,
    TResult? Function(Period period)? changePeriod,
  }) {
    return changePeriod?.call(period);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Employee employee)? load,
    TResult Function(Period period)? changePeriod,
    required TResult orElse(),
  }) {
    if (changePeriod != null) {
      return changePeriod(period);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeTimecardOverviewEventLoad value) load,
    required TResult Function(EmployeeTimecardOverviewEventChangePeriod value)
        changePeriod,
  }) {
    return changePeriod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeTimecardOverviewEventLoad value)? load,
    TResult? Function(EmployeeTimecardOverviewEventChangePeriod value)?
        changePeriod,
  }) {
    return changePeriod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeTimecardOverviewEventLoad value)? load,
    TResult Function(EmployeeTimecardOverviewEventChangePeriod value)?
        changePeriod,
    required TResult orElse(),
  }) {
    if (changePeriod != null) {
      return changePeriod(this);
    }
    return orElse();
  }
}

abstract class EmployeeTimecardOverviewEventChangePeriod
    implements EmployeeTimecardOverviewEvent {
  const factory EmployeeTimecardOverviewEventChangePeriod(
          {required final Period period}) =
      _$EmployeeTimecardOverviewEventChangePeriodImpl;

  Period get period;
  @JsonKey(ignore: true)
  _$$EmployeeTimecardOverviewEventChangePeriodImplCopyWith<
          _$EmployeeTimecardOverviewEventChangePeriodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeTimecardOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            Employee employee, Period selectedPeriod, List<Period> periods)
        loading,
    required TResult Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            Employee employee, Period selectedPeriod, List<Period> periods)?
        loading,
    TResult? Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            Employee employee, Period selectedPeriod, List<Period> periods)?
        loading,
    TResult Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeTimecardOverviewStateEmpty value) empty,
    required TResult Function(EmployeeTimecardOverviewStateLoading value)
        loading,
    required TResult Function(EmployeeTimecardOverviewStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeTimecardOverviewStateEmpty value)? empty,
    TResult? Function(EmployeeTimecardOverviewStateLoading value)? loading,
    TResult? Function(EmployeeTimecardOverviewStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeTimecardOverviewStateEmpty value)? empty,
    TResult Function(EmployeeTimecardOverviewStateLoading value)? loading,
    TResult Function(EmployeeTimecardOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeTimecardOverviewStateCopyWith<$Res> {
  factory $EmployeeTimecardOverviewStateCopyWith(
          EmployeeTimecardOverviewState value,
          $Res Function(EmployeeTimecardOverviewState) then) =
      _$EmployeeTimecardOverviewStateCopyWithImpl<$Res,
          EmployeeTimecardOverviewState>;
}

/// @nodoc
class _$EmployeeTimecardOverviewStateCopyWithImpl<$Res,
        $Val extends EmployeeTimecardOverviewState>
    implements $EmployeeTimecardOverviewStateCopyWith<$Res> {
  _$EmployeeTimecardOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmployeeTimecardOverviewStateEmptyImplCopyWith<$Res> {
  factory _$$EmployeeTimecardOverviewStateEmptyImplCopyWith(
          _$EmployeeTimecardOverviewStateEmptyImpl value,
          $Res Function(_$EmployeeTimecardOverviewStateEmptyImpl) then) =
      __$$EmployeeTimecardOverviewStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmployeeTimecardOverviewStateEmptyImplCopyWithImpl<$Res>
    extends _$EmployeeTimecardOverviewStateCopyWithImpl<$Res,
        _$EmployeeTimecardOverviewStateEmptyImpl>
    implements _$$EmployeeTimecardOverviewStateEmptyImplCopyWith<$Res> {
  __$$EmployeeTimecardOverviewStateEmptyImplCopyWithImpl(
      _$EmployeeTimecardOverviewStateEmptyImpl _value,
      $Res Function(_$EmployeeTimecardOverviewStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmployeeTimecardOverviewStateEmptyImpl
    implements EmployeeTimecardOverviewStateEmpty {
  const _$EmployeeTimecardOverviewStateEmptyImpl();

  @override
  String toString() {
    return 'EmployeeTimecardOverviewState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeTimecardOverviewStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            Employee employee, Period selectedPeriod, List<Period> periods)
        loading,
    required TResult Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            Employee employee, Period selectedPeriod, List<Period> periods)?
        loading,
    TResult? Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            Employee employee, Period selectedPeriod, List<Period> periods)?
        loading,
    TResult Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)?
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
    required TResult Function(EmployeeTimecardOverviewStateEmpty value) empty,
    required TResult Function(EmployeeTimecardOverviewStateLoading value)
        loading,
    required TResult Function(EmployeeTimecardOverviewStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeTimecardOverviewStateEmpty value)? empty,
    TResult? Function(EmployeeTimecardOverviewStateLoading value)? loading,
    TResult? Function(EmployeeTimecardOverviewStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeTimecardOverviewStateEmpty value)? empty,
    TResult Function(EmployeeTimecardOverviewStateLoading value)? loading,
    TResult Function(EmployeeTimecardOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmployeeTimecardOverviewStateEmpty
    implements EmployeeTimecardOverviewState {
  const factory EmployeeTimecardOverviewStateEmpty() =
      _$EmployeeTimecardOverviewStateEmptyImpl;
}

/// @nodoc
abstract class _$$EmployeeTimecardOverviewStateLoadingImplCopyWith<$Res> {
  factory _$$EmployeeTimecardOverviewStateLoadingImplCopyWith(
          _$EmployeeTimecardOverviewStateLoadingImpl value,
          $Res Function(_$EmployeeTimecardOverviewStateLoadingImpl) then) =
      __$$EmployeeTimecardOverviewStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Employee employee, Period selectedPeriod, List<Period> periods});

  $EmployeeCopyWith<$Res> get employee;
  $PeriodCopyWith<$Res> get selectedPeriod;
}

/// @nodoc
class __$$EmployeeTimecardOverviewStateLoadingImplCopyWithImpl<$Res>
    extends _$EmployeeTimecardOverviewStateCopyWithImpl<$Res,
        _$EmployeeTimecardOverviewStateLoadingImpl>
    implements _$$EmployeeTimecardOverviewStateLoadingImplCopyWith<$Res> {
  __$$EmployeeTimecardOverviewStateLoadingImplCopyWithImpl(
      _$EmployeeTimecardOverviewStateLoadingImpl _value,
      $Res Function(_$EmployeeTimecardOverviewStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
    Object? selectedPeriod = null,
    Object? periods = null,
  }) {
    return _then(_$EmployeeTimecardOverviewStateLoadingImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
      selectedPeriod: null == selectedPeriod
          ? _value.selectedPeriod
          : selectedPeriod // ignore: cast_nullable_to_non_nullable
              as Period,
      periods: null == periods
          ? _value._periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<Period>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res> get selectedPeriod {
    return $PeriodCopyWith<$Res>(_value.selectedPeriod, (value) {
      return _then(_value.copyWith(selectedPeriod: value));
    });
  }
}

/// @nodoc

class _$EmployeeTimecardOverviewStateLoadingImpl
    implements EmployeeTimecardOverviewStateLoading {
  const _$EmployeeTimecardOverviewStateLoadingImpl(
      {required this.employee,
      required this.selectedPeriod,
      required final List<Period> periods})
      : _periods = periods;

  @override
  final Employee employee;
  @override
  final Period selectedPeriod;
  final List<Period> _periods;
  @override
  List<Period> get periods {
    if (_periods is EqualUnmodifiableListView) return _periods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_periods);
  }

  @override
  String toString() {
    return 'EmployeeTimecardOverviewState.loading(employee: $employee, selectedPeriod: $selectedPeriod, periods: $periods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeTimecardOverviewStateLoadingImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.selectedPeriod, selectedPeriod) ||
                other.selectedPeriod == selectedPeriod) &&
            const DeepCollectionEquality().equals(other._periods, _periods));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee, selectedPeriod,
      const DeepCollectionEquality().hash(_periods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeTimecardOverviewStateLoadingImplCopyWith<
          _$EmployeeTimecardOverviewStateLoadingImpl>
      get copyWith => __$$EmployeeTimecardOverviewStateLoadingImplCopyWithImpl<
          _$EmployeeTimecardOverviewStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            Employee employee, Period selectedPeriod, List<Period> periods)
        loading,
    required TResult Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)
        loaded,
  }) {
    return loading(employee, selectedPeriod, periods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            Employee employee, Period selectedPeriod, List<Period> periods)?
        loading,
    TResult? Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)?
        loaded,
  }) {
    return loading?.call(employee, selectedPeriod, periods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            Employee employee, Period selectedPeriod, List<Period> periods)?
        loading,
    TResult Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(employee, selectedPeriod, periods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeTimecardOverviewStateEmpty value) empty,
    required TResult Function(EmployeeTimecardOverviewStateLoading value)
        loading,
    required TResult Function(EmployeeTimecardOverviewStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeTimecardOverviewStateEmpty value)? empty,
    TResult? Function(EmployeeTimecardOverviewStateLoading value)? loading,
    TResult? Function(EmployeeTimecardOverviewStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeTimecardOverviewStateEmpty value)? empty,
    TResult Function(EmployeeTimecardOverviewStateLoading value)? loading,
    TResult Function(EmployeeTimecardOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EmployeeTimecardOverviewStateLoading
    implements EmployeeTimecardOverviewState {
  const factory EmployeeTimecardOverviewStateLoading(
          {required final Employee employee,
          required final Period selectedPeriod,
          required final List<Period> periods}) =
      _$EmployeeTimecardOverviewStateLoadingImpl;

  Employee get employee;
  Period get selectedPeriod;
  List<Period> get periods;
  @JsonKey(ignore: true)
  _$$EmployeeTimecardOverviewStateLoadingImplCopyWith<
          _$EmployeeTimecardOverviewStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmployeeTimecardOverviewStateLoadedImplCopyWith<$Res> {
  factory _$$EmployeeTimecardOverviewStateLoadedImplCopyWith(
          _$EmployeeTimecardOverviewStateLoadedImpl value,
          $Res Function(_$EmployeeTimecardOverviewStateLoadedImpl) then) =
      __$$EmployeeTimecardOverviewStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Employee employee,
      Period selectedPeriod,
      List<Period> periods,
      List<Timecard> timecards});

  $EmployeeCopyWith<$Res> get employee;
  $PeriodCopyWith<$Res> get selectedPeriod;
}

/// @nodoc
class __$$EmployeeTimecardOverviewStateLoadedImplCopyWithImpl<$Res>
    extends _$EmployeeTimecardOverviewStateCopyWithImpl<$Res,
        _$EmployeeTimecardOverviewStateLoadedImpl>
    implements _$$EmployeeTimecardOverviewStateLoadedImplCopyWith<$Res> {
  __$$EmployeeTimecardOverviewStateLoadedImplCopyWithImpl(
      _$EmployeeTimecardOverviewStateLoadedImpl _value,
      $Res Function(_$EmployeeTimecardOverviewStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
    Object? selectedPeriod = null,
    Object? periods = null,
    Object? timecards = null,
  }) {
    return _then(_$EmployeeTimecardOverviewStateLoadedImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
      selectedPeriod: null == selectedPeriod
          ? _value.selectedPeriod
          : selectedPeriod // ignore: cast_nullable_to_non_nullable
              as Period,
      periods: null == periods
          ? _value._periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<Period>,
      timecards: null == timecards
          ? _value._timecards
          : timecards // ignore: cast_nullable_to_non_nullable
              as List<Timecard>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res> get selectedPeriod {
    return $PeriodCopyWith<$Res>(_value.selectedPeriod, (value) {
      return _then(_value.copyWith(selectedPeriod: value));
    });
  }
}

/// @nodoc

class _$EmployeeTimecardOverviewStateLoadedImpl
    implements EmployeeTimecardOverviewStateLoaded {
  const _$EmployeeTimecardOverviewStateLoadedImpl(
      {required this.employee,
      required this.selectedPeriod,
      required final List<Period> periods,
      required final List<Timecard> timecards})
      : _periods = periods,
        _timecards = timecards;

  @override
  final Employee employee;
  @override
  final Period selectedPeriod;
  final List<Period> _periods;
  @override
  List<Period> get periods {
    if (_periods is EqualUnmodifiableListView) return _periods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_periods);
  }

  final List<Timecard> _timecards;
  @override
  List<Timecard> get timecards {
    if (_timecards is EqualUnmodifiableListView) return _timecards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timecards);
  }

  @override
  String toString() {
    return 'EmployeeTimecardOverviewState.loaded(employee: $employee, selectedPeriod: $selectedPeriod, periods: $periods, timecards: $timecards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeTimecardOverviewStateLoadedImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.selectedPeriod, selectedPeriod) ||
                other.selectedPeriod == selectedPeriod) &&
            const DeepCollectionEquality().equals(other._periods, _periods) &&
            const DeepCollectionEquality()
                .equals(other._timecards, _timecards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      employee,
      selectedPeriod,
      const DeepCollectionEquality().hash(_periods),
      const DeepCollectionEquality().hash(_timecards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeTimecardOverviewStateLoadedImplCopyWith<
          _$EmployeeTimecardOverviewStateLoadedImpl>
      get copyWith => __$$EmployeeTimecardOverviewStateLoadedImplCopyWithImpl<
          _$EmployeeTimecardOverviewStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            Employee employee, Period selectedPeriod, List<Period> periods)
        loading,
    required TResult Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)
        loaded,
  }) {
    return loaded(employee, selectedPeriod, periods, timecards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            Employee employee, Period selectedPeriod, List<Period> periods)?
        loading,
    TResult? Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)?
        loaded,
  }) {
    return loaded?.call(employee, selectedPeriod, periods, timecards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            Employee employee, Period selectedPeriod, List<Period> periods)?
        loading,
    TResult Function(Employee employee, Period selectedPeriod,
            List<Period> periods, List<Timecard> timecards)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(employee, selectedPeriod, periods, timecards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeTimecardOverviewStateEmpty value) empty,
    required TResult Function(EmployeeTimecardOverviewStateLoading value)
        loading,
    required TResult Function(EmployeeTimecardOverviewStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeTimecardOverviewStateEmpty value)? empty,
    TResult? Function(EmployeeTimecardOverviewStateLoading value)? loading,
    TResult? Function(EmployeeTimecardOverviewStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeTimecardOverviewStateEmpty value)? empty,
    TResult Function(EmployeeTimecardOverviewStateLoading value)? loading,
    TResult Function(EmployeeTimecardOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class EmployeeTimecardOverviewStateLoaded
    implements EmployeeTimecardOverviewState {
  const factory EmployeeTimecardOverviewStateLoaded(
          {required final Employee employee,
          required final Period selectedPeriod,
          required final List<Period> periods,
          required final List<Timecard> timecards}) =
      _$EmployeeTimecardOverviewStateLoadedImpl;

  Employee get employee;
  Period get selectedPeriod;
  List<Period> get periods;
  List<Timecard> get timecards;
  @JsonKey(ignore: true)
  _$$EmployeeTimecardOverviewStateLoadedImplCopyWith<
          _$EmployeeTimecardOverviewStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
