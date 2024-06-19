// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assign_to_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssignToEvent {
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
    required TResult Function(AssignToEventLoad value) load,
    required TResult Function(AssignToEventCheck value) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignToEventLoad value)? load,
    TResult? Function(AssignToEventCheck value)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignToEventLoad value)? load,
    TResult Function(AssignToEventCheck value)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignToEventCopyWith<$Res> {
  factory $AssignToEventCopyWith(
          AssignToEvent value, $Res Function(AssignToEvent) then) =
      _$AssignToEventCopyWithImpl<$Res, AssignToEvent>;
}

/// @nodoc
class _$AssignToEventCopyWithImpl<$Res, $Val extends AssignToEvent>
    implements $AssignToEventCopyWith<$Res> {
  _$AssignToEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AssignToEventLoadImplCopyWith<$Res> {
  factory _$$AssignToEventLoadImplCopyWith(_$AssignToEventLoadImpl value,
          $Res Function(_$AssignToEventLoadImpl) then) =
      __$$AssignToEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppointmentUser> assignTo});
}

/// @nodoc
class __$$AssignToEventLoadImplCopyWithImpl<$Res>
    extends _$AssignToEventCopyWithImpl<$Res, _$AssignToEventLoadImpl>
    implements _$$AssignToEventLoadImplCopyWith<$Res> {
  __$$AssignToEventLoadImplCopyWithImpl(_$AssignToEventLoadImpl _value,
      $Res Function(_$AssignToEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignTo = null,
  }) {
    return _then(_$AssignToEventLoadImpl(
      assignTo: null == assignTo
          ? _value._assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as List<AppointmentUser>,
    ));
  }
}

/// @nodoc

class _$AssignToEventLoadImpl implements AssignToEventLoad {
  const _$AssignToEventLoadImpl({required final List<AppointmentUser> assignTo})
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
    return 'AssignToEvent.load(assignTo: $assignTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignToEventLoadImpl &&
            const DeepCollectionEquality().equals(other._assignTo, _assignTo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assignTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignToEventLoadImplCopyWith<_$AssignToEventLoadImpl> get copyWith =>
      __$$AssignToEventLoadImplCopyWithImpl<_$AssignToEventLoadImpl>(
          this, _$identity);

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
    required TResult Function(AssignToEventLoad value) load,
    required TResult Function(AssignToEventCheck value) check,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignToEventLoad value)? load,
    TResult? Function(AssignToEventCheck value)? check,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignToEventLoad value)? load,
    TResult Function(AssignToEventCheck value)? check,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class AssignToEventLoad implements AssignToEvent {
  const factory AssignToEventLoad(
          {required final List<AppointmentUser> assignTo}) =
      _$AssignToEventLoadImpl;

  List<AppointmentUser> get assignTo;
  @JsonKey(ignore: true)
  _$$AssignToEventLoadImplCopyWith<_$AssignToEventLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignToEventCheckImplCopyWith<$Res> {
  factory _$$AssignToEventCheckImplCopyWith(_$AssignToEventCheckImpl value,
          $Res Function(_$AssignToEventCheckImpl) then) =
      __$$AssignToEventCheckImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool check, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AssignToEventCheckImplCopyWithImpl<$Res>
    extends _$AssignToEventCopyWithImpl<$Res, _$AssignToEventCheckImpl>
    implements _$$AssignToEventCheckImplCopyWith<$Res> {
  __$$AssignToEventCheckImplCopyWithImpl(_$AssignToEventCheckImpl _value,
      $Res Function(_$AssignToEventCheckImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? check = null,
    Object? user = null,
  }) {
    return _then(_$AssignToEventCheckImpl(
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

class _$AssignToEventCheckImpl implements AssignToEventCheck {
  const _$AssignToEventCheckImpl({required this.check, required this.user});

  @override
  final bool check;
  @override
  final User user;

  @override
  String toString() {
    return 'AssignToEvent.check(check: $check, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignToEventCheckImpl &&
            (identical(other.check, check) || other.check == check) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, check, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignToEventCheckImplCopyWith<_$AssignToEventCheckImpl> get copyWith =>
      __$$AssignToEventCheckImplCopyWithImpl<_$AssignToEventCheckImpl>(
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
    required TResult Function(AssignToEventLoad value) load,
    required TResult Function(AssignToEventCheck value) check,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignToEventLoad value)? load,
    TResult? Function(AssignToEventCheck value)? check,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignToEventLoad value)? load,
    TResult Function(AssignToEventCheck value)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class AssignToEventCheck implements AssignToEvent {
  const factory AssignToEventCheck(
      {required final bool check,
      required final User user}) = _$AssignToEventCheckImpl;

  bool get check;
  User get user;
  @JsonKey(ignore: true)
  _$$AssignToEventCheckImplCopyWith<_$AssignToEventCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssignToState {
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
    required TResult Function(AssignToStateEmpty value) empty,
    required TResult Function(AssignToStateLoading value) loading,
    required TResult Function(AssignToStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignToStateEmpty value)? empty,
    TResult? Function(AssignToStateLoading value)? loading,
    TResult? Function(AssignToStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignToStateEmpty value)? empty,
    TResult Function(AssignToStateLoading value)? loading,
    TResult Function(AssignToStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignToStateCopyWith<$Res> {
  factory $AssignToStateCopyWith(
          AssignToState value, $Res Function(AssignToState) then) =
      _$AssignToStateCopyWithImpl<$Res, AssignToState>;
}

/// @nodoc
class _$AssignToStateCopyWithImpl<$Res, $Val extends AssignToState>
    implements $AssignToStateCopyWith<$Res> {
  _$AssignToStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AssignToStateEmptyImplCopyWith<$Res> {
  factory _$$AssignToStateEmptyImplCopyWith(_$AssignToStateEmptyImpl value,
          $Res Function(_$AssignToStateEmptyImpl) then) =
      __$$AssignToStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssignToStateEmptyImplCopyWithImpl<$Res>
    extends _$AssignToStateCopyWithImpl<$Res, _$AssignToStateEmptyImpl>
    implements _$$AssignToStateEmptyImplCopyWith<$Res> {
  __$$AssignToStateEmptyImplCopyWithImpl(_$AssignToStateEmptyImpl _value,
      $Res Function(_$AssignToStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AssignToStateEmptyImpl implements AssignToStateEmpty {
  const _$AssignToStateEmptyImpl();

  @override
  String toString() {
    return 'AssignToState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AssignToStateEmptyImpl);
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
    required TResult Function(AssignToStateEmpty value) empty,
    required TResult Function(AssignToStateLoading value) loading,
    required TResult Function(AssignToStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignToStateEmpty value)? empty,
    TResult? Function(AssignToStateLoading value)? loading,
    TResult? Function(AssignToStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignToStateEmpty value)? empty,
    TResult Function(AssignToStateLoading value)? loading,
    TResult Function(AssignToStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class AssignToStateEmpty implements AssignToState {
  const factory AssignToStateEmpty() = _$AssignToStateEmptyImpl;
}

/// @nodoc
abstract class _$$AssignToStateLoadingImplCopyWith<$Res> {
  factory _$$AssignToStateLoadingImplCopyWith(_$AssignToStateLoadingImpl value,
          $Res Function(_$AssignToStateLoadingImpl) then) =
      __$$AssignToStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppointmentUser> assignTo});
}

/// @nodoc
class __$$AssignToStateLoadingImplCopyWithImpl<$Res>
    extends _$AssignToStateCopyWithImpl<$Res, _$AssignToStateLoadingImpl>
    implements _$$AssignToStateLoadingImplCopyWith<$Res> {
  __$$AssignToStateLoadingImplCopyWithImpl(_$AssignToStateLoadingImpl _value,
      $Res Function(_$AssignToStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignTo = null,
  }) {
    return _then(_$AssignToStateLoadingImpl(
      assignTo: null == assignTo
          ? _value._assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as List<AppointmentUser>,
    ));
  }
}

/// @nodoc

class _$AssignToStateLoadingImpl implements AssignToStateLoading {
  const _$AssignToStateLoadingImpl(
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
    return 'AssignToState.loading(assignTo: $assignTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignToStateLoadingImpl &&
            const DeepCollectionEquality().equals(other._assignTo, _assignTo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assignTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignToStateLoadingImplCopyWith<_$AssignToStateLoadingImpl>
      get copyWith =>
          __$$AssignToStateLoadingImplCopyWithImpl<_$AssignToStateLoadingImpl>(
              this, _$identity);

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
    required TResult Function(AssignToStateEmpty value) empty,
    required TResult Function(AssignToStateLoading value) loading,
    required TResult Function(AssignToStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignToStateEmpty value)? empty,
    TResult? Function(AssignToStateLoading value)? loading,
    TResult? Function(AssignToStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignToStateEmpty value)? empty,
    TResult Function(AssignToStateLoading value)? loading,
    TResult Function(AssignToStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AssignToStateLoading implements AssignToState {
  const factory AssignToStateLoading(
          {required final List<AppointmentUser> assignTo}) =
      _$AssignToStateLoadingImpl;

  List<AppointmentUser> get assignTo;
  @JsonKey(ignore: true)
  _$$AssignToStateLoadingImplCopyWith<_$AssignToStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignToStateLoadedImplCopyWith<$Res> {
  factory _$$AssignToStateLoadedImplCopyWith(_$AssignToStateLoadedImpl value,
          $Res Function(_$AssignToStateLoadedImpl) then) =
      __$$AssignToStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppointmentUser> assignTo, List<User> users});
}

/// @nodoc
class __$$AssignToStateLoadedImplCopyWithImpl<$Res>
    extends _$AssignToStateCopyWithImpl<$Res, _$AssignToStateLoadedImpl>
    implements _$$AssignToStateLoadedImplCopyWith<$Res> {
  __$$AssignToStateLoadedImplCopyWithImpl(_$AssignToStateLoadedImpl _value,
      $Res Function(_$AssignToStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignTo = null,
    Object? users = null,
  }) {
    return _then(_$AssignToStateLoadedImpl(
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

class _$AssignToStateLoadedImpl implements AssignToStateLoaded {
  const _$AssignToStateLoadedImpl(
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
    return 'AssignToState.loaded(assignTo: $assignTo, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignToStateLoadedImpl &&
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
  _$$AssignToStateLoadedImplCopyWith<_$AssignToStateLoadedImpl> get copyWith =>
      __$$AssignToStateLoadedImplCopyWithImpl<_$AssignToStateLoadedImpl>(
          this, _$identity);

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
    required TResult Function(AssignToStateEmpty value) empty,
    required TResult Function(AssignToStateLoading value) loading,
    required TResult Function(AssignToStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignToStateEmpty value)? empty,
    TResult? Function(AssignToStateLoading value)? loading,
    TResult? Function(AssignToStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignToStateEmpty value)? empty,
    TResult Function(AssignToStateLoading value)? loading,
    TResult Function(AssignToStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AssignToStateLoaded implements AssignToState {
  const factory AssignToStateLoaded(
      {required final List<AppointmentUser> assignTo,
      required final List<User> users}) = _$AssignToStateLoadedImpl;

  List<AppointmentUser> get assignTo;
  List<User> get users;
  @JsonKey(ignore: true)
  _$$AssignToStateLoadedImplCopyWith<_$AssignToStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
