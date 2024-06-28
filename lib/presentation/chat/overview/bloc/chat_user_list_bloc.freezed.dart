// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_user_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatUserListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Employee user) changeSelectedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Employee user)? changeSelectedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Employee user)? changeSelectedUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUserListEventLoad value) load,
    required TResult Function(ChatUserListEventChangeSelectUser value)
        changeSelectedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatUserListEventLoad value)? load,
    TResult? Function(ChatUserListEventChangeSelectUser value)?
        changeSelectedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUserListEventLoad value)? load,
    TResult Function(ChatUserListEventChangeSelectUser value)?
        changeSelectedUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserListEventCopyWith<$Res> {
  factory $ChatUserListEventCopyWith(
          ChatUserListEvent value, $Res Function(ChatUserListEvent) then) =
      _$ChatUserListEventCopyWithImpl<$Res, ChatUserListEvent>;
}

/// @nodoc
class _$ChatUserListEventCopyWithImpl<$Res, $Val extends ChatUserListEvent>
    implements $ChatUserListEventCopyWith<$Res> {
  _$ChatUserListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatUserListEventLoadImplCopyWith<$Res> {
  factory _$$ChatUserListEventLoadImplCopyWith(
          _$ChatUserListEventLoadImpl value,
          $Res Function(_$ChatUserListEventLoadImpl) then) =
      __$$ChatUserListEventLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatUserListEventLoadImplCopyWithImpl<$Res>
    extends _$ChatUserListEventCopyWithImpl<$Res, _$ChatUserListEventLoadImpl>
    implements _$$ChatUserListEventLoadImplCopyWith<$Res> {
  __$$ChatUserListEventLoadImplCopyWithImpl(_$ChatUserListEventLoadImpl _value,
      $Res Function(_$ChatUserListEventLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatUserListEventLoadImpl implements ChatUserListEventLoad {
  const _$ChatUserListEventLoadImpl();

  @override
  String toString() {
    return 'ChatUserListEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUserListEventLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Employee user) changeSelectedUser,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Employee user)? changeSelectedUser,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Employee user)? changeSelectedUser,
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
    required TResult Function(ChatUserListEventLoad value) load,
    required TResult Function(ChatUserListEventChangeSelectUser value)
        changeSelectedUser,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatUserListEventLoad value)? load,
    TResult? Function(ChatUserListEventChangeSelectUser value)?
        changeSelectedUser,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUserListEventLoad value)? load,
    TResult Function(ChatUserListEventChangeSelectUser value)?
        changeSelectedUser,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ChatUserListEventLoad implements ChatUserListEvent {
  const factory ChatUserListEventLoad() = _$ChatUserListEventLoadImpl;
}

/// @nodoc
abstract class _$$ChatUserListEventChangeSelectUserImplCopyWith<$Res> {
  factory _$$ChatUserListEventChangeSelectUserImplCopyWith(
          _$ChatUserListEventChangeSelectUserImpl value,
          $Res Function(_$ChatUserListEventChangeSelectUserImpl) then) =
      __$$ChatUserListEventChangeSelectUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Employee user});

  $EmployeeCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatUserListEventChangeSelectUserImplCopyWithImpl<$Res>
    extends _$ChatUserListEventCopyWithImpl<$Res,
        _$ChatUserListEventChangeSelectUserImpl>
    implements _$$ChatUserListEventChangeSelectUserImplCopyWith<$Res> {
  __$$ChatUserListEventChangeSelectUserImplCopyWithImpl(
      _$ChatUserListEventChangeSelectUserImpl _value,
      $Res Function(_$ChatUserListEventChangeSelectUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ChatUserListEventChangeSelectUserImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get user {
    return $EmployeeCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ChatUserListEventChangeSelectUserImpl
    implements ChatUserListEventChangeSelectUser {
  const _$ChatUserListEventChangeSelectUserImpl({required this.user});

  @override
  final Employee user;

  @override
  String toString() {
    return 'ChatUserListEvent.changeSelectedUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUserListEventChangeSelectUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatUserListEventChangeSelectUserImplCopyWith<
          _$ChatUserListEventChangeSelectUserImpl>
      get copyWith => __$$ChatUserListEventChangeSelectUserImplCopyWithImpl<
          _$ChatUserListEventChangeSelectUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Employee user) changeSelectedUser,
  }) {
    return changeSelectedUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Employee user)? changeSelectedUser,
  }) {
    return changeSelectedUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Employee user)? changeSelectedUser,
    required TResult orElse(),
  }) {
    if (changeSelectedUser != null) {
      return changeSelectedUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUserListEventLoad value) load,
    required TResult Function(ChatUserListEventChangeSelectUser value)
        changeSelectedUser,
  }) {
    return changeSelectedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatUserListEventLoad value)? load,
    TResult? Function(ChatUserListEventChangeSelectUser value)?
        changeSelectedUser,
  }) {
    return changeSelectedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUserListEventLoad value)? load,
    TResult Function(ChatUserListEventChangeSelectUser value)?
        changeSelectedUser,
    required TResult orElse(),
  }) {
    if (changeSelectedUser != null) {
      return changeSelectedUser(this);
    }
    return orElse();
  }
}

abstract class ChatUserListEventChangeSelectUser implements ChatUserListEvent {
  const factory ChatUserListEventChangeSelectUser(
      {required final Employee user}) = _$ChatUserListEventChangeSelectUserImpl;

  Employee get user;
  @JsonKey(ignore: true)
  _$$ChatUserListEventChangeSelectUserImplCopyWith<
          _$ChatUserListEventChangeSelectUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatUserListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Employee> employees, Employee selectedEmployee)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Employee> employees, Employee selectedEmployee)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Employee> employees, Employee selectedEmployee)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUserListStateInitial value) initial,
    required TResult Function(ChatUserListStateLoading value) loading,
    required TResult Function(ChatUserListStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatUserListStateInitial value)? initial,
    TResult? Function(ChatUserListStateLoading value)? loading,
    TResult? Function(ChatUserListStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUserListStateInitial value)? initial,
    TResult Function(ChatUserListStateLoading value)? loading,
    TResult Function(ChatUserListStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserListStateCopyWith<$Res> {
  factory $ChatUserListStateCopyWith(
          ChatUserListState value, $Res Function(ChatUserListState) then) =
      _$ChatUserListStateCopyWithImpl<$Res, ChatUserListState>;
}

/// @nodoc
class _$ChatUserListStateCopyWithImpl<$Res, $Val extends ChatUserListState>
    implements $ChatUserListStateCopyWith<$Res> {
  _$ChatUserListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatUserListStateInitialImplCopyWith<$Res> {
  factory _$$ChatUserListStateInitialImplCopyWith(
          _$ChatUserListStateInitialImpl value,
          $Res Function(_$ChatUserListStateInitialImpl) then) =
      __$$ChatUserListStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatUserListStateInitialImplCopyWithImpl<$Res>
    extends _$ChatUserListStateCopyWithImpl<$Res,
        _$ChatUserListStateInitialImpl>
    implements _$$ChatUserListStateInitialImplCopyWith<$Res> {
  __$$ChatUserListStateInitialImplCopyWithImpl(
      _$ChatUserListStateInitialImpl _value,
      $Res Function(_$ChatUserListStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatUserListStateInitialImpl implements ChatUserListStateInitial {
  const _$ChatUserListStateInitialImpl();

  @override
  String toString() {
    return 'ChatUserListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUserListStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Employee> employees, Employee selectedEmployee)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Employee> employees, Employee selectedEmployee)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Employee> employees, Employee selectedEmployee)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUserListStateInitial value) initial,
    required TResult Function(ChatUserListStateLoading value) loading,
    required TResult Function(ChatUserListStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatUserListStateInitial value)? initial,
    TResult? Function(ChatUserListStateLoading value)? loading,
    TResult? Function(ChatUserListStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUserListStateInitial value)? initial,
    TResult Function(ChatUserListStateLoading value)? loading,
    TResult Function(ChatUserListStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatUserListStateInitial implements ChatUserListState {
  const factory ChatUserListStateInitial() = _$ChatUserListStateInitialImpl;
}

/// @nodoc
abstract class _$$ChatUserListStateLoadingImplCopyWith<$Res> {
  factory _$$ChatUserListStateLoadingImplCopyWith(
          _$ChatUserListStateLoadingImpl value,
          $Res Function(_$ChatUserListStateLoadingImpl) then) =
      __$$ChatUserListStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatUserListStateLoadingImplCopyWithImpl<$Res>
    extends _$ChatUserListStateCopyWithImpl<$Res,
        _$ChatUserListStateLoadingImpl>
    implements _$$ChatUserListStateLoadingImplCopyWith<$Res> {
  __$$ChatUserListStateLoadingImplCopyWithImpl(
      _$ChatUserListStateLoadingImpl _value,
      $Res Function(_$ChatUserListStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatUserListStateLoadingImpl implements ChatUserListStateLoading {
  const _$ChatUserListStateLoadingImpl();

  @override
  String toString() {
    return 'ChatUserListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUserListStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Employee> employees, Employee selectedEmployee)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Employee> employees, Employee selectedEmployee)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Employee> employees, Employee selectedEmployee)?
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
    required TResult Function(ChatUserListStateInitial value) initial,
    required TResult Function(ChatUserListStateLoading value) loading,
    required TResult Function(ChatUserListStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatUserListStateInitial value)? initial,
    TResult? Function(ChatUserListStateLoading value)? loading,
    TResult? Function(ChatUserListStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUserListStateInitial value)? initial,
    TResult Function(ChatUserListStateLoading value)? loading,
    TResult Function(ChatUserListStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatUserListStateLoading implements ChatUserListState {
  const factory ChatUserListStateLoading() = _$ChatUserListStateLoadingImpl;
}

/// @nodoc
abstract class _$$ChatUserListStateLoadedImplCopyWith<$Res> {
  factory _$$ChatUserListStateLoadedImplCopyWith(
          _$ChatUserListStateLoadedImpl value,
          $Res Function(_$ChatUserListStateLoadedImpl) then) =
      __$$ChatUserListStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Employee> employees, Employee selectedEmployee});

  $EmployeeCopyWith<$Res> get selectedEmployee;
}

/// @nodoc
class __$$ChatUserListStateLoadedImplCopyWithImpl<$Res>
    extends _$ChatUserListStateCopyWithImpl<$Res, _$ChatUserListStateLoadedImpl>
    implements _$$ChatUserListStateLoadedImplCopyWith<$Res> {
  __$$ChatUserListStateLoadedImplCopyWithImpl(
      _$ChatUserListStateLoadedImpl _value,
      $Res Function(_$ChatUserListStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
    Object? selectedEmployee = null,
  }) {
    return _then(_$ChatUserListStateLoadedImpl(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      selectedEmployee: null == selectedEmployee
          ? _value.selectedEmployee
          : selectedEmployee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get selectedEmployee {
    return $EmployeeCopyWith<$Res>(_value.selectedEmployee, (value) {
      return _then(_value.copyWith(selectedEmployee: value));
    });
  }
}

/// @nodoc

class _$ChatUserListStateLoadedImpl implements ChatUserListStateLoaded {
  const _$ChatUserListStateLoadedImpl(
      {required final List<Employee> employees, required this.selectedEmployee})
      : _employees = employees;

  final List<Employee> _employees;
  @override
  List<Employee> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  final Employee selectedEmployee;

  @override
  String toString() {
    return 'ChatUserListState.loaded(employees: $employees, selectedEmployee: $selectedEmployee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUserListStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            (identical(other.selectedEmployee, selectedEmployee) ||
                other.selectedEmployee == selectedEmployee));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_employees), selectedEmployee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatUserListStateLoadedImplCopyWith<_$ChatUserListStateLoadedImpl>
      get copyWith => __$$ChatUserListStateLoadedImplCopyWithImpl<
          _$ChatUserListStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Employee> employees, Employee selectedEmployee)
        loaded,
  }) {
    return loaded(employees, selectedEmployee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Employee> employees, Employee selectedEmployee)?
        loaded,
  }) {
    return loaded?.call(employees, selectedEmployee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Employee> employees, Employee selectedEmployee)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(employees, selectedEmployee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUserListStateInitial value) initial,
    required TResult Function(ChatUserListStateLoading value) loading,
    required TResult Function(ChatUserListStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatUserListStateInitial value)? initial,
    TResult? Function(ChatUserListStateLoading value)? loading,
    TResult? Function(ChatUserListStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUserListStateInitial value)? initial,
    TResult Function(ChatUserListStateLoading value)? loading,
    TResult Function(ChatUserListStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChatUserListStateLoaded implements ChatUserListState {
  const factory ChatUserListStateLoaded(
          {required final List<Employee> employees,
          required final Employee selectedEmployee}) =
      _$ChatUserListStateLoadedImpl;

  List<Employee> get employees;
  Employee get selectedEmployee;
  @JsonKey(ignore: true)
  _$$ChatUserListStateLoadedImplCopyWith<_$ChatUserListStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
