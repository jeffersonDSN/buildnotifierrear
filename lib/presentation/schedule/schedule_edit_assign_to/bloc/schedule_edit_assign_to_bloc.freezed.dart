// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_edit_assign_to_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEditAssignToEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AppointmentUser> assignTo) load,
    required TResult Function(bool check, User user) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AppointmentUser> assignTo)? load,
    TResult? Function(bool check, User user)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AppointmentUser> assignTo)? load,
    TResult Function(bool check, User user)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditAssignToEventLoad value) load,
    required TResult Function(ScheduleEditCheck value) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditAssignToEventLoad value)? load,
    TResult? Function(ScheduleEditCheck value)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditAssignToEventLoad value)? load,
    TResult Function(ScheduleEditCheck value)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEditAssignToEventCopyWith<$Res> {
  factory $ScheduleEditAssignToEventCopyWith(ScheduleEditAssignToEvent value,
          $Res Function(ScheduleEditAssignToEvent) then) =
      _$ScheduleEditAssignToEventCopyWithImpl<$Res, ScheduleEditAssignToEvent>;
}

/// @nodoc
class _$ScheduleEditAssignToEventCopyWithImpl<$Res,
        $Val extends ScheduleEditAssignToEvent>
    implements $ScheduleEditAssignToEventCopyWith<$Res> {
  _$ScheduleEditAssignToEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScheduleEditAssignToEventLoadImplCopyWith<$Res> {
  factory _$$ScheduleEditAssignToEventLoadImplCopyWith(
          _$ScheduleEditAssignToEventLoadImpl value,
          $Res Function(_$ScheduleEditAssignToEventLoadImpl) then) =
      __$$ScheduleEditAssignToEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppointmentUser> assignTo});
}

/// @nodoc
class __$$ScheduleEditAssignToEventLoadImplCopyWithImpl<$Res>
    extends _$ScheduleEditAssignToEventCopyWithImpl<$Res,
        _$ScheduleEditAssignToEventLoadImpl>
    implements _$$ScheduleEditAssignToEventLoadImplCopyWith<$Res> {
  __$$ScheduleEditAssignToEventLoadImplCopyWithImpl(
      _$ScheduleEditAssignToEventLoadImpl _value,
      $Res Function(_$ScheduleEditAssignToEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignTo = null,
  }) {
    return _then(_$ScheduleEditAssignToEventLoadImpl(
      assignTo: null == assignTo
          ? _value._assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as List<AppointmentUser>,
    ));
  }
}

/// @nodoc

class _$ScheduleEditAssignToEventLoadImpl
    implements ScheduleEditAssignToEventLoad {
  const _$ScheduleEditAssignToEventLoadImpl(
      {required final List<AppointmentUser> assignTo})
      : _assignTo = assignTo;

  final List<AppointmentUser> _assignTo;
  @override
  List<AppointmentUser> get assignTo {
    if (_assignTo is EqualUnmodifiableListView) return _assignTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignTo);
  }

  @override
  String toString() {
    return 'ScheduleEditAssignToEvent.load(assignTo: $assignTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditAssignToEventLoadImpl &&
            const DeepCollectionEquality().equals(other._assignTo, _assignTo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assignTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEditAssignToEventLoadImplCopyWith<
          _$ScheduleEditAssignToEventLoadImpl>
      get copyWith => __$$ScheduleEditAssignToEventLoadImplCopyWithImpl<
          _$ScheduleEditAssignToEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AppointmentUser> assignTo) load,
    required TResult Function(bool check, User user) check,
  }) {
    return load(assignTo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AppointmentUser> assignTo)? load,
    TResult? Function(bool check, User user)? check,
  }) {
    return load?.call(assignTo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AppointmentUser> assignTo)? load,
    TResult Function(bool check, User user)? check,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(assignTo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditAssignToEventLoad value) load,
    required TResult Function(ScheduleEditCheck value) check,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditAssignToEventLoad value)? load,
    TResult? Function(ScheduleEditCheck value)? check,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditAssignToEventLoad value)? load,
    TResult Function(ScheduleEditCheck value)? check,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditAssignToEventLoad
    implements ScheduleEditAssignToEvent {
  const factory ScheduleEditAssignToEventLoad(
          {required final List<AppointmentUser> assignTo}) =
      _$ScheduleEditAssignToEventLoadImpl;

  List<AppointmentUser> get assignTo;
  @JsonKey(ignore: true)
  _$$ScheduleEditAssignToEventLoadImplCopyWith<
          _$ScheduleEditAssignToEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEditCheckImplCopyWith<$Res> {
  factory _$$ScheduleEditCheckImplCopyWith(_$ScheduleEditCheckImpl value,
          $Res Function(_$ScheduleEditCheckImpl) then) =
      __$$ScheduleEditCheckImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool check, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ScheduleEditCheckImplCopyWithImpl<$Res>
    extends _$ScheduleEditAssignToEventCopyWithImpl<$Res,
        _$ScheduleEditCheckImpl>
    implements _$$ScheduleEditCheckImplCopyWith<$Res> {
  __$$ScheduleEditCheckImplCopyWithImpl(_$ScheduleEditCheckImpl _value,
      $Res Function(_$ScheduleEditCheckImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? check = null,
    Object? user = null,
  }) {
    return _then(_$ScheduleEditCheckImpl(
      check: null == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ScheduleEditCheckImpl implements ScheduleEditCheck {
  const _$ScheduleEditCheckImpl({required this.check, required this.user});

  @override
  final bool check;
  @override
  final User user;

  @override
  String toString() {
    return 'ScheduleEditAssignToEvent.check(check: $check, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditCheckImpl &&
            (identical(other.check, check) || other.check == check) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, check, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEditCheckImplCopyWith<_$ScheduleEditCheckImpl> get copyWith =>
      __$$ScheduleEditCheckImplCopyWithImpl<_$ScheduleEditCheckImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AppointmentUser> assignTo) load,
    required TResult Function(bool check, User user) check,
  }) {
    return check(this.check, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AppointmentUser> assignTo)? load,
    TResult? Function(bool check, User user)? check,
  }) {
    return check?.call(this.check, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AppointmentUser> assignTo)? load,
    TResult Function(bool check, User user)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this.check, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditAssignToEventLoad value) load,
    required TResult Function(ScheduleEditCheck value) check,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditAssignToEventLoad value)? load,
    TResult? Function(ScheduleEditCheck value)? check,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditAssignToEventLoad value)? load,
    TResult Function(ScheduleEditCheck value)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditCheck implements ScheduleEditAssignToEvent {
  const factory ScheduleEditCheck(
      {required final bool check,
      required final User user}) = _$ScheduleEditCheckImpl;

  bool get check;
  User get user;
  @JsonKey(ignore: true)
  _$$ScheduleEditCheckImplCopyWith<_$ScheduleEditCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleEditAssignToState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<AppointmentUser> assignTo) loading,
    required TResult Function(List<AppointmentUser> assignTo, List<User> users)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<AppointmentUser> assignTo)? loading,
    TResult? Function(List<AppointmentUser> assignTo, List<User> users)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<AppointmentUser> assignTo)? loading,
    TResult Function(List<AppointmentUser> assignTo, List<User> users)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditAssignToStateEmpty value) empty,
    required TResult Function(ScheduleEditAssignToStateLoading value) loading,
    required TResult Function(ScheduleEditAssignToStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditAssignToStateEmpty value)? empty,
    TResult? Function(ScheduleEditAssignToStateLoading value)? loading,
    TResult? Function(ScheduleEditAssignToStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditAssignToStateEmpty value)? empty,
    TResult Function(ScheduleEditAssignToStateLoading value)? loading,
    TResult Function(ScheduleEditAssignToStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEditAssignToStateCopyWith<$Res> {
  factory $ScheduleEditAssignToStateCopyWith(ScheduleEditAssignToState value,
          $Res Function(ScheduleEditAssignToState) then) =
      _$ScheduleEditAssignToStateCopyWithImpl<$Res, ScheduleEditAssignToState>;
}

/// @nodoc
class _$ScheduleEditAssignToStateCopyWithImpl<$Res,
        $Val extends ScheduleEditAssignToState>
    implements $ScheduleEditAssignToStateCopyWith<$Res> {
  _$ScheduleEditAssignToStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScheduleEditAssignToStateEmptyImplCopyWith<$Res> {
  factory _$$ScheduleEditAssignToStateEmptyImplCopyWith(
          _$ScheduleEditAssignToStateEmptyImpl value,
          $Res Function(_$ScheduleEditAssignToStateEmptyImpl) then) =
      __$$ScheduleEditAssignToStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleEditAssignToStateEmptyImplCopyWithImpl<$Res>
    extends _$ScheduleEditAssignToStateCopyWithImpl<$Res,
        _$ScheduleEditAssignToStateEmptyImpl>
    implements _$$ScheduleEditAssignToStateEmptyImplCopyWith<$Res> {
  __$$ScheduleEditAssignToStateEmptyImplCopyWithImpl(
      _$ScheduleEditAssignToStateEmptyImpl _value,
      $Res Function(_$ScheduleEditAssignToStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScheduleEditAssignToStateEmptyImpl
    implements ScheduleEditAssignToStateEmpty {
  const _$ScheduleEditAssignToStateEmptyImpl();

  @override
  String toString() {
    return 'ScheduleEditAssignToState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditAssignToStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<AppointmentUser> assignTo) loading,
    required TResult Function(List<AppointmentUser> assignTo, List<User> users)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<AppointmentUser> assignTo)? loading,
    TResult? Function(List<AppointmentUser> assignTo, List<User> users)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<AppointmentUser> assignTo)? loading,
    TResult Function(List<AppointmentUser> assignTo, List<User> users)? loaded,
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
    required TResult Function(ScheduleEditAssignToStateEmpty value) empty,
    required TResult Function(ScheduleEditAssignToStateLoading value) loading,
    required TResult Function(ScheduleEditAssignToStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditAssignToStateEmpty value)? empty,
    TResult? Function(ScheduleEditAssignToStateLoading value)? loading,
    TResult? Function(ScheduleEditAssignToStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditAssignToStateEmpty value)? empty,
    TResult Function(ScheduleEditAssignToStateLoading value)? loading,
    TResult Function(ScheduleEditAssignToStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditAssignToStateEmpty
    implements ScheduleEditAssignToState {
  const factory ScheduleEditAssignToStateEmpty() =
      _$ScheduleEditAssignToStateEmptyImpl;
}

/// @nodoc
abstract class _$$ScheduleEditAssignToStateLoadingImplCopyWith<$Res> {
  factory _$$ScheduleEditAssignToStateLoadingImplCopyWith(
          _$ScheduleEditAssignToStateLoadingImpl value,
          $Res Function(_$ScheduleEditAssignToStateLoadingImpl) then) =
      __$$ScheduleEditAssignToStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppointmentUser> assignTo});
}

/// @nodoc
class __$$ScheduleEditAssignToStateLoadingImplCopyWithImpl<$Res>
    extends _$ScheduleEditAssignToStateCopyWithImpl<$Res,
        _$ScheduleEditAssignToStateLoadingImpl>
    implements _$$ScheduleEditAssignToStateLoadingImplCopyWith<$Res> {
  __$$ScheduleEditAssignToStateLoadingImplCopyWithImpl(
      _$ScheduleEditAssignToStateLoadingImpl _value,
      $Res Function(_$ScheduleEditAssignToStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignTo = null,
  }) {
    return _then(_$ScheduleEditAssignToStateLoadingImpl(
      assignTo: null == assignTo
          ? _value._assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as List<AppointmentUser>,
    ));
  }
}

/// @nodoc

class _$ScheduleEditAssignToStateLoadingImpl
    implements ScheduleEditAssignToStateLoading {
  const _$ScheduleEditAssignToStateLoadingImpl(
      {required final List<AppointmentUser> assignTo})
      : _assignTo = assignTo;

  final List<AppointmentUser> _assignTo;
  @override
  List<AppointmentUser> get assignTo {
    if (_assignTo is EqualUnmodifiableListView) return _assignTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignTo);
  }

  @override
  String toString() {
    return 'ScheduleEditAssignToState.loading(assignTo: $assignTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditAssignToStateLoadingImpl &&
            const DeepCollectionEquality().equals(other._assignTo, _assignTo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assignTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEditAssignToStateLoadingImplCopyWith<
          _$ScheduleEditAssignToStateLoadingImpl>
      get copyWith => __$$ScheduleEditAssignToStateLoadingImplCopyWithImpl<
          _$ScheduleEditAssignToStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<AppointmentUser> assignTo) loading,
    required TResult Function(List<AppointmentUser> assignTo, List<User> users)
        loaded,
  }) {
    return loading(assignTo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<AppointmentUser> assignTo)? loading,
    TResult? Function(List<AppointmentUser> assignTo, List<User> users)? loaded,
  }) {
    return loading?.call(assignTo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<AppointmentUser> assignTo)? loading,
    TResult Function(List<AppointmentUser> assignTo, List<User> users)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(assignTo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditAssignToStateEmpty value) empty,
    required TResult Function(ScheduleEditAssignToStateLoading value) loading,
    required TResult Function(ScheduleEditAssignToStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditAssignToStateEmpty value)? empty,
    TResult? Function(ScheduleEditAssignToStateLoading value)? loading,
    TResult? Function(ScheduleEditAssignToStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditAssignToStateEmpty value)? empty,
    TResult Function(ScheduleEditAssignToStateLoading value)? loading,
    TResult Function(ScheduleEditAssignToStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditAssignToStateLoading
    implements ScheduleEditAssignToState {
  const factory ScheduleEditAssignToStateLoading(
          {required final List<AppointmentUser> assignTo}) =
      _$ScheduleEditAssignToStateLoadingImpl;

  List<AppointmentUser> get assignTo;
  @JsonKey(ignore: true)
  _$$ScheduleEditAssignToStateLoadingImplCopyWith<
          _$ScheduleEditAssignToStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEditAssignToStateLoadedImplCopyWith<$Res> {
  factory _$$ScheduleEditAssignToStateLoadedImplCopyWith(
          _$ScheduleEditAssignToStateLoadedImpl value,
          $Res Function(_$ScheduleEditAssignToStateLoadedImpl) then) =
      __$$ScheduleEditAssignToStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppointmentUser> assignTo, List<User> users});
}

/// @nodoc
class __$$ScheduleEditAssignToStateLoadedImplCopyWithImpl<$Res>
    extends _$ScheduleEditAssignToStateCopyWithImpl<$Res,
        _$ScheduleEditAssignToStateLoadedImpl>
    implements _$$ScheduleEditAssignToStateLoadedImplCopyWith<$Res> {
  __$$ScheduleEditAssignToStateLoadedImplCopyWithImpl(
      _$ScheduleEditAssignToStateLoadedImpl _value,
      $Res Function(_$ScheduleEditAssignToStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignTo = null,
    Object? users = null,
  }) {
    return _then(_$ScheduleEditAssignToStateLoadedImpl(
      assignTo: null == assignTo
          ? _value._assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as List<AppointmentUser>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$ScheduleEditAssignToStateLoadedImpl
    implements ScheduleEditAssignToStateLoaded {
  const _$ScheduleEditAssignToStateLoadedImpl(
      {required final List<AppointmentUser> assignTo,
      required final List<User> users})
      : _assignTo = assignTo,
        _users = users;

  final List<AppointmentUser> _assignTo;
  @override
  List<AppointmentUser> get assignTo {
    if (_assignTo is EqualUnmodifiableListView) return _assignTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignTo);
  }

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'ScheduleEditAssignToState.loaded(assignTo: $assignTo, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEditAssignToStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._assignTo, _assignTo) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_assignTo),
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEditAssignToStateLoadedImplCopyWith<
          _$ScheduleEditAssignToStateLoadedImpl>
      get copyWith => __$$ScheduleEditAssignToStateLoadedImplCopyWithImpl<
          _$ScheduleEditAssignToStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<AppointmentUser> assignTo) loading,
    required TResult Function(List<AppointmentUser> assignTo, List<User> users)
        loaded,
  }) {
    return loaded(assignTo, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<AppointmentUser> assignTo)? loading,
    TResult? Function(List<AppointmentUser> assignTo, List<User> users)? loaded,
  }) {
    return loaded?.call(assignTo, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<AppointmentUser> assignTo)? loading,
    TResult Function(List<AppointmentUser> assignTo, List<User> users)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(assignTo, users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEditAssignToStateEmpty value) empty,
    required TResult Function(ScheduleEditAssignToStateLoading value) loading,
    required TResult Function(ScheduleEditAssignToStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEditAssignToStateEmpty value)? empty,
    TResult? Function(ScheduleEditAssignToStateLoading value)? loading,
    TResult? Function(ScheduleEditAssignToStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEditAssignToStateEmpty value)? empty,
    TResult Function(ScheduleEditAssignToStateLoading value)? loading,
    TResult Function(ScheduleEditAssignToStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ScheduleEditAssignToStateLoaded
    implements ScheduleEditAssignToState {
  const factory ScheduleEditAssignToStateLoaded(
      {required final List<AppointmentUser> assignTo,
      required final List<User> users}) = _$ScheduleEditAssignToStateLoadedImpl;

  List<AppointmentUser> get assignTo;
  List<User> get users;
  @JsonKey(ignore: true)
  _$$ScheduleEditAssignToStateLoadedImplCopyWith<
          _$ScheduleEditAssignToStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
