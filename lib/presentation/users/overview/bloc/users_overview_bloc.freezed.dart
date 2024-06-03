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
    required TResult Function(User userSelected) changeUserSelected,
    required TResult Function(DependenteStateType<dynamic> timeCardsState)
        updateTimeCardState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(User userSelected)? changeUserSelected,
    TResult? Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(User userSelected)? changeUserSelected,
    TResult Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersOverviewEventLoad value) load,
    required TResult Function(UsersOverviewEventChangeUserSelected value)
        changeUserSelected,
    required TResult Function(UsersOverviewEventUpdateTimeCardState value)
        updateTimeCardState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewEventLoad value)? load,
    TResult? Function(UsersOverviewEventChangeUserSelected value)?
        changeUserSelected,
    TResult? Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewEventLoad value)? load,
    TResult Function(UsersOverviewEventChangeUserSelected value)?
        changeUserSelected,
    TResult Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
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
    required TResult Function(User userSelected) changeUserSelected,
    required TResult Function(DependenteStateType<dynamic> timeCardsState)
        updateTimeCardState,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(User userSelected)? changeUserSelected,
    TResult? Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(User userSelected)? changeUserSelected,
    TResult Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
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
    required TResult Function(UsersOverviewEventChangeUserSelected value)
        changeUserSelected,
    required TResult Function(UsersOverviewEventUpdateTimeCardState value)
        updateTimeCardState,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewEventLoad value)? load,
    TResult? Function(UsersOverviewEventChangeUserSelected value)?
        changeUserSelected,
    TResult? Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewEventLoad value)? load,
    TResult Function(UsersOverviewEventChangeUserSelected value)?
        changeUserSelected,
    TResult Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
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
abstract class _$$UsersOverviewEventChangeUserSelectedImplCopyWith<$Res> {
  factory _$$UsersOverviewEventChangeUserSelectedImplCopyWith(
          _$UsersOverviewEventChangeUserSelectedImpl value,
          $Res Function(_$UsersOverviewEventChangeUserSelectedImpl) then) =
      __$$UsersOverviewEventChangeUserSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User userSelected});

  $UserCopyWith<$Res> get userSelected;
}

/// @nodoc
class __$$UsersOverviewEventChangeUserSelectedImplCopyWithImpl<$Res>
    extends _$UsersOverviewEventCopyWithImpl<$Res,
        _$UsersOverviewEventChangeUserSelectedImpl>
    implements _$$UsersOverviewEventChangeUserSelectedImplCopyWith<$Res> {
  __$$UsersOverviewEventChangeUserSelectedImplCopyWithImpl(
      _$UsersOverviewEventChangeUserSelectedImpl _value,
      $Res Function(_$UsersOverviewEventChangeUserSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userSelected = null,
  }) {
    return _then(_$UsersOverviewEventChangeUserSelectedImpl(
      userSelected: null == userSelected
          ? _value.userSelected
          : userSelected // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userSelected {
    return $UserCopyWith<$Res>(_value.userSelected, (value) {
      return _then(_value.copyWith(userSelected: value));
    });
  }
}

/// @nodoc

class _$UsersOverviewEventChangeUserSelectedImpl
    implements UsersOverviewEventChangeUserSelected {
  const _$UsersOverviewEventChangeUserSelectedImpl(
      {required this.userSelected});

  @override
  final User userSelected;

  @override
  String toString() {
    return 'UsersOverviewEvent.changeUserSelected(userSelected: $userSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersOverviewEventChangeUserSelectedImpl &&
            (identical(other.userSelected, userSelected) ||
                other.userSelected == userSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersOverviewEventChangeUserSelectedImplCopyWith<
          _$UsersOverviewEventChangeUserSelectedImpl>
      get copyWith => __$$UsersOverviewEventChangeUserSelectedImplCopyWithImpl<
          _$UsersOverviewEventChangeUserSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(User userSelected) changeUserSelected,
    required TResult Function(DependenteStateType<dynamic> timeCardsState)
        updateTimeCardState,
  }) {
    return changeUserSelected(userSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(User userSelected)? changeUserSelected,
    TResult? Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
  }) {
    return changeUserSelected?.call(userSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(User userSelected)? changeUserSelected,
    TResult Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
    required TResult orElse(),
  }) {
    if (changeUserSelected != null) {
      return changeUserSelected(userSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersOverviewEventLoad value) load,
    required TResult Function(UsersOverviewEventChangeUserSelected value)
        changeUserSelected,
    required TResult Function(UsersOverviewEventUpdateTimeCardState value)
        updateTimeCardState,
  }) {
    return changeUserSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewEventLoad value)? load,
    TResult? Function(UsersOverviewEventChangeUserSelected value)?
        changeUserSelected,
    TResult? Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
  }) {
    return changeUserSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewEventLoad value)? load,
    TResult Function(UsersOverviewEventChangeUserSelected value)?
        changeUserSelected,
    TResult Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
    required TResult orElse(),
  }) {
    if (changeUserSelected != null) {
      return changeUserSelected(this);
    }
    return orElse();
  }
}

abstract class UsersOverviewEventChangeUserSelected
    implements UsersOverviewEvent {
  const factory UsersOverviewEventChangeUserSelected(
          {required final User userSelected}) =
      _$UsersOverviewEventChangeUserSelectedImpl;

  User get userSelected;
  @JsonKey(ignore: true)
  _$$UsersOverviewEventChangeUserSelectedImplCopyWith<
          _$UsersOverviewEventChangeUserSelectedImpl>
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
    required TResult Function(User userSelected) changeUserSelected,
    required TResult Function(DependenteStateType<dynamic> timeCardsState)
        updateTimeCardState,
  }) {
    return updateTimeCardState(timeCardsState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(User userSelected)? changeUserSelected,
    TResult? Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
  }) {
    return updateTimeCardState?.call(timeCardsState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(User userSelected)? changeUserSelected,
    TResult Function(DependenteStateType<dynamic> timeCardsState)?
        updateTimeCardState,
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
    required TResult Function(UsersOverviewEventChangeUserSelected value)
        changeUserSelected,
    required TResult Function(UsersOverviewEventUpdateTimeCardState value)
        updateTimeCardState,
  }) {
    return updateTimeCardState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersOverviewEventLoad value)? load,
    TResult? Function(UsersOverviewEventChangeUserSelected value)?
        changeUserSelected,
    TResult? Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
  }) {
    return updateTimeCardState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersOverviewEventLoad value)? load,
    TResult Function(UsersOverviewEventChangeUserSelected value)?
        changeUserSelected,
    TResult Function(UsersOverviewEventUpdateTimeCardState value)?
        updateTimeCardState,
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
mixin _$UsersOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<User> users,
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<User> users,
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<User> users,
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)?
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
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)
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
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)?
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
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)?
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
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)
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
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)?
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
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)?
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
      User? userSelected,
      List<TimeCard> timeCardsOfUserSelected,
      DependenteStateType<dynamic> timeCardsState});

  $UserCopyWith<$Res>? get userSelected;
  $DependenteStateTypeCopyWith<dynamic, $Res> get timeCardsState;
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
    Object? userSelected = freezed,
    Object? timeCardsOfUserSelected = null,
    Object? timeCardsState = null,
  }) {
    return _then(_$UsersOverviewStateLoadedImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      userSelected: freezed == userSelected
          ? _value.userSelected
          : userSelected // ignore: cast_nullable_to_non_nullable
              as User?,
      timeCardsOfUserSelected: null == timeCardsOfUserSelected
          ? _value._timeCardsOfUserSelected
          : timeCardsOfUserSelected // ignore: cast_nullable_to_non_nullable
              as List<TimeCard>,
      timeCardsState: null == timeCardsState
          ? _value.timeCardsState
          : timeCardsState // ignore: cast_nullable_to_non_nullable
              as DependenteStateType<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get userSelected {
    if (_value.userSelected == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.userSelected!, (value) {
      return _then(_value.copyWith(userSelected: value));
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
}

/// @nodoc

class _$UsersOverviewStateLoadedImpl implements UsersOverviewStateLoaded {
  const _$UsersOverviewStateLoadedImpl(
      {required final List<User> users,
      this.userSelected,
      required final List<TimeCard> timeCardsOfUserSelected,
      required this.timeCardsState})
      : _users = users,
        _timeCardsOfUserSelected = timeCardsOfUserSelected;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final User? userSelected;
  final List<TimeCard> _timeCardsOfUserSelected;
  @override
  List<TimeCard> get timeCardsOfUserSelected {
    if (_timeCardsOfUserSelected is EqualUnmodifiableListView)
      return _timeCardsOfUserSelected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeCardsOfUserSelected);
  }

  @override
  final DependenteStateType<dynamic> timeCardsState;

  @override
  String toString() {
    return 'UsersOverviewState.loaded(users: $users, userSelected: $userSelected, timeCardsOfUserSelected: $timeCardsOfUserSelected, timeCardsState: $timeCardsState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersOverviewStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.userSelected, userSelected) ||
                other.userSelected == userSelected) &&
            const DeepCollectionEquality().equals(
                other._timeCardsOfUserSelected, _timeCardsOfUserSelected) &&
            (identical(other.timeCardsState, timeCardsState) ||
                other.timeCardsState == timeCardsState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      userSelected,
      const DeepCollectionEquality().hash(_timeCardsOfUserSelected),
      timeCardsState);

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
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)
        loaded,
  }) {
    return loaded(users, userSelected, timeCardsOfUserSelected, timeCardsState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<User> users,
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)?
        loaded,
  }) {
    return loaded?.call(
        users, userSelected, timeCardsOfUserSelected, timeCardsState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<User> users,
            User? userSelected,
            List<TimeCard> timeCardsOfUserSelected,
            DependenteStateType<dynamic> timeCardsState)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          users, userSelected, timeCardsOfUserSelected, timeCardsState);
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
          final User? userSelected,
          required final List<TimeCard> timeCardsOfUserSelected,
          required final DependenteStateType<dynamic> timeCardsState}) =
      _$UsersOverviewStateLoadedImpl;

  List<User> get users;
  User? get userSelected;
  List<TimeCard> get timeCardsOfUserSelected;
  DependenteStateType<dynamic> get timeCardsState;
  @JsonKey(ignore: true)
  _$$UsersOverviewStateLoadedImplCopyWith<_$UsersOverviewStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
