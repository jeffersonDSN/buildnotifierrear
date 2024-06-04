// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsersOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(User selectedUser) changeselectedUser,
    required TResult Function(DependenteStateType<dynamic> timeCardsState)
        updateTimeCardState,
    required TResult Function(DateTime selectedDay) updateSelectedDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(User selectedUser)? changeselectedUser,
    TResult? Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    TResult? Function(DateTime selectedDay)? updateSelectedDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(User selectedUser)? changeselectedUser,
    TResult Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    TResult Function(DateTime selectedDay)? updateSelectedDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersOverviewEventLoad value) load,
    required TResult Function(UsersOverviewEventChangeselectedUser value)
        changeselectedUser,
    required TResult Function(UsersOverviewEventUpdateTimeCardState value)
        updateTimeCardState,
    required TResult Function(UsersOverviewEventUpdateSelectedDay value)
        updateSelectedDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewEventLoad value)? load,
    TResult? Function(UsersOverviewEventChangeselectedUser value)?
        changeselectedUser,
    TResult? Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
    TResult? Function(UsersOverviewEventUpdateSelectedDay value)?
        updateSelectedDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewEventLoad value)? load,
    TResult Function(UsersOverviewEventChangeselectedUser value)?
        changeselectedUser,
    TResult Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
    TResult Function(UsersOverviewEventUpdateSelectedDay value)?
        updateSelectedDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersOverviewEventCopyWith<$Res> {
  factory $UsersOverviewEventCopyWith(
          UsersOverviewEvent value, $Res Function(UsersOverviewEvent) then) =
      _$UsersOverviewEventCopyWithImpl<$Res, UsersOverviewEvent>;
}

/// @nodoc
class _$UsersOverviewEventCopyWithImpl<$Res, $Val extends UsersOverviewEvent>
    implements $UsersOverviewEventCopyWith<$Res> {
  _$UsersOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UsersOverviewEventLoadImplCopyWith<$Res> {
  factory _$$UsersOverviewEventLoadImplCopyWith(
          _$UsersOverviewEventLoadImpl value,
          $Res Function(_$UsersOverviewEventLoadImpl) then) =
      __$$UsersOverviewEventLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersOverviewEventLoadImplCopyWithImpl<$Res>
    extends _$UsersOverviewEventCopyWithImpl<$Res, _$UsersOverviewEventLoadImpl>
    implements _$$UsersOverviewEventLoadImplCopyWith<$Res> {
  __$$UsersOverviewEventLoadImplCopyWithImpl(
      _$UsersOverviewEventLoadImpl _value,
      $Res Function(_$UsersOverviewEventLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UsersOverviewEventLoadImpl implements UsersOverviewEventLoad {
  const _$UsersOverviewEventLoadImpl();

  @override
  String toString() {
    return 'UsersOverviewEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersOverviewEventLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(User selectedUser) changeselectedUser,
    required TResult Function(DependenteStateType<dynamic> timeCardsState)
        updateTimeCardState,
    required TResult Function(DateTime selectedDay) updateSelectedDay,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(User selectedUser)? changeselectedUser,
    TResult? Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    TResult? Function(DateTime selectedDay)? updateSelectedDay,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(User selectedUser)? changeselectedUser,
    TResult Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    TResult Function(DateTime selectedDay)? updateSelectedDay,
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
    required TResult Function(UsersOverviewEventLoad value) load,
    required TResult Function(UsersOverviewEventChangeselectedUser value)
        changeselectedUser,
    required TResult Function(UsersOverviewEventUpdateTimeCardState value)
        updateTimeCardState,
    required TResult Function(UsersOverviewEventUpdateSelectedDay value)
        updateSelectedDay,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewEventLoad value)? load,
    TResult? Function(UsersOverviewEventChangeselectedUser value)?
        changeselectedUser,
    TResult? Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
    TResult? Function(UsersOverviewEventUpdateSelectedDay value)?
        updateSelectedDay,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewEventLoad value)? load,
    TResult Function(UsersOverviewEventChangeselectedUser value)?
        changeselectedUser,
    TResult Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
    TResult Function(UsersOverviewEventUpdateSelectedDay value)?
        updateSelectedDay,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class UsersOverviewEventLoad implements UsersOverviewEvent {
  const factory UsersOverviewEventLoad() = _$UsersOverviewEventLoadImpl;
}

/// @nodoc
abstract class _$$UsersOverviewEventChangeselectedUserImplCopyWith<$Res> {
  factory _$$UsersOverviewEventChangeselectedUserImplCopyWith(
          _$UsersOverviewEventChangeselectedUserImpl value,
          $Res Function(_$UsersOverviewEventChangeselectedUserImpl) then) =
      __$$UsersOverviewEventChangeselectedUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User selectedUser});

  $UserCopyWith<$Res> get selectedUser;
}

/// @nodoc
class __$$UsersOverviewEventChangeselectedUserImplCopyWithImpl<$Res>
    extends _$UsersOverviewEventCopyWithImpl<$Res,
        _$UsersOverviewEventChangeselectedUserImpl>
    implements _$$UsersOverviewEventChangeselectedUserImplCopyWith<$Res> {
  __$$UsersOverviewEventChangeselectedUserImplCopyWithImpl(
      _$UsersOverviewEventChangeselectedUserImpl _value,
      $Res Function(_$UsersOverviewEventChangeselectedUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUser = null,
  }) {
    return _then(_$UsersOverviewEventChangeselectedUserImpl(
      selectedUser: null == selectedUser
          ? _value.selectedUser
          : selectedUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get selectedUser {
    return $UserCopyWith<$Res>(_value.selectedUser, (value) {
      return _then(_value.copyWith(selectedUser: value));
    });
  }
}

/// @nodoc

class _$UsersOverviewEventChangeselectedUserImpl
    implements UsersOverviewEventChangeselectedUser {
  const _$UsersOverviewEventChangeselectedUserImpl(
      {required this.selectedUser});

  @override
  final User selectedUser;

  @override
  String toString() {
    return 'UsersOverviewEvent.changeselectedUser(selectedUser: $selectedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersOverviewEventChangeselectedUserImpl &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersOverviewEventChangeselectedUserImplCopyWith<
          _$UsersOverviewEventChangeselectedUserImpl>
      get copyWith => __$$UsersOverviewEventChangeselectedUserImplCopyWithImpl<
          _$UsersOverviewEventChangeselectedUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(User selectedUser) changeselectedUser,
    required TResult Function(DependenteStateType<dynamic> timeCardsState)
        updateTimeCardState,
    required TResult Function(DateTime selectedDay) updateSelectedDay,
  }) {
    return changeselectedUser(selectedUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(User selectedUser)? changeselectedUser,
    TResult? Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    TResult? Function(DateTime selectedDay)? updateSelectedDay,
  }) {
    return changeselectedUser?.call(selectedUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(User selectedUser)? changeselectedUser,
    TResult Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    TResult Function(DateTime selectedDay)? updateSelectedDay,
    required TResult orElse(),
  }) {
    if (changeselectedUser != null) {
      return changeselectedUser(selectedUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersOverviewEventLoad value) load,
    required TResult Function(UsersOverviewEventChangeselectedUser value)
        changeselectedUser,
    required TResult Function(UsersOverviewEventUpdateTimeCardState value)
        updateTimeCardState,
    required TResult Function(UsersOverviewEventUpdateSelectedDay value)
        updateSelectedDay,
  }) {
    return changeselectedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewEventLoad value)? load,
    TResult? Function(UsersOverviewEventChangeselectedUser value)?
        changeselectedUser,
    TResult? Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
    TResult? Function(UsersOverviewEventUpdateSelectedDay value)?
        updateSelectedDay,
  }) {
    return changeselectedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewEventLoad value)? load,
    TResult Function(UsersOverviewEventChangeselectedUser value)?
        changeselectedUser,
    TResult Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
    TResult Function(UsersOverviewEventUpdateSelectedDay value)?
        updateSelectedDay,
    required TResult orElse(),
  }) {
    if (changeselectedUser != null) {
      return changeselectedUser(this);
    }
    return orElse();
  }
}

abstract class UsersOverviewEventChangeselectedUser
    implements UsersOverviewEvent {
  const factory UsersOverviewEventChangeselectedUser(
          {required final User selectedUser}) =
      _$UsersOverviewEventChangeselectedUserImpl;

  User get selectedUser;
  @JsonKey(ignore: true)
  _$$UsersOverviewEventChangeselectedUserImplCopyWith<
          _$UsersOverviewEventChangeselectedUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersOverviewEventUpdateTimeCardStateImplCopyWith<$Res> {
  factory _$$UsersOverviewEventUpdateTimeCardStateImplCopyWith(
          _$UsersOverviewEventUpdateTimeCardStateImpl value,
          $Res Function(_$UsersOverviewEventUpdateTimeCardStateImpl) then) =
      __$$UsersOverviewEventUpdateTimeCardStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DependenteStateType<dynamic> timeCardsState});

  $DependenteStateTypeCopyWith<dynamic, $Res> get timeCardsState;
}

/// @nodoc
class __$$UsersOverviewEventUpdateTimeCardStateImplCopyWithImpl<$Res>
    extends _$UsersOverviewEventCopyWithImpl<$Res,
        _$UsersOverviewEventUpdateTimeCardStateImpl>
    implements _$$UsersOverviewEventUpdateTimeCardStateImplCopyWith<$Res> {
  __$$UsersOverviewEventUpdateTimeCardStateImplCopyWithImpl(
      _$UsersOverviewEventUpdateTimeCardStateImpl _value,
      $Res Function(_$UsersOverviewEventUpdateTimeCardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeCardsState = null,
  }) {
    return _then(_$UsersOverviewEventUpdateTimeCardStateImpl(
      timeCardsState: null == timeCardsState
          ? _value.timeCardsState
          : timeCardsState // ignore: cast_nullable_to_non_nullable
              as DependenteStateType<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenteStateTypeCopyWith<dynamic, $Res> get timeCardsState {
    return $DependenteStateTypeCopyWith<dynamic, $Res>(_value.timeCardsState,
        (value) {
      return _then(_value.copyWith(timeCardsState: value));
    });
  }
}

/// @nodoc

class _$UsersOverviewEventUpdateTimeCardStateImpl
    implements UsersOverviewEventUpdateTimeCardState {
  const _$UsersOverviewEventUpdateTimeCardStateImpl(
      {required this.timeCardsState});

  @override
  final DependenteStateType<dynamic> timeCardsState;

  @override
  String toString() {
    return 'UsersOverviewEvent.updateTimeCardState(timeCardsState: $timeCardsState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersOverviewEventUpdateTimeCardStateImpl &&
            (identical(other.timeCardsState, timeCardsState) ||
                other.timeCardsState == timeCardsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeCardsState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersOverviewEventUpdateTimeCardStateImplCopyWith<
          _$UsersOverviewEventUpdateTimeCardStateImpl>
      get copyWith => __$$UsersOverviewEventUpdateTimeCardStateImplCopyWithImpl<
          _$UsersOverviewEventUpdateTimeCardStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(User selectedUser) changeselectedUser,
    required TResult Function(DependenteStateType<dynamic> timeCardsState)
        updateTimeCardState,
    required TResult Function(DateTime selectedDay) updateSelectedDay,
  }) {
    return updateTimeCardState(timeCardsState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(User selectedUser)? changeselectedUser,
    TResult? Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    TResult? Function(DateTime selectedDay)? updateSelectedDay,
  }) {
    return updateTimeCardState?.call(timeCardsState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(User selectedUser)? changeselectedUser,
    TResult Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    TResult Function(DateTime selectedDay)? updateSelectedDay,
    required TResult orElse(),
  }) {
    if (updateTimeCardState != null) {
      return updateTimeCardState(timeCardsState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersOverviewEventLoad value) load,
    required TResult Function(UsersOverviewEventChangeselectedUser value)
        changeselectedUser,
    required TResult Function(UsersOverviewEventUpdateTimeCardState value)
        updateTimeCardState,
    required TResult Function(UsersOverviewEventUpdateSelectedDay value)
        updateSelectedDay,
  }) {
    return updateTimeCardState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewEventLoad value)? load,
    TResult? Function(UsersOverviewEventChangeselectedUser value)?
        changeselectedUser,
    TResult? Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
    TResult? Function(UsersOverviewEventUpdateSelectedDay value)?
        updateSelectedDay,
  }) {
    return updateTimeCardState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewEventLoad value)? load,
    TResult Function(UsersOverviewEventChangeselectedUser value)?
        changeselectedUser,
    TResult Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
    TResult Function(UsersOverviewEventUpdateSelectedDay value)?
        updateSelectedDay,
    required TResult orElse(),
  }) {
    if (updateTimeCardState != null) {
      return updateTimeCardState(this);
    }
    return orElse();
  }
}

abstract class UsersOverviewEventUpdateTimeCardState
    implements UsersOverviewEvent {
  const factory UsersOverviewEventUpdateTimeCardState(
          {required final DependenteStateType<dynamic> timeCardsState}) =
      _$UsersOverviewEventUpdateTimeCardStateImpl;

  DependenteStateType<dynamic> get timeCardsState;
  @JsonKey(ignore: true)
  _$$UsersOverviewEventUpdateTimeCardStateImplCopyWith<
          _$UsersOverviewEventUpdateTimeCardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersOverviewEventUpdateSelectedDayImplCopyWith<$Res> {
  factory _$$UsersOverviewEventUpdateSelectedDayImplCopyWith(
          _$UsersOverviewEventUpdateSelectedDayImpl value,
          $Res Function(_$UsersOverviewEventUpdateSelectedDayImpl) then) =
      __$$UsersOverviewEventUpdateSelectedDayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDay});
}

/// @nodoc
class __$$UsersOverviewEventUpdateSelectedDayImplCopyWithImpl<$Res>
    extends _$UsersOverviewEventCopyWithImpl<$Res,
        _$UsersOverviewEventUpdateSelectedDayImpl>
    implements _$$UsersOverviewEventUpdateSelectedDayImplCopyWith<$Res> {
  __$$UsersOverviewEventUpdateSelectedDayImplCopyWithImpl(
      _$UsersOverviewEventUpdateSelectedDayImpl _value,
      $Res Function(_$UsersOverviewEventUpdateSelectedDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = null,
  }) {
    return _then(_$UsersOverviewEventUpdateSelectedDayImpl(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UsersOverviewEventUpdateSelectedDayImpl
    implements UsersOverviewEventUpdateSelectedDay {
  const _$UsersOverviewEventUpdateSelectedDayImpl({required this.selectedDay});

  @override
  final DateTime selectedDay;

  @override
  String toString() {
    return 'UsersOverviewEvent.updateSelectedDay(selectedDay: $selectedDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersOverviewEventUpdateSelectedDayImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersOverviewEventUpdateSelectedDayImplCopyWith<
          _$UsersOverviewEventUpdateSelectedDayImpl>
      get copyWith => __$$UsersOverviewEventUpdateSelectedDayImplCopyWithImpl<
          _$UsersOverviewEventUpdateSelectedDayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(User selectedUser) changeselectedUser,
    required TResult Function(DependenteStateType<dynamic> timeCardsState)
        updateTimeCardState,
    required TResult Function(DateTime selectedDay) updateSelectedDay,
  }) {
    return updateSelectedDay(selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(User selectedUser)? changeselectedUser,
    TResult? Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    TResult? Function(DateTime selectedDay)? updateSelectedDay,
  }) {
    return updateSelectedDay?.call(selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(User selectedUser)? changeselectedUser,
    TResult Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    TResult Function(DateTime selectedDay)? updateSelectedDay,
    required TResult orElse(),
  }) {
    if (updateSelectedDay != null) {
      return updateSelectedDay(selectedDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersOverviewEventLoad value) load,
    required TResult Function(UsersOverviewEventChangeselectedUser value)
        changeselectedUser,
    required TResult Function(UsersOverviewEventUpdateTimeCardState value)
        updateTimeCardState,
    required TResult Function(UsersOverviewEventUpdateSelectedDay value)
        updateSelectedDay,
  }) {
    return updateSelectedDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewEventLoad value)? load,
    TResult? Function(UsersOverviewEventChangeselectedUser value)?
        changeselectedUser,
    TResult? Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
    TResult? Function(UsersOverviewEventUpdateSelectedDay value)?
        updateSelectedDay,
  }) {
    return updateSelectedDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewEventLoad value)? load,
    TResult Function(UsersOverviewEventChangeselectedUser value)?
        changeselectedUser,
    TResult Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
    TResult Function(UsersOverviewEventUpdateSelectedDay value)?
        updateSelectedDay,
    required TResult orElse(),
  }) {
    if (updateSelectedDay != null) {
      return updateSelectedDay(this);
    }
    return orElse();
  }
}

abstract class UsersOverviewEventUpdateSelectedDay
    implements UsersOverviewEvent {
  const factory UsersOverviewEventUpdateSelectedDay(
          {required final DateTime selectedDay}) =
      _$UsersOverviewEventUpdateSelectedDayImpl;

  DateTime get selectedDay;
  @JsonKey(ignore: true)
  _$$UsersOverviewEventUpdateSelectedDayImplCopyWith<
          _$UsersOverviewEventUpdateSelectedDayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersOverviewStateEmpty value) empty,
    required TResult Function(UsersOverviewStateLoading value) loading,
    required TResult Function(UsersOverviewStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewStateEmpty value)? empty,
    TResult? Function(UsersOverviewStateLoading value)? loading,
    TResult? Function(UsersOverviewStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewStateEmpty value)? empty,
    TResult Function(UsersOverviewStateLoading value)? loading,
    TResult Function(UsersOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersOverviewStateCopyWith<$Res> {
  factory $UsersOverviewStateCopyWith(
          UsersOverviewState value, $Res Function(UsersOverviewState) then) =
      _$UsersOverviewStateCopyWithImpl<$Res, UsersOverviewState>;
}

/// @nodoc
class _$UsersOverviewStateCopyWithImpl<$Res, $Val extends UsersOverviewState>
    implements $UsersOverviewStateCopyWith<$Res> {
  _$UsersOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UsersOverviewStateEmptyImplCopyWith<$Res> {
  factory _$$UsersOverviewStateEmptyImplCopyWith(
          _$UsersOverviewStateEmptyImpl value,
          $Res Function(_$UsersOverviewStateEmptyImpl) then) =
      __$$UsersOverviewStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersOverviewStateEmptyImplCopyWithImpl<$Res>
    extends _$UsersOverviewStateCopyWithImpl<$Res,
        _$UsersOverviewStateEmptyImpl>
    implements _$$UsersOverviewStateEmptyImplCopyWith<$Res> {
  __$$UsersOverviewStateEmptyImplCopyWithImpl(
      _$UsersOverviewStateEmptyImpl _value,
      $Res Function(_$UsersOverviewStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UsersOverviewStateEmptyImpl implements UsersOverviewStateEmpty {
  const _$UsersOverviewStateEmptyImpl();

  @override
  String toString() {
    return 'UsersOverviewState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersOverviewStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)
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
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)?
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
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)?
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
    required TResult Function(UsersOverviewStateEmpty value) empty,
    required TResult Function(UsersOverviewStateLoading value) loading,
    required TResult Function(UsersOverviewStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewStateEmpty value)? empty,
    TResult? Function(UsersOverviewStateLoading value)? loading,
    TResult? Function(UsersOverviewStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewStateEmpty value)? empty,
    TResult Function(UsersOverviewStateLoading value)? loading,
    TResult Function(UsersOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class UsersOverviewStateEmpty implements UsersOverviewState {
  const factory UsersOverviewStateEmpty() = _$UsersOverviewStateEmptyImpl;
}

/// @nodoc
abstract class _$$UsersOverviewStateLoadingImplCopyWith<$Res> {
  factory _$$UsersOverviewStateLoadingImplCopyWith(
          _$UsersOverviewStateLoadingImpl value,
          $Res Function(_$UsersOverviewStateLoadingImpl) then) =
      __$$UsersOverviewStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersOverviewStateLoadingImplCopyWithImpl<$Res>
    extends _$UsersOverviewStateCopyWithImpl<$Res,
        _$UsersOverviewStateLoadingImpl>
    implements _$$UsersOverviewStateLoadingImplCopyWith<$Res> {
  __$$UsersOverviewStateLoadingImplCopyWithImpl(
      _$UsersOverviewStateLoadingImpl _value,
      $Res Function(_$UsersOverviewStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UsersOverviewStateLoadingImpl implements UsersOverviewStateLoading {
  const _$UsersOverviewStateLoadingImpl();

  @override
  String toString() {
    return 'UsersOverviewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersOverviewStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)
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
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)?
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
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)?
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
    required TResult Function(UsersOverviewStateEmpty value) empty,
    required TResult Function(UsersOverviewStateLoading value) loading,
    required TResult Function(UsersOverviewStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewStateEmpty value)? empty,
    TResult? Function(UsersOverviewStateLoading value)? loading,
    TResult? Function(UsersOverviewStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewStateEmpty value)? empty,
    TResult Function(UsersOverviewStateLoading value)? loading,
    TResult Function(UsersOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UsersOverviewStateLoading implements UsersOverviewState {
  const factory UsersOverviewStateLoading() = _$UsersOverviewStateLoadingImpl;
}

/// @nodoc
abstract class _$$UsersOverviewStateLoadedImplCopyWith<$Res> {
  factory _$$UsersOverviewStateLoadedImplCopyWith(
          _$UsersOverviewStateLoadedImpl value,
          $Res Function(_$UsersOverviewStateLoadedImpl) then) =
      __$$UsersOverviewStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<User> users,
      User? selectedUser,
      List<TimeCard> timeCardsOfselectedUser,
      DependenteStateType<dynamic> timeCardsState,
      DateTime selectedDay,
      List<Appointment> appoitmentOfSelecedDayAndUser,
      DependenteStateType<dynamic> appoitmentCardsState});

  $UserCopyWith<$Res>? get selectedUser;
  $DependenteStateTypeCopyWith<dynamic, $Res> get timeCardsState;
  $DependenteStateTypeCopyWith<dynamic, $Res> get appoitmentCardsState;
}

/// @nodoc
class __$$UsersOverviewStateLoadedImplCopyWithImpl<$Res>
    extends _$UsersOverviewStateCopyWithImpl<$Res,
        _$UsersOverviewStateLoadedImpl>
    implements _$$UsersOverviewStateLoadedImplCopyWith<$Res> {
  __$$UsersOverviewStateLoadedImplCopyWithImpl(
      _$UsersOverviewStateLoadedImpl _value,
      $Res Function(_$UsersOverviewStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? selectedUser = freezed,
    Object? timeCardsOfselectedUser = null,
    Object? timeCardsState = null,
    Object? selectedDay = null,
    Object? appoitmentOfSelecedDayAndUser = null,
    Object? appoitmentCardsState = null,
  }) {
    return _then(_$UsersOverviewStateLoadedImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      selectedUser: freezed == selectedUser
          ? _value.selectedUser
          : selectedUser // ignore: cast_nullable_to_non_nullable
              as User?,
      timeCardsOfselectedUser: null == timeCardsOfselectedUser
          ? _value._timeCardsOfselectedUser
          : timeCardsOfselectedUser // ignore: cast_nullable_to_non_nullable
              as List<TimeCard>,
      timeCardsState: null == timeCardsState
          ? _value.timeCardsState
          : timeCardsState // ignore: cast_nullable_to_non_nullable
              as DependenteStateType<dynamic>,
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      appoitmentOfSelecedDayAndUser: null == appoitmentOfSelecedDayAndUser
          ? _value._appoitmentOfSelecedDayAndUser
          : appoitmentOfSelecedDayAndUser // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      appoitmentCardsState: null == appoitmentCardsState
          ? _value.appoitmentCardsState
          : appoitmentCardsState // ignore: cast_nullable_to_non_nullable
              as DependenteStateType<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get selectedUser {
    if (_value.selectedUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.selectedUser!, (value) {
      return _then(_value.copyWith(selectedUser: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenteStateTypeCopyWith<dynamic, $Res> get timeCardsState {
    return $DependenteStateTypeCopyWith<dynamic, $Res>(_value.timeCardsState,
        (value) {
      return _then(_value.copyWith(timeCardsState: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenteStateTypeCopyWith<dynamic, $Res> get appoitmentCardsState {
    return $DependenteStateTypeCopyWith<dynamic, $Res>(
        _value.appoitmentCardsState, (value) {
      return _then(_value.copyWith(appoitmentCardsState: value));
    });
  }
}

/// @nodoc

class _$UsersOverviewStateLoadedImpl implements UsersOverviewStateLoaded {
  const _$UsersOverviewStateLoadedImpl(
      {required final List<User> users,
      this.selectedUser,
      required final List<TimeCard> timeCardsOfselectedUser,
      required this.timeCardsState,
      required this.selectedDay,
      required final List<Appointment> appoitmentOfSelecedDayAndUser,
      required this.appoitmentCardsState})
      : _users = users,
        _timeCardsOfselectedUser = timeCardsOfselectedUser,
        _appoitmentOfSelecedDayAndUser = appoitmentOfSelecedDayAndUser;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final User? selectedUser;
  final List<TimeCard> _timeCardsOfselectedUser;
  @override
  List<TimeCard> get timeCardsOfselectedUser {
    if (_timeCardsOfselectedUser is EqualUnmodifiableListView)
      return _timeCardsOfselectedUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeCardsOfselectedUser);
  }

  @override
  final DependenteStateType<dynamic> timeCardsState;
  @override
  final DateTime selectedDay;
  final List<Appointment> _appoitmentOfSelecedDayAndUser;
  @override
  List<Appointment> get appoitmentOfSelecedDayAndUser {
    if (_appoitmentOfSelecedDayAndUser is EqualUnmodifiableListView)
      return _appoitmentOfSelecedDayAndUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appoitmentOfSelecedDayAndUser);
  }

  @override
  final DependenteStateType<dynamic> appoitmentCardsState;

  @override
  String toString() {
    return 'UsersOverviewState.loaded(users: $users, selectedUser: $selectedUser, timeCardsOfselectedUser: $timeCardsOfselectedUser, timeCardsState: $timeCardsState, selectedDay: $selectedDay, appoitmentOfSelecedDayAndUser: $appoitmentOfSelecedDayAndUser, appoitmentCardsState: $appoitmentCardsState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersOverviewStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser) &&
            const DeepCollectionEquality().equals(
                other._timeCardsOfselectedUser, _timeCardsOfselectedUser) &&
            (identical(other.timeCardsState, timeCardsState) ||
                other.timeCardsState == timeCardsState) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            const DeepCollectionEquality().equals(
                other._appoitmentOfSelecedDayAndUser,
                _appoitmentOfSelecedDayAndUser) &&
            (identical(other.appoitmentCardsState, appoitmentCardsState) ||
                other.appoitmentCardsState == appoitmentCardsState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      selectedUser,
      const DeepCollectionEquality().hash(_timeCardsOfselectedUser),
      timeCardsState,
      selectedDay,
      const DeepCollectionEquality().hash(_appoitmentOfSelecedDayAndUser),
      appoitmentCardsState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersOverviewStateLoadedImplCopyWith<_$UsersOverviewStateLoadedImpl>
      get copyWith => __$$UsersOverviewStateLoadedImplCopyWithImpl<
          _$UsersOverviewStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)
        loaded,
  }) {
    return loaded(users, selectedUser, timeCardsOfselectedUser, timeCardsState,
        selectedDay, appoitmentOfSelecedDayAndUser, appoitmentCardsState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)?
        loaded,
  }) {
    return loaded?.call(
        users,
        selectedUser,
        timeCardsOfselectedUser,
        timeCardsState,
        selectedDay,
        appoitmentOfSelecedDayAndUser,
        appoitmentCardsState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<User> users,
            User? selectedUser,
            List<TimeCard> timeCardsOfselectedUser,
            DependenteStateType<dynamic> timeCardsState,
            DateTime selectedDay,
            List<Appointment> appoitmentOfSelecedDayAndUser,
            DependenteStateType<dynamic> appoitmentCardsState)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          users,
          selectedUser,
          timeCardsOfselectedUser,
          timeCardsState,
          selectedDay,
          appoitmentOfSelecedDayAndUser,
          appoitmentCardsState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersOverviewStateEmpty value) empty,
    required TResult Function(UsersOverviewStateLoading value) loading,
    required TResult Function(UsersOverviewStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewStateEmpty value)? empty,
    TResult? Function(UsersOverviewStateLoading value)? loading,
    TResult? Function(UsersOverviewStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewStateEmpty value)? empty,
    TResult Function(UsersOverviewStateLoading value)? loading,
    TResult Function(UsersOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UsersOverviewStateLoaded implements UsersOverviewState {
  const factory UsersOverviewStateLoaded(
          {required final List<User> users,
          final User? selectedUser,
          required final List<TimeCard> timeCardsOfselectedUser,
          required final DependenteStateType<dynamic> timeCardsState,
          required final DateTime selectedDay,
          required final List<Appointment> appoitmentOfSelecedDayAndUser,
          required final DependenteStateType<dynamic> appoitmentCardsState}) =
      _$UsersOverviewStateLoadedImpl;

  List<User> get users;
  User? get selectedUser;
  List<TimeCard> get timeCardsOfselectedUser;
  DependenteStateType<dynamic> get timeCardsState;
  DateTime get selectedDay;
  List<Appointment> get appoitmentOfSelecedDayAndUser;
  DependenteStateType<dynamic> get appoitmentCardsState;
  @JsonKey(ignore: true)
  _$$UsersOverviewStateLoadedImplCopyWith<_$UsersOverviewStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
