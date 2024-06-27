// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timecards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimecardsOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeId) load,
    required TResult Function(List<String> userIds) loadUsers,
    required TResult Function(Period period) changeSelectedPeriod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeId)? load,
    TResult? Function(List<String> userIds)? loadUsers,
    TResult? Function(Period period)? changeSelectedPeriod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeId)? load,
    TResult Function(List<String> userIds)? loadUsers,
    TResult Function(Period period)? changeSelectedPeriod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimecardsOverviewEventLoad value) load,
    required TResult Function(TimecardsOverviewEventLoadUsers value) loadUsers,
    required TResult Function(TimecardsOverviewEventChangeSelectedPeriod value)
        changeSelectedPeriod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimecardsOverviewEventLoad value)? load,
    TResult? Function(TimecardsOverviewEventLoadUsers value)? loadUsers,
    TResult? Function(TimecardsOverviewEventChangeSelectedPeriod value)?
        changeSelectedPeriod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimecardsOverviewEventLoad value)? load,
    TResult Function(TimecardsOverviewEventLoadUsers value)? loadUsers,
    TResult Function(TimecardsOverviewEventChangeSelectedPeriod value)?
        changeSelectedPeriod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimecardsOverviewEventCopyWith<$Res> {
  factory $TimecardsOverviewEventCopyWith(TimecardsOverviewEvent value,
          $Res Function(TimecardsOverviewEvent) then) =
      _$TimecardsOverviewEventCopyWithImpl<$Res, TimecardsOverviewEvent>;
}

/// @nodoc
class _$TimecardsOverviewEventCopyWithImpl<$Res,
        $Val extends TimecardsOverviewEvent>
    implements $TimecardsOverviewEventCopyWith<$Res> {
  _$TimecardsOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimecardsOverviewEventLoadImplCopyWith<$Res> {
  factory _$$TimecardsOverviewEventLoadImplCopyWith(
          _$TimecardsOverviewEventLoadImpl value,
          $Res Function(_$TimecardsOverviewEventLoadImpl) then) =
      __$$TimecardsOverviewEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String employeeId});
}

/// @nodoc
class __$$TimecardsOverviewEventLoadImplCopyWithImpl<$Res>
    extends _$TimecardsOverviewEventCopyWithImpl<$Res,
        _$TimecardsOverviewEventLoadImpl>
    implements _$$TimecardsOverviewEventLoadImplCopyWith<$Res> {
  __$$TimecardsOverviewEventLoadImplCopyWithImpl(
      _$TimecardsOverviewEventLoadImpl _value,
      $Res Function(_$TimecardsOverviewEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_$TimecardsOverviewEventLoadImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimecardsOverviewEventLoadImpl implements TimecardsOverviewEventLoad {
  const _$TimecardsOverviewEventLoadImpl({required this.employeeId});

  @override
  final String employeeId;

  @override
  String toString() {
    return 'TimecardsOverviewEvent.load(employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimecardsOverviewEventLoadImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimecardsOverviewEventLoadImplCopyWith<_$TimecardsOverviewEventLoadImpl>
      get copyWith => __$$TimecardsOverviewEventLoadImplCopyWithImpl<
          _$TimecardsOverviewEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeId) load,
    required TResult Function(List<String> userIds) loadUsers,
    required TResult Function(Period period) changeSelectedPeriod,
  }) {
    return load(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeId)? load,
    TResult? Function(List<String> userIds)? loadUsers,
    TResult? Function(Period period)? changeSelectedPeriod,
  }) {
    return load?.call(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeId)? load,
    TResult Function(List<String> userIds)? loadUsers,
    TResult Function(Period period)? changeSelectedPeriod,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(employeeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimecardsOverviewEventLoad value) load,
    required TResult Function(TimecardsOverviewEventLoadUsers value) loadUsers,
    required TResult Function(TimecardsOverviewEventChangeSelectedPeriod value)
        changeSelectedPeriod,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimecardsOverviewEventLoad value)? load,
    TResult? Function(TimecardsOverviewEventLoadUsers value)? loadUsers,
    TResult? Function(TimecardsOverviewEventChangeSelectedPeriod value)?
        changeSelectedPeriod,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimecardsOverviewEventLoad value)? load,
    TResult Function(TimecardsOverviewEventLoadUsers value)? loadUsers,
    TResult Function(TimecardsOverviewEventChangeSelectedPeriod value)?
        changeSelectedPeriod,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TimecardsOverviewEventLoad implements TimecardsOverviewEvent {
  const factory TimecardsOverviewEventLoad({required final String employeeId}) =
      _$TimecardsOverviewEventLoadImpl;

  String get employeeId;
  @JsonKey(ignore: true)
  _$$TimecardsOverviewEventLoadImplCopyWith<_$TimecardsOverviewEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimecardsOverviewEventLoadUsersImplCopyWith<$Res> {
  factory _$$TimecardsOverviewEventLoadUsersImplCopyWith(
          _$TimecardsOverviewEventLoadUsersImpl value,
          $Res Function(_$TimecardsOverviewEventLoadUsersImpl) then) =
      __$$TimecardsOverviewEventLoadUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> userIds});
}

/// @nodoc
class __$$TimecardsOverviewEventLoadUsersImplCopyWithImpl<$Res>
    extends _$TimecardsOverviewEventCopyWithImpl<$Res,
        _$TimecardsOverviewEventLoadUsersImpl>
    implements _$$TimecardsOverviewEventLoadUsersImplCopyWith<$Res> {
  __$$TimecardsOverviewEventLoadUsersImplCopyWithImpl(
      _$TimecardsOverviewEventLoadUsersImpl _value,
      $Res Function(_$TimecardsOverviewEventLoadUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIds = null,
  }) {
    return _then(_$TimecardsOverviewEventLoadUsersImpl(
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$TimecardsOverviewEventLoadUsersImpl
    implements TimecardsOverviewEventLoadUsers {
  const _$TimecardsOverviewEventLoadUsersImpl(
      {required final List<String> userIds})
      : _userIds = userIds;

  final List<String> _userIds;
  @override
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  String toString() {
    return 'TimecardsOverviewEvent.loadUsers(userIds: $userIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimecardsOverviewEventLoadUsersImpl &&
            const DeepCollectionEquality().equals(other._userIds, _userIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimecardsOverviewEventLoadUsersImplCopyWith<
          _$TimecardsOverviewEventLoadUsersImpl>
      get copyWith => __$$TimecardsOverviewEventLoadUsersImplCopyWithImpl<
          _$TimecardsOverviewEventLoadUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeId) load,
    required TResult Function(List<String> userIds) loadUsers,
    required TResult Function(Period period) changeSelectedPeriod,
  }) {
    return loadUsers(userIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeId)? load,
    TResult? Function(List<String> userIds)? loadUsers,
    TResult? Function(Period period)? changeSelectedPeriod,
  }) {
    return loadUsers?.call(userIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeId)? load,
    TResult Function(List<String> userIds)? loadUsers,
    TResult Function(Period period)? changeSelectedPeriod,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers(userIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimecardsOverviewEventLoad value) load,
    required TResult Function(TimecardsOverviewEventLoadUsers value) loadUsers,
    required TResult Function(TimecardsOverviewEventChangeSelectedPeriod value)
        changeSelectedPeriod,
  }) {
    return loadUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimecardsOverviewEventLoad value)? load,
    TResult? Function(TimecardsOverviewEventLoadUsers value)? loadUsers,
    TResult? Function(TimecardsOverviewEventChangeSelectedPeriod value)?
        changeSelectedPeriod,
  }) {
    return loadUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimecardsOverviewEventLoad value)? load,
    TResult Function(TimecardsOverviewEventLoadUsers value)? loadUsers,
    TResult Function(TimecardsOverviewEventChangeSelectedPeriod value)?
        changeSelectedPeriod,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers(this);
    }
    return orElse();
  }
}

abstract class TimecardsOverviewEventLoadUsers
    implements TimecardsOverviewEvent {
  const factory TimecardsOverviewEventLoadUsers(
          {required final List<String> userIds}) =
      _$TimecardsOverviewEventLoadUsersImpl;

  List<String> get userIds;
  @JsonKey(ignore: true)
  _$$TimecardsOverviewEventLoadUsersImplCopyWith<
          _$TimecardsOverviewEventLoadUsersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimecardsOverviewEventChangeSelectedPeriodImplCopyWith<$Res> {
  factory _$$TimecardsOverviewEventChangeSelectedPeriodImplCopyWith(
          _$TimecardsOverviewEventChangeSelectedPeriodImpl value,
          $Res Function(_$TimecardsOverviewEventChangeSelectedPeriodImpl)
              then) =
      __$$TimecardsOverviewEventChangeSelectedPeriodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Period period});

  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class __$$TimecardsOverviewEventChangeSelectedPeriodImplCopyWithImpl<$Res>
    extends _$TimecardsOverviewEventCopyWithImpl<$Res,
        _$TimecardsOverviewEventChangeSelectedPeriodImpl>
    implements _$$TimecardsOverviewEventChangeSelectedPeriodImplCopyWith<$Res> {
  __$$TimecardsOverviewEventChangeSelectedPeriodImplCopyWithImpl(
      _$TimecardsOverviewEventChangeSelectedPeriodImpl _value,
      $Res Function(_$TimecardsOverviewEventChangeSelectedPeriodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
  }) {
    return _then(_$TimecardsOverviewEventChangeSelectedPeriodImpl(
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

class _$TimecardsOverviewEventChangeSelectedPeriodImpl
    implements TimecardsOverviewEventChangeSelectedPeriod {
  const _$TimecardsOverviewEventChangeSelectedPeriodImpl(
      {required this.period});

  @override
  final Period period;

  @override
  String toString() {
    return 'TimecardsOverviewEvent.changeSelectedPeriod(period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimecardsOverviewEventChangeSelectedPeriodImpl &&
            (identical(other.period, period) || other.period == period));
  }

  @override
  int get hashCode => Object.hash(runtimeType, period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimecardsOverviewEventChangeSelectedPeriodImplCopyWith<
          _$TimecardsOverviewEventChangeSelectedPeriodImpl>
      get copyWith =>
          __$$TimecardsOverviewEventChangeSelectedPeriodImplCopyWithImpl<
                  _$TimecardsOverviewEventChangeSelectedPeriodImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeId) load,
    required TResult Function(List<String> userIds) loadUsers,
    required TResult Function(Period period) changeSelectedPeriod,
  }) {
    return changeSelectedPeriod(period);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeId)? load,
    TResult? Function(List<String> userIds)? loadUsers,
    TResult? Function(Period period)? changeSelectedPeriod,
  }) {
    return changeSelectedPeriod?.call(period);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeId)? load,
    TResult Function(List<String> userIds)? loadUsers,
    TResult Function(Period period)? changeSelectedPeriod,
    required TResult orElse(),
  }) {
    if (changeSelectedPeriod != null) {
      return changeSelectedPeriod(period);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimecardsOverviewEventLoad value) load,
    required TResult Function(TimecardsOverviewEventLoadUsers value) loadUsers,
    required TResult Function(TimecardsOverviewEventChangeSelectedPeriod value)
        changeSelectedPeriod,
  }) {
    return changeSelectedPeriod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimecardsOverviewEventLoad value)? load,
    TResult? Function(TimecardsOverviewEventLoadUsers value)? loadUsers,
    TResult? Function(TimecardsOverviewEventChangeSelectedPeriod value)?
        changeSelectedPeriod,
  }) {
    return changeSelectedPeriod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimecardsOverviewEventLoad value)? load,
    TResult Function(TimecardsOverviewEventLoadUsers value)? loadUsers,
    TResult Function(TimecardsOverviewEventChangeSelectedPeriod value)?
        changeSelectedPeriod,
    required TResult orElse(),
  }) {
    if (changeSelectedPeriod != null) {
      return changeSelectedPeriod(this);
    }
    return orElse();
  }
}

abstract class TimecardsOverviewEventChangeSelectedPeriod
    implements TimecardsOverviewEvent {
  const factory TimecardsOverviewEventChangeSelectedPeriod(
          {required final Period period}) =
      _$TimecardsOverviewEventChangeSelectedPeriodImpl;

  Period get period;
  @JsonKey(ignore: true)
  _$$TimecardsOverviewEventChangeSelectedPeriodImplCopyWith<
          _$TimecardsOverviewEventChangeSelectedPeriodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimecardsOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Period> periods, Period selectedPeriod)
        loading,
    required TResult Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<Period> periods, Period selectedPeriod)? loading,
    TResult? Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Period> periods, Period selectedPeriod)? loading,
    TResult Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimecardsOverviewStateEmpty value) empty,
    required TResult Function(TimecardsOverviewStateLoading value) loading,
    required TResult Function(TimecardsOverviewStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimecardsOverviewStateEmpty value)? empty,
    TResult? Function(TimecardsOverviewStateLoading value)? loading,
    TResult? Function(TimecardsOverviewStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimecardsOverviewStateEmpty value)? empty,
    TResult Function(TimecardsOverviewStateLoading value)? loading,
    TResult Function(TimecardsOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimecardsOverviewStateCopyWith<$Res> {
  factory $TimecardsOverviewStateCopyWith(TimecardsOverviewState value,
          $Res Function(TimecardsOverviewState) then) =
      _$TimecardsOverviewStateCopyWithImpl<$Res, TimecardsOverviewState>;
}

/// @nodoc
class _$TimecardsOverviewStateCopyWithImpl<$Res,
        $Val extends TimecardsOverviewState>
    implements $TimecardsOverviewStateCopyWith<$Res> {
  _$TimecardsOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimecardsOverviewStateEmptyImplCopyWith<$Res> {
  factory _$$TimecardsOverviewStateEmptyImplCopyWith(
          _$TimecardsOverviewStateEmptyImpl value,
          $Res Function(_$TimecardsOverviewStateEmptyImpl) then) =
      __$$TimecardsOverviewStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimecardsOverviewStateEmptyImplCopyWithImpl<$Res>
    extends _$TimecardsOverviewStateCopyWithImpl<$Res,
        _$TimecardsOverviewStateEmptyImpl>
    implements _$$TimecardsOverviewStateEmptyImplCopyWith<$Res> {
  __$$TimecardsOverviewStateEmptyImplCopyWithImpl(
      _$TimecardsOverviewStateEmptyImpl _value,
      $Res Function(_$TimecardsOverviewStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimecardsOverviewStateEmptyImpl implements TimecardsOverviewStateEmpty {
  const _$TimecardsOverviewStateEmptyImpl();

  @override
  String toString() {
    return 'TimecardsOverviewState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimecardsOverviewStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Period> periods, Period selectedPeriod)
        loading,
    required TResult Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<Period> periods, Period selectedPeriod)? loading,
    TResult? Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Period> periods, Period selectedPeriod)? loading,
    TResult Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)?
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
    required TResult Function(TimecardsOverviewStateEmpty value) empty,
    required TResult Function(TimecardsOverviewStateLoading value) loading,
    required TResult Function(TimecardsOverviewStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimecardsOverviewStateEmpty value)? empty,
    TResult? Function(TimecardsOverviewStateLoading value)? loading,
    TResult? Function(TimecardsOverviewStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimecardsOverviewStateEmpty value)? empty,
    TResult Function(TimecardsOverviewStateLoading value)? loading,
    TResult Function(TimecardsOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class TimecardsOverviewStateEmpty implements TimecardsOverviewState {
  const factory TimecardsOverviewStateEmpty() =
      _$TimecardsOverviewStateEmptyImpl;
}

/// @nodoc
abstract class _$$TimecardsOverviewStateLoadingImplCopyWith<$Res> {
  factory _$$TimecardsOverviewStateLoadingImplCopyWith(
          _$TimecardsOverviewStateLoadingImpl value,
          $Res Function(_$TimecardsOverviewStateLoadingImpl) then) =
      __$$TimecardsOverviewStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Period> periods, Period selectedPeriod});

  $PeriodCopyWith<$Res> get selectedPeriod;
}

/// @nodoc
class __$$TimecardsOverviewStateLoadingImplCopyWithImpl<$Res>
    extends _$TimecardsOverviewStateCopyWithImpl<$Res,
        _$TimecardsOverviewStateLoadingImpl>
    implements _$$TimecardsOverviewStateLoadingImplCopyWith<$Res> {
  __$$TimecardsOverviewStateLoadingImplCopyWithImpl(
      _$TimecardsOverviewStateLoadingImpl _value,
      $Res Function(_$TimecardsOverviewStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periods = null,
    Object? selectedPeriod = null,
  }) {
    return _then(_$TimecardsOverviewStateLoadingImpl(
      periods: null == periods
          ? _value._periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<Period>,
      selectedPeriod: null == selectedPeriod
          ? _value.selectedPeriod
          : selectedPeriod // ignore: cast_nullable_to_non_nullable
              as Period,
    ));
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

class _$TimecardsOverviewStateLoadingImpl
    implements TimecardsOverviewStateLoading {
  const _$TimecardsOverviewStateLoadingImpl(
      {required final List<Period> periods, required this.selectedPeriod})
      : _periods = periods;

  final List<Period> _periods;
  @override
  List<Period> get periods {
    if (_periods is EqualUnmodifiableListView) return _periods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_periods);
  }

  @override
  final Period selectedPeriod;

  @override
  String toString() {
    return 'TimecardsOverviewState.loading(periods: $periods, selectedPeriod: $selectedPeriod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimecardsOverviewStateLoadingImpl &&
            const DeepCollectionEquality().equals(other._periods, _periods) &&
            (identical(other.selectedPeriod, selectedPeriod) ||
                other.selectedPeriod == selectedPeriod));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_periods), selectedPeriod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimecardsOverviewStateLoadingImplCopyWith<
          _$TimecardsOverviewStateLoadingImpl>
      get copyWith => __$$TimecardsOverviewStateLoadingImplCopyWithImpl<
          _$TimecardsOverviewStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Period> periods, Period selectedPeriod)
        loading,
    required TResult Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)
        loaded,
  }) {
    return loading(periods, selectedPeriod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<Period> periods, Period selectedPeriod)? loading,
    TResult? Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)?
        loaded,
  }) {
    return loading?.call(periods, selectedPeriod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Period> periods, Period selectedPeriod)? loading,
    TResult Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(periods, selectedPeriod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimecardsOverviewStateEmpty value) empty,
    required TResult Function(TimecardsOverviewStateLoading value) loading,
    required TResult Function(TimecardsOverviewStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimecardsOverviewStateEmpty value)? empty,
    TResult? Function(TimecardsOverviewStateLoading value)? loading,
    TResult? Function(TimecardsOverviewStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimecardsOverviewStateEmpty value)? empty,
    TResult Function(TimecardsOverviewStateLoading value)? loading,
    TResult Function(TimecardsOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TimecardsOverviewStateLoading implements TimecardsOverviewState {
  const factory TimecardsOverviewStateLoading(
          {required final List<Period> periods,
          required final Period selectedPeriod}) =
      _$TimecardsOverviewStateLoadingImpl;

  List<Period> get periods;
  Period get selectedPeriod;
  @JsonKey(ignore: true)
  _$$TimecardsOverviewStateLoadingImplCopyWith<
          _$TimecardsOverviewStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimecardsOverviewStateLoadedImplCopyWith<$Res> {
  factory _$$TimecardsOverviewStateLoadedImplCopyWith(
          _$TimecardsOverviewStateLoadedImpl value,
          $Res Function(_$TimecardsOverviewStateLoadedImpl) then) =
      __$$TimecardsOverviewStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String employeeId,
      List<Period> periods,
      Period selectedPeriod,
      List<Timecard> timeCards,
      List<Employee> employees,
      DependenteStateType<dynamic> usersState,
      List<Project> projects,
      DependenteStateType<dynamic> projectsState,
      List<Activity> activities});

  $PeriodCopyWith<$Res> get selectedPeriod;
  $DependenteStateTypeCopyWith<dynamic, $Res> get usersState;
  $DependenteStateTypeCopyWith<dynamic, $Res> get projectsState;
}

/// @nodoc
class __$$TimecardsOverviewStateLoadedImplCopyWithImpl<$Res>
    extends _$TimecardsOverviewStateCopyWithImpl<$Res,
        _$TimecardsOverviewStateLoadedImpl>
    implements _$$TimecardsOverviewStateLoadedImplCopyWith<$Res> {
  __$$TimecardsOverviewStateLoadedImplCopyWithImpl(
      _$TimecardsOverviewStateLoadedImpl _value,
      $Res Function(_$TimecardsOverviewStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? periods = null,
    Object? selectedPeriod = null,
    Object? timeCards = null,
    Object? employees = null,
    Object? usersState = null,
    Object? projects = null,
    Object? projectsState = null,
    Object? activities = null,
  }) {
    return _then(_$TimecardsOverviewStateLoadedImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      periods: null == periods
          ? _value._periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<Period>,
      selectedPeriod: null == selectedPeriod
          ? _value.selectedPeriod
          : selectedPeriod // ignore: cast_nullable_to_non_nullable
              as Period,
      timeCards: null == timeCards
          ? _value._timeCards
          : timeCards // ignore: cast_nullable_to_non_nullable
              as List<Timecard>,
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      usersState: null == usersState
          ? _value.usersState
          : usersState // ignore: cast_nullable_to_non_nullable
              as DependenteStateType<dynamic>,
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      projectsState: null == projectsState
          ? _value.projectsState
          : projectsState // ignore: cast_nullable_to_non_nullable
              as DependenteStateType<dynamic>,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res> get selectedPeriod {
    return $PeriodCopyWith<$Res>(_value.selectedPeriod, (value) {
      return _then(_value.copyWith(selectedPeriod: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenteStateTypeCopyWith<dynamic, $Res> get usersState {
    return $DependenteStateTypeCopyWith<dynamic, $Res>(_value.usersState,
        (value) {
      return _then(_value.copyWith(usersState: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenteStateTypeCopyWith<dynamic, $Res> get projectsState {
    return $DependenteStateTypeCopyWith<dynamic, $Res>(_value.projectsState,
        (value) {
      return _then(_value.copyWith(projectsState: value));
    });
  }
}

/// @nodoc

class _$TimecardsOverviewStateLoadedImpl
    implements TimecardsOverviewStateLoaded {
  const _$TimecardsOverviewStateLoadedImpl(
      {required this.employeeId,
      required final List<Period> periods,
      required this.selectedPeriod,
      required final List<Timecard> timeCards,
      required final List<Employee> employees,
      required this.usersState,
      required final List<Project> projects,
      required this.projectsState,
      required final List<Activity> activities})
      : _periods = periods,
        _timeCards = timeCards,
        _employees = employees,
        _projects = projects,
        _activities = activities;

  @override
  final String employeeId;
  final List<Period> _periods;
  @override
  List<Period> get periods {
    if (_periods is EqualUnmodifiableListView) return _periods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_periods);
  }

  @override
  final Period selectedPeriod;
  final List<Timecard> _timeCards;
  @override
  List<Timecard> get timeCards {
    if (_timeCards is EqualUnmodifiableListView) return _timeCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeCards);
  }

  final List<Employee> _employees;
  @override
  List<Employee> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  final DependenteStateType<dynamic> usersState;
  final List<Project> _projects;
  @override
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  final DependenteStateType<dynamic> projectsState;
  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  String toString() {
    return 'TimecardsOverviewState.loaded(employeeId: $employeeId, periods: $periods, selectedPeriod: $selectedPeriod, timeCards: $timeCards, employees: $employees, usersState: $usersState, projects: $projects, projectsState: $projectsState, activities: $activities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimecardsOverviewStateLoadedImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            const DeepCollectionEquality().equals(other._periods, _periods) &&
            (identical(other.selectedPeriod, selectedPeriod) ||
                other.selectedPeriod == selectedPeriod) &&
            const DeepCollectionEquality()
                .equals(other._timeCards, _timeCards) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            (identical(other.usersState, usersState) ||
                other.usersState == usersState) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.projectsState, projectsState) ||
                other.projectsState == projectsState) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      employeeId,
      const DeepCollectionEquality().hash(_periods),
      selectedPeriod,
      const DeepCollectionEquality().hash(_timeCards),
      const DeepCollectionEquality().hash(_employees),
      usersState,
      const DeepCollectionEquality().hash(_projects),
      projectsState,
      const DeepCollectionEquality().hash(_activities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimecardsOverviewStateLoadedImplCopyWith<
          _$TimecardsOverviewStateLoadedImpl>
      get copyWith => __$$TimecardsOverviewStateLoadedImplCopyWithImpl<
          _$TimecardsOverviewStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Period> periods, Period selectedPeriod)
        loading,
    required TResult Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)
        loaded,
  }) {
    return loaded(employeeId, periods, selectedPeriod, timeCards, employees,
        usersState, projects, projectsState, activities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<Period> periods, Period selectedPeriod)? loading,
    TResult? Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)?
        loaded,
  }) {
    return loaded?.call(employeeId, periods, selectedPeriod, timeCards,
        employees, usersState, projects, projectsState, activities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Period> periods, Period selectedPeriod)? loading,
    TResult Function(
            String employeeId,
            List<Period> periods,
            Period selectedPeriod,
            List<Timecard> timeCards,
            List<Employee> employees,
            DependenteStateType<dynamic> usersState,
            List<Project> projects,
            DependenteStateType<dynamic> projectsState,
            List<Activity> activities)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(employeeId, periods, selectedPeriod, timeCards, employees,
          usersState, projects, projectsState, activities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimecardsOverviewStateEmpty value) empty,
    required TResult Function(TimecardsOverviewStateLoading value) loading,
    required TResult Function(TimecardsOverviewStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimecardsOverviewStateEmpty value)? empty,
    TResult? Function(TimecardsOverviewStateLoading value)? loading,
    TResult? Function(TimecardsOverviewStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimecardsOverviewStateEmpty value)? empty,
    TResult Function(TimecardsOverviewStateLoading value)? loading,
    TResult Function(TimecardsOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TimecardsOverviewStateLoaded implements TimecardsOverviewState {
  const factory TimecardsOverviewStateLoaded(
          {required final String employeeId,
          required final List<Period> periods,
          required final Period selectedPeriod,
          required final List<Timecard> timeCards,
          required final List<Employee> employees,
          required final DependenteStateType<dynamic> usersState,
          required final List<Project> projects,
          required final DependenteStateType<dynamic> projectsState,
          required final List<Activity> activities}) =
      _$TimecardsOverviewStateLoadedImpl;

  String get employeeId;
  List<Period> get periods;
  Period get selectedPeriod;
  List<Timecard> get timeCards;
  List<Employee> get employees;
  DependenteStateType<dynamic> get usersState;
  List<Project> get projects;
  DependenteStateType<dynamic> get projectsState;
  List<Activity> get activities;
  @JsonKey(ignore: true)
  _$$TimecardsOverviewStateLoadedImplCopyWith<
          _$TimecardsOverviewStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
