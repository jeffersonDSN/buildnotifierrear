// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updateUsername,
    required TResult Function(String value) updatePassword,
    required TResult Function(int value) updateUserType,
    required TResult Function(VoidCallback callback) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateFirstName,
    TResult? Function(String value)? updateLastName,
    TResult? Function(String value)? updateEmail,
    TResult? Function(String value)? updateUsername,
    TResult? Function(String value)? updatePassword,
    TResult? Function(int value)? updateUserType,
    TResult? Function(VoidCallback callback)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateFirstName,
    TResult Function(String value)? updateLastName,
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updateUsername,
    TResult Function(String value)? updatePassword,
    TResult Function(int value)? updateUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventtUpdateFirstName value)
        updateFirstName,
    required TResult Function(UserEditEventtUpdateLastName value)
        updateLastName,
    required TResult Function(UserEditEventtUpdateEmail value) updateEmail,
    required TResult Function(UserEditEventtUpdateUsername value)
        updateUsername,
    required TResult Function(UserEditEventtUpdatePassword value)
        updatePassword,
    required TResult Function(UserEditEventtUpdateUserType value)
        updateUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult? Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult? Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult? Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult? Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult? Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEditEventCopyWith<$Res> {
  factory $UserEditEventCopyWith(
          UserEditEvent value, $Res Function(UserEditEvent) then) =
      _$UserEditEventCopyWithImpl<$Res, UserEditEvent>;
}

/// @nodoc
class _$UserEditEventCopyWithImpl<$Res, $Val extends UserEditEvent>
    implements $UserEditEventCopyWith<$Res> {
  _$UserEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserEditEventtLoadImplCopyWith<$Res> {
  factory _$$UserEditEventtLoadImplCopyWith(_$UserEditEventtLoadImpl value,
          $Res Function(_$UserEditEventtLoadImpl) then) =
      __$$UserEditEventtLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type});

  $CrudTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$UserEditEventtLoadImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res, _$UserEditEventtLoadImpl>
    implements _$$UserEditEventtLoadImplCopyWith<$Res> {
  __$$UserEditEventtLoadImplCopyWithImpl(_$UserEditEventtLoadImpl _value,
      $Res Function(_$UserEditEventtLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$UserEditEventtLoadImpl(
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

class _$UserEditEventtLoadImpl implements UserEditEventtLoad {
  const _$UserEditEventtLoadImpl({required this.type});

  @override
  final CrudType type;

  @override
  String toString() {
    return 'UserEditEvent.load(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventtLoadImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventtLoadImplCopyWith<_$UserEditEventtLoadImpl> get copyWith =>
      __$$UserEditEventtLoadImplCopyWithImpl<_$UserEditEventtLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updateUsername,
    required TResult Function(String value) updatePassword,
    required TResult Function(int value) updateUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return load(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateFirstName,
    TResult? Function(String value)? updateLastName,
    TResult? Function(String value)? updateEmail,
    TResult? Function(String value)? updateUsername,
    TResult? Function(String value)? updatePassword,
    TResult? Function(int value)? updateUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return load?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateFirstName,
    TResult Function(String value)? updateLastName,
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updateUsername,
    TResult Function(String value)? updatePassword,
    TResult Function(int value)? updateUserType,
    TResult Function(VoidCallback callback)? save,
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
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventtUpdateFirstName value)
        updateFirstName,
    required TResult Function(UserEditEventtUpdateLastName value)
        updateLastName,
    required TResult Function(UserEditEventtUpdateEmail value) updateEmail,
    required TResult Function(UserEditEventtUpdateUsername value)
        updateUsername,
    required TResult Function(UserEditEventtUpdatePassword value)
        updatePassword,
    required TResult Function(UserEditEventtUpdateUserType value)
        updateUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult? Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult? Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult? Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult? Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult? Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class UserEditEventtLoad implements UserEditEvent {
  const factory UserEditEventtLoad({required final CrudType type}) =
      _$UserEditEventtLoadImpl;

  CrudType get type;
  @JsonKey(ignore: true)
  _$$UserEditEventtLoadImplCopyWith<_$UserEditEventtLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventtUpdateFirstNameImplCopyWith<$Res> {
  factory _$$UserEditEventtUpdateFirstNameImplCopyWith(
          _$UserEditEventtUpdateFirstNameImpl value,
          $Res Function(_$UserEditEventtUpdateFirstNameImpl) then) =
      __$$UserEditEventtUpdateFirstNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventtUpdateFirstNameImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res,
        _$UserEditEventtUpdateFirstNameImpl>
    implements _$$UserEditEventtUpdateFirstNameImplCopyWith<$Res> {
  __$$UserEditEventtUpdateFirstNameImplCopyWithImpl(
      _$UserEditEventtUpdateFirstNameImpl _value,
      $Res Function(_$UserEditEventtUpdateFirstNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventtUpdateFirstNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventtUpdateFirstNameImpl
    implements UserEditEventtUpdateFirstName {
  const _$UserEditEventtUpdateFirstNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.updateFirstName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventtUpdateFirstNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventtUpdateFirstNameImplCopyWith<
          _$UserEditEventtUpdateFirstNameImpl>
      get copyWith => __$$UserEditEventtUpdateFirstNameImplCopyWithImpl<
          _$UserEditEventtUpdateFirstNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updateUsername,
    required TResult Function(String value) updatePassword,
    required TResult Function(int value) updateUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updateFirstName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateFirstName,
    TResult? Function(String value)? updateLastName,
    TResult? Function(String value)? updateEmail,
    TResult? Function(String value)? updateUsername,
    TResult? Function(String value)? updatePassword,
    TResult? Function(int value)? updateUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updateFirstName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateFirstName,
    TResult Function(String value)? updateLastName,
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updateUsername,
    TResult Function(String value)? updatePassword,
    TResult Function(int value)? updateUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updateFirstName != null) {
      return updateFirstName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventtUpdateFirstName value)
        updateFirstName,
    required TResult Function(UserEditEventtUpdateLastName value)
        updateLastName,
    required TResult Function(UserEditEventtUpdateEmail value) updateEmail,
    required TResult Function(UserEditEventtUpdateUsername value)
        updateUsername,
    required TResult Function(UserEditEventtUpdatePassword value)
        updatePassword,
    required TResult Function(UserEditEventtUpdateUserType value)
        updateUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return updateFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult? Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult? Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult? Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult? Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult? Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return updateFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (updateFirstName != null) {
      return updateFirstName(this);
    }
    return orElse();
  }
}

abstract class UserEditEventtUpdateFirstName implements UserEditEvent {
  const factory UserEditEventtUpdateFirstName({required final String value}) =
      _$UserEditEventtUpdateFirstNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventtUpdateFirstNameImplCopyWith<
          _$UserEditEventtUpdateFirstNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventtUpdateLastNameImplCopyWith<$Res> {
  factory _$$UserEditEventtUpdateLastNameImplCopyWith(
          _$UserEditEventtUpdateLastNameImpl value,
          $Res Function(_$UserEditEventtUpdateLastNameImpl) then) =
      __$$UserEditEventtUpdateLastNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventtUpdateLastNameImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res,
        _$UserEditEventtUpdateLastNameImpl>
    implements _$$UserEditEventtUpdateLastNameImplCopyWith<$Res> {
  __$$UserEditEventtUpdateLastNameImplCopyWithImpl(
      _$UserEditEventtUpdateLastNameImpl _value,
      $Res Function(_$UserEditEventtUpdateLastNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventtUpdateLastNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventtUpdateLastNameImpl
    implements UserEditEventtUpdateLastName {
  const _$UserEditEventtUpdateLastNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.updateLastName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventtUpdateLastNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventtUpdateLastNameImplCopyWith<
          _$UserEditEventtUpdateLastNameImpl>
      get copyWith => __$$UserEditEventtUpdateLastNameImplCopyWithImpl<
          _$UserEditEventtUpdateLastNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updateUsername,
    required TResult Function(String value) updatePassword,
    required TResult Function(int value) updateUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updateLastName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateFirstName,
    TResult? Function(String value)? updateLastName,
    TResult? Function(String value)? updateEmail,
    TResult? Function(String value)? updateUsername,
    TResult? Function(String value)? updatePassword,
    TResult? Function(int value)? updateUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updateLastName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateFirstName,
    TResult Function(String value)? updateLastName,
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updateUsername,
    TResult Function(String value)? updatePassword,
    TResult Function(int value)? updateUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updateLastName != null) {
      return updateLastName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventtUpdateFirstName value)
        updateFirstName,
    required TResult Function(UserEditEventtUpdateLastName value)
        updateLastName,
    required TResult Function(UserEditEventtUpdateEmail value) updateEmail,
    required TResult Function(UserEditEventtUpdateUsername value)
        updateUsername,
    required TResult Function(UserEditEventtUpdatePassword value)
        updatePassword,
    required TResult Function(UserEditEventtUpdateUserType value)
        updateUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return updateLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult? Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult? Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult? Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult? Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult? Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return updateLastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (updateLastName != null) {
      return updateLastName(this);
    }
    return orElse();
  }
}

abstract class UserEditEventtUpdateLastName implements UserEditEvent {
  const factory UserEditEventtUpdateLastName({required final String value}) =
      _$UserEditEventtUpdateLastNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventtUpdateLastNameImplCopyWith<
          _$UserEditEventtUpdateLastNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventtUpdateEmailImplCopyWith<$Res> {
  factory _$$UserEditEventtUpdateEmailImplCopyWith(
          _$UserEditEventtUpdateEmailImpl value,
          $Res Function(_$UserEditEventtUpdateEmailImpl) then) =
      __$$UserEditEventtUpdateEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventtUpdateEmailImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res, _$UserEditEventtUpdateEmailImpl>
    implements _$$UserEditEventtUpdateEmailImplCopyWith<$Res> {
  __$$UserEditEventtUpdateEmailImplCopyWithImpl(
      _$UserEditEventtUpdateEmailImpl _value,
      $Res Function(_$UserEditEventtUpdateEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventtUpdateEmailImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventtUpdateEmailImpl implements UserEditEventtUpdateEmail {
  const _$UserEditEventtUpdateEmailImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.updateEmail(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventtUpdateEmailImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventtUpdateEmailImplCopyWith<_$UserEditEventtUpdateEmailImpl>
      get copyWith => __$$UserEditEventtUpdateEmailImplCopyWithImpl<
          _$UserEditEventtUpdateEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updateUsername,
    required TResult Function(String value) updatePassword,
    required TResult Function(int value) updateUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updateEmail(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateFirstName,
    TResult? Function(String value)? updateLastName,
    TResult? Function(String value)? updateEmail,
    TResult? Function(String value)? updateUsername,
    TResult? Function(String value)? updatePassword,
    TResult? Function(int value)? updateUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updateEmail?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateFirstName,
    TResult Function(String value)? updateLastName,
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updateUsername,
    TResult Function(String value)? updatePassword,
    TResult Function(int value)? updateUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventtUpdateFirstName value)
        updateFirstName,
    required TResult Function(UserEditEventtUpdateLastName value)
        updateLastName,
    required TResult Function(UserEditEventtUpdateEmail value) updateEmail,
    required TResult Function(UserEditEventtUpdateUsername value)
        updateUsername,
    required TResult Function(UserEditEventtUpdatePassword value)
        updatePassword,
    required TResult Function(UserEditEventtUpdateUserType value)
        updateUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult? Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult? Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult? Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult? Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult? Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class UserEditEventtUpdateEmail implements UserEditEvent {
  const factory UserEditEventtUpdateEmail({required final String value}) =
      _$UserEditEventtUpdateEmailImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventtUpdateEmailImplCopyWith<_$UserEditEventtUpdateEmailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventtUpdateUsernameImplCopyWith<$Res> {
  factory _$$UserEditEventtUpdateUsernameImplCopyWith(
          _$UserEditEventtUpdateUsernameImpl value,
          $Res Function(_$UserEditEventtUpdateUsernameImpl) then) =
      __$$UserEditEventtUpdateUsernameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventtUpdateUsernameImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res,
        _$UserEditEventtUpdateUsernameImpl>
    implements _$$UserEditEventtUpdateUsernameImplCopyWith<$Res> {
  __$$UserEditEventtUpdateUsernameImplCopyWithImpl(
      _$UserEditEventtUpdateUsernameImpl _value,
      $Res Function(_$UserEditEventtUpdateUsernameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventtUpdateUsernameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventtUpdateUsernameImpl
    implements UserEditEventtUpdateUsername {
  const _$UserEditEventtUpdateUsernameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.updateUsername(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventtUpdateUsernameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventtUpdateUsernameImplCopyWith<
          _$UserEditEventtUpdateUsernameImpl>
      get copyWith => __$$UserEditEventtUpdateUsernameImplCopyWithImpl<
          _$UserEditEventtUpdateUsernameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updateUsername,
    required TResult Function(String value) updatePassword,
    required TResult Function(int value) updateUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updateUsername(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateFirstName,
    TResult? Function(String value)? updateLastName,
    TResult? Function(String value)? updateEmail,
    TResult? Function(String value)? updateUsername,
    TResult? Function(String value)? updatePassword,
    TResult? Function(int value)? updateUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updateUsername?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateFirstName,
    TResult Function(String value)? updateLastName,
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updateUsername,
    TResult Function(String value)? updatePassword,
    TResult Function(int value)? updateUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updateUsername != null) {
      return updateUsername(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventtUpdateFirstName value)
        updateFirstName,
    required TResult Function(UserEditEventtUpdateLastName value)
        updateLastName,
    required TResult Function(UserEditEventtUpdateEmail value) updateEmail,
    required TResult Function(UserEditEventtUpdateUsername value)
        updateUsername,
    required TResult Function(UserEditEventtUpdatePassword value)
        updatePassword,
    required TResult Function(UserEditEventtUpdateUserType value)
        updateUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return updateUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult? Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult? Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult? Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult? Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult? Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return updateUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (updateUsername != null) {
      return updateUsername(this);
    }
    return orElse();
  }
}

abstract class UserEditEventtUpdateUsername implements UserEditEvent {
  const factory UserEditEventtUpdateUsername({required final String value}) =
      _$UserEditEventtUpdateUsernameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventtUpdateUsernameImplCopyWith<
          _$UserEditEventtUpdateUsernameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventtUpdatePasswordImplCopyWith<$Res> {
  factory _$$UserEditEventtUpdatePasswordImplCopyWith(
          _$UserEditEventtUpdatePasswordImpl value,
          $Res Function(_$UserEditEventtUpdatePasswordImpl) then) =
      __$$UserEditEventtUpdatePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventtUpdatePasswordImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res,
        _$UserEditEventtUpdatePasswordImpl>
    implements _$$UserEditEventtUpdatePasswordImplCopyWith<$Res> {
  __$$UserEditEventtUpdatePasswordImplCopyWithImpl(
      _$UserEditEventtUpdatePasswordImpl _value,
      $Res Function(_$UserEditEventtUpdatePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventtUpdatePasswordImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventtUpdatePasswordImpl
    implements UserEditEventtUpdatePassword {
  const _$UserEditEventtUpdatePasswordImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.updatePassword(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventtUpdatePasswordImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventtUpdatePasswordImplCopyWith<
          _$UserEditEventtUpdatePasswordImpl>
      get copyWith => __$$UserEditEventtUpdatePasswordImplCopyWithImpl<
          _$UserEditEventtUpdatePasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updateUsername,
    required TResult Function(String value) updatePassword,
    required TResult Function(int value) updateUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updatePassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateFirstName,
    TResult? Function(String value)? updateLastName,
    TResult? Function(String value)? updateEmail,
    TResult? Function(String value)? updateUsername,
    TResult? Function(String value)? updatePassword,
    TResult? Function(int value)? updateUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updatePassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateFirstName,
    TResult Function(String value)? updateLastName,
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updateUsername,
    TResult Function(String value)? updatePassword,
    TResult Function(int value)? updateUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventtUpdateFirstName value)
        updateFirstName,
    required TResult Function(UserEditEventtUpdateLastName value)
        updateLastName,
    required TResult Function(UserEditEventtUpdateEmail value) updateEmail,
    required TResult Function(UserEditEventtUpdateUsername value)
        updateUsername,
    required TResult Function(UserEditEventtUpdatePassword value)
        updatePassword,
    required TResult Function(UserEditEventtUpdateUserType value)
        updateUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult? Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult? Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult? Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult? Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult? Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class UserEditEventtUpdatePassword implements UserEditEvent {
  const factory UserEditEventtUpdatePassword({required final String value}) =
      _$UserEditEventtUpdatePasswordImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventtUpdatePasswordImplCopyWith<
          _$UserEditEventtUpdatePasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventtUpdateUserTypeImplCopyWith<$Res> {
  factory _$$UserEditEventtUpdateUserTypeImplCopyWith(
          _$UserEditEventtUpdateUserTypeImpl value,
          $Res Function(_$UserEditEventtUpdateUserTypeImpl) then) =
      __$$UserEditEventtUpdateUserTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$UserEditEventtUpdateUserTypeImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res,
        _$UserEditEventtUpdateUserTypeImpl>
    implements _$$UserEditEventtUpdateUserTypeImplCopyWith<$Res> {
  __$$UserEditEventtUpdateUserTypeImplCopyWithImpl(
      _$UserEditEventtUpdateUserTypeImpl _value,
      $Res Function(_$UserEditEventtUpdateUserTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventtUpdateUserTypeImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserEditEventtUpdateUserTypeImpl
    implements UserEditEventtUpdateUserType {
  const _$UserEditEventtUpdateUserTypeImpl({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'UserEditEvent.updateUserType(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventtUpdateUserTypeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventtUpdateUserTypeImplCopyWith<
          _$UserEditEventtUpdateUserTypeImpl>
      get copyWith => __$$UserEditEventtUpdateUserTypeImplCopyWithImpl<
          _$UserEditEventtUpdateUserTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updateUsername,
    required TResult Function(String value) updatePassword,
    required TResult Function(int value) updateUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return updateUserType(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateFirstName,
    TResult? Function(String value)? updateLastName,
    TResult? Function(String value)? updateEmail,
    TResult? Function(String value)? updateUsername,
    TResult? Function(String value)? updatePassword,
    TResult? Function(int value)? updateUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return updateUserType?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateFirstName,
    TResult Function(String value)? updateLastName,
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updateUsername,
    TResult Function(String value)? updatePassword,
    TResult Function(int value)? updateUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (updateUserType != null) {
      return updateUserType(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventtUpdateFirstName value)
        updateFirstName,
    required TResult Function(UserEditEventtUpdateLastName value)
        updateLastName,
    required TResult Function(UserEditEventtUpdateEmail value) updateEmail,
    required TResult Function(UserEditEventtUpdateUsername value)
        updateUsername,
    required TResult Function(UserEditEventtUpdatePassword value)
        updatePassword,
    required TResult Function(UserEditEventtUpdateUserType value)
        updateUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return updateUserType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult? Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult? Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult? Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult? Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult? Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return updateUserType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (updateUserType != null) {
      return updateUserType(this);
    }
    return orElse();
  }
}

abstract class UserEditEventtUpdateUserType implements UserEditEvent {
  const factory UserEditEventtUpdateUserType({required final int value}) =
      _$UserEditEventtUpdateUserTypeImpl;

  int get value;
  @JsonKey(ignore: true)
  _$$UserEditEventtUpdateUserTypeImplCopyWith<
          _$UserEditEventtUpdateUserTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventtSaveImplCopyWith<$Res> {
  factory _$$UserEditEventtSaveImplCopyWith(_$UserEditEventtSaveImpl value,
          $Res Function(_$UserEditEventtSaveImpl) then) =
      __$$UserEditEventtSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback callback});
}

/// @nodoc
class __$$UserEditEventtSaveImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res, _$UserEditEventtSaveImpl>
    implements _$$UserEditEventtSaveImplCopyWith<$Res> {
  __$$UserEditEventtSaveImplCopyWithImpl(_$UserEditEventtSaveImpl _value,
      $Res Function(_$UserEditEventtSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$UserEditEventtSaveImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$UserEditEventtSaveImpl implements UserEditEventtSave {
  const _$UserEditEventtSaveImpl({required this.callback});

  @override
  final VoidCallback callback;

  @override
  String toString() {
    return 'UserEditEvent.save(callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventtSaveImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventtSaveImplCopyWith<_$UserEditEventtSaveImpl> get copyWith =>
      __$$UserEditEventtSaveImplCopyWithImpl<_$UserEditEventtSaveImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updateUsername,
    required TResult Function(String value) updatePassword,
    required TResult Function(int value) updateUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return save(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateFirstName,
    TResult? Function(String value)? updateLastName,
    TResult? Function(String value)? updateEmail,
    TResult? Function(String value)? updateUsername,
    TResult? Function(String value)? updatePassword,
    TResult? Function(int value)? updateUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return save?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateFirstName,
    TResult Function(String value)? updateLastName,
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updateUsername,
    TResult Function(String value)? updatePassword,
    TResult Function(int value)? updateUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventtUpdateFirstName value)
        updateFirstName,
    required TResult Function(UserEditEventtUpdateLastName value)
        updateLastName,
    required TResult Function(UserEditEventtUpdateEmail value) updateEmail,
    required TResult Function(UserEditEventtUpdateUsername value)
        updateUsername,
    required TResult Function(UserEditEventtUpdatePassword value)
        updatePassword,
    required TResult Function(UserEditEventtUpdateUserType value)
        updateUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult? Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult? Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult? Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult? Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult? Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventtUpdateFirstName value)? updateFirstName,
    TResult Function(UserEditEventtUpdateLastName value)? updateLastName,
    TResult Function(UserEditEventtUpdateEmail value)? updateEmail,
    TResult Function(UserEditEventtUpdateUsername value)? updateUsername,
    TResult Function(UserEditEventtUpdatePassword value)? updatePassword,
    TResult Function(UserEditEventtUpdateUserType value)? updateUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class UserEditEventtSave implements UserEditEvent {
  const factory UserEditEventtSave({required final VoidCallback callback}) =
      _$UserEditEventtSaveImpl;

  VoidCallback get callback;
  @JsonKey(ignore: true)
  _$$UserEditEventtSaveImplCopyWith<_$UserEditEventtSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, User user, bool isDuplicateUsername)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, User user, bool isDuplicateUsername)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, User user, bool isDuplicateUsername)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditStateEmpty value) empty,
    required TResult Function(UserEditStateLoading value) loading,
    required TResult Function(UserEditStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditStateEmpty value)? empty,
    TResult? Function(UserEditStateLoading value)? loading,
    TResult? Function(UserEditStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditStateEmpty value)? empty,
    TResult Function(UserEditStateLoading value)? loading,
    TResult Function(UserEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEditStateCopyWith<$Res> {
  factory $UserEditStateCopyWith(
          UserEditState value, $Res Function(UserEditState) then) =
      _$UserEditStateCopyWithImpl<$Res, UserEditState>;
}

/// @nodoc
class _$UserEditStateCopyWithImpl<$Res, $Val extends UserEditState>
    implements $UserEditStateCopyWith<$Res> {
  _$UserEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserEditStateEmptyImplCopyWith<$Res> {
  factory _$$UserEditStateEmptyImplCopyWith(_$UserEditStateEmptyImpl value,
          $Res Function(_$UserEditStateEmptyImpl) then) =
      __$$UserEditStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserEditStateEmptyImplCopyWithImpl<$Res>
    extends _$UserEditStateCopyWithImpl<$Res, _$UserEditStateEmptyImpl>
    implements _$$UserEditStateEmptyImplCopyWith<$Res> {
  __$$UserEditStateEmptyImplCopyWithImpl(_$UserEditStateEmptyImpl _value,
      $Res Function(_$UserEditStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserEditStateEmptyImpl implements UserEditStateEmpty {
  const _$UserEditStateEmptyImpl();

  @override
  String toString() {
    return 'UserEditState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserEditStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, User user, bool isDuplicateUsername)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, User user, bool isDuplicateUsername)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, User user, bool isDuplicateUsername)?
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
    required TResult Function(UserEditStateEmpty value) empty,
    required TResult Function(UserEditStateLoading value) loading,
    required TResult Function(UserEditStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditStateEmpty value)? empty,
    TResult? Function(UserEditStateLoading value)? loading,
    TResult? Function(UserEditStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditStateEmpty value)? empty,
    TResult Function(UserEditStateLoading value)? loading,
    TResult Function(UserEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class UserEditStateEmpty implements UserEditState {
  const factory UserEditStateEmpty() = _$UserEditStateEmptyImpl;
}

/// @nodoc
abstract class _$$UserEditStateLoadingImplCopyWith<$Res> {
  factory _$$UserEditStateLoadingImplCopyWith(_$UserEditStateLoadingImpl value,
          $Res Function(_$UserEditStateLoadingImpl) then) =
      __$$UserEditStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserEditStateLoadingImplCopyWithImpl<$Res>
    extends _$UserEditStateCopyWithImpl<$Res, _$UserEditStateLoadingImpl>
    implements _$$UserEditStateLoadingImplCopyWith<$Res> {
  __$$UserEditStateLoadingImplCopyWithImpl(_$UserEditStateLoadingImpl _value,
      $Res Function(_$UserEditStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserEditStateLoadingImpl implements UserEditStateLoading {
  const _$UserEditStateLoadingImpl();

  @override
  String toString() {
    return 'UserEditState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, User user, bool isDuplicateUsername)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, User user, bool isDuplicateUsername)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, User user, bool isDuplicateUsername)?
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
    required TResult Function(UserEditStateEmpty value) empty,
    required TResult Function(UserEditStateLoading value) loading,
    required TResult Function(UserEditStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditStateEmpty value)? empty,
    TResult? Function(UserEditStateLoading value)? loading,
    TResult? Function(UserEditStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditStateEmpty value)? empty,
    TResult Function(UserEditStateLoading value)? loading,
    TResult Function(UserEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserEditStateLoading implements UserEditState {
  const factory UserEditStateLoading() = _$UserEditStateLoadingImpl;
}

/// @nodoc
abstract class _$$UserEditStateLoadedImplCopyWith<$Res> {
  factory _$$UserEditStateLoadedImplCopyWith(_$UserEditStateLoadedImpl value,
          $Res Function(_$UserEditStateLoadedImpl) then) =
      __$$UserEditStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type, User user, bool isDuplicateUsername});

  $CrudTypeCopyWith<$Res> get type;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserEditStateLoadedImplCopyWithImpl<$Res>
    extends _$UserEditStateCopyWithImpl<$Res, _$UserEditStateLoadedImpl>
    implements _$$UserEditStateLoadedImplCopyWith<$Res> {
  __$$UserEditStateLoadedImplCopyWithImpl(_$UserEditStateLoadedImpl _value,
      $Res Function(_$UserEditStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? user = null,
    Object? isDuplicateUsername = null,
  }) {
    return _then(_$UserEditStateLoadedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CrudType,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isDuplicateUsername: null == isDuplicateUsername
          ? _value.isDuplicateUsername
          : isDuplicateUsername // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CrudTypeCopyWith<$Res> get type {
    return $CrudTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
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

class _$UserEditStateLoadedImpl implements UserEditStateLoaded {
  const _$UserEditStateLoadedImpl(
      {required this.type,
      required this.user,
      this.isDuplicateUsername = false});

  @override
  final CrudType type;
  @override
  final User user;
  @override
  @JsonKey()
  final bool isDuplicateUsername;

  @override
  String toString() {
    return 'UserEditState.loaded(type: $type, user: $user, isDuplicateUsername: $isDuplicateUsername)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditStateLoadedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isDuplicateUsername, isDuplicateUsername) ||
                other.isDuplicateUsername == isDuplicateUsername));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, user, isDuplicateUsername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditStateLoadedImplCopyWith<_$UserEditStateLoadedImpl> get copyWith =>
      __$$UserEditStateLoadedImplCopyWithImpl<_$UserEditStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, User user, bool isDuplicateUsername)
        loaded,
  }) {
    return loaded(type, user, isDuplicateUsername);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, User user, bool isDuplicateUsername)?
        loaded,
  }) {
    return loaded?.call(type, user, isDuplicateUsername);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, User user, bool isDuplicateUsername)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(type, user, isDuplicateUsername);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditStateEmpty value) empty,
    required TResult Function(UserEditStateLoading value) loading,
    required TResult Function(UserEditStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditStateEmpty value)? empty,
    TResult? Function(UserEditStateLoading value)? loading,
    TResult? Function(UserEditStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditStateEmpty value)? empty,
    TResult Function(UserEditStateLoading value)? loading,
    TResult Function(UserEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserEditStateLoaded implements UserEditState {
  const factory UserEditStateLoaded(
      {required final CrudType type,
      required final User user,
      final bool isDuplicateUsername}) = _$UserEditStateLoadedImpl;

  CrudType get type;
  User get user;
  bool get isDuplicateUsername;
  @JsonKey(ignore: true)
  _$$UserEditStateLoadedImplCopyWith<_$UserEditStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
