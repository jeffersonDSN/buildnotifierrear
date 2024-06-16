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
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changeDepartment,
    required TResult Function(String value) changeUsername,
    required TResult Function(String value) changePassword,
    required TResult Function(int value) changeUserType,
    required TResult Function(VoidCallback callback) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changeDepartment,
    TResult? Function(String value)? changeUsername,
    TResult? Function(String value)? changePassword,
    TResult? Function(int value)? changeUserType,
    TResult? Function(VoidCallback callback)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changeDepartment,
    TResult Function(String value)? changeUsername,
    TResult Function(String value)? changePassword,
    TResult Function(int value)? changeUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(UserEditEventChangeLastName value) changeLastName,
    required TResult Function(UserEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(UserEditEventChangeEmail value) changeEmail,
    required TResult Function(UserEditEventChangeDepartment value)
        changeDepartment,
    required TResult Function(UserEditEventChangeUsername value) changeUsername,
    required TResult Function(UserEditEventChangePassword value) changePassword,
    required TResult Function(UserEditEventChangeUserType value) changeUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(UserEditEventChangeLastName value)? changeLastName,
    TResult? Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(UserEditEventChangeEmail value)? changeEmail,
    TResult? Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult? Function(UserEditEventChangeUsername value)? changeUsername,
    TResult? Function(UserEditEventChangePassword value)? changePassword,
    TResult? Function(UserEditEventChangeUserType value)? changeUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult Function(UserEditEventChangeLastName value)? changeLastName,
    TResult Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(UserEditEventChangeEmail value)? changeEmail,
    TResult Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult Function(UserEditEventChangeUsername value)? changeUsername,
    TResult Function(UserEditEventChangePassword value)? changePassword,
    TResult Function(UserEditEventChangeUserType value)? changeUserType,
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
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changeDepartment,
    required TResult Function(String value) changeUsername,
    required TResult Function(String value) changePassword,
    required TResult Function(int value) changeUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return load(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changeDepartment,
    TResult? Function(String value)? changeUsername,
    TResult? Function(String value)? changePassword,
    TResult? Function(int value)? changeUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return load?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changeDepartment,
    TResult Function(String value)? changeUsername,
    TResult Function(String value)? changePassword,
    TResult Function(int value)? changeUserType,
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
    required TResult Function(UserEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(UserEditEventChangeLastName value) changeLastName,
    required TResult Function(UserEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(UserEditEventChangeEmail value) changeEmail,
    required TResult Function(UserEditEventChangeDepartment value)
        changeDepartment,
    required TResult Function(UserEditEventChangeUsername value) changeUsername,
    required TResult Function(UserEditEventChangePassword value) changePassword,
    required TResult Function(UserEditEventChangeUserType value) changeUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(UserEditEventChangeLastName value)? changeLastName,
    TResult? Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(UserEditEventChangeEmail value)? changeEmail,
    TResult? Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult? Function(UserEditEventChangeUsername value)? changeUsername,
    TResult? Function(UserEditEventChangePassword value)? changePassword,
    TResult? Function(UserEditEventChangeUserType value)? changeUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult Function(UserEditEventChangeLastName value)? changeLastName,
    TResult Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(UserEditEventChangeEmail value)? changeEmail,
    TResult Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult Function(UserEditEventChangeUsername value)? changeUsername,
    TResult Function(UserEditEventChangePassword value)? changePassword,
    TResult Function(UserEditEventChangeUserType value)? changeUserType,
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
abstract class _$$UserEditEventChangeFirstNameImplCopyWith<$Res> {
  factory _$$UserEditEventChangeFirstNameImplCopyWith(
          _$UserEditEventChangeFirstNameImpl value,
          $Res Function(_$UserEditEventChangeFirstNameImpl) then) =
      __$$UserEditEventChangeFirstNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventChangeFirstNameImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res,
        _$UserEditEventChangeFirstNameImpl>
    implements _$$UserEditEventChangeFirstNameImplCopyWith<$Res> {
  __$$UserEditEventChangeFirstNameImplCopyWithImpl(
      _$UserEditEventChangeFirstNameImpl _value,
      $Res Function(_$UserEditEventChangeFirstNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventChangeFirstNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventChangeFirstNameImpl
    implements UserEditEventChangeFirstName {
  const _$UserEditEventChangeFirstNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.changeFirstName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventChangeFirstNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventChangeFirstNameImplCopyWith<
          _$UserEditEventChangeFirstNameImpl>
      get copyWith => __$$UserEditEventChangeFirstNameImplCopyWithImpl<
          _$UserEditEventChangeFirstNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changeDepartment,
    required TResult Function(String value) changeUsername,
    required TResult Function(String value) changePassword,
    required TResult Function(int value) changeUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeFirstName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changeDepartment,
    TResult? Function(String value)? changeUsername,
    TResult? Function(String value)? changePassword,
    TResult? Function(int value)? changeUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeFirstName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changeDepartment,
    TResult Function(String value)? changeUsername,
    TResult Function(String value)? changePassword,
    TResult Function(int value)? changeUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeFirstName != null) {
      return changeFirstName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(UserEditEventChangeLastName value) changeLastName,
    required TResult Function(UserEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(UserEditEventChangeEmail value) changeEmail,
    required TResult Function(UserEditEventChangeDepartment value)
        changeDepartment,
    required TResult Function(UserEditEventChangeUsername value) changeUsername,
    required TResult Function(UserEditEventChangePassword value) changePassword,
    required TResult Function(UserEditEventChangeUserType value) changeUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return changeFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(UserEditEventChangeLastName value)? changeLastName,
    TResult? Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(UserEditEventChangeEmail value)? changeEmail,
    TResult? Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult? Function(UserEditEventChangeUsername value)? changeUsername,
    TResult? Function(UserEditEventChangePassword value)? changePassword,
    TResult? Function(UserEditEventChangeUserType value)? changeUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return changeFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult Function(UserEditEventChangeLastName value)? changeLastName,
    TResult Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(UserEditEventChangeEmail value)? changeEmail,
    TResult Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult Function(UserEditEventChangeUsername value)? changeUsername,
    TResult Function(UserEditEventChangePassword value)? changePassword,
    TResult Function(UserEditEventChangeUserType value)? changeUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (changeFirstName != null) {
      return changeFirstName(this);
    }
    return orElse();
  }
}

abstract class UserEditEventChangeFirstName implements UserEditEvent {
  const factory UserEditEventChangeFirstName({required final String value}) =
      _$UserEditEventChangeFirstNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventChangeFirstNameImplCopyWith<
          _$UserEditEventChangeFirstNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventChangeLastNameImplCopyWith<$Res> {
  factory _$$UserEditEventChangeLastNameImplCopyWith(
          _$UserEditEventChangeLastNameImpl value,
          $Res Function(_$UserEditEventChangeLastNameImpl) then) =
      __$$UserEditEventChangeLastNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventChangeLastNameImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res, _$UserEditEventChangeLastNameImpl>
    implements _$$UserEditEventChangeLastNameImplCopyWith<$Res> {
  __$$UserEditEventChangeLastNameImplCopyWithImpl(
      _$UserEditEventChangeLastNameImpl _value,
      $Res Function(_$UserEditEventChangeLastNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventChangeLastNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventChangeLastNameImpl implements UserEditEventChangeLastName {
  const _$UserEditEventChangeLastNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.changeLastName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventChangeLastNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventChangeLastNameImplCopyWith<_$UserEditEventChangeLastNameImpl>
      get copyWith => __$$UserEditEventChangeLastNameImplCopyWithImpl<
          _$UserEditEventChangeLastNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changeDepartment,
    required TResult Function(String value) changeUsername,
    required TResult Function(String value) changePassword,
    required TResult Function(int value) changeUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeLastName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changeDepartment,
    TResult? Function(String value)? changeUsername,
    TResult? Function(String value)? changePassword,
    TResult? Function(int value)? changeUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeLastName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changeDepartment,
    TResult Function(String value)? changeUsername,
    TResult Function(String value)? changePassword,
    TResult Function(int value)? changeUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeLastName != null) {
      return changeLastName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(UserEditEventChangeLastName value) changeLastName,
    required TResult Function(UserEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(UserEditEventChangeEmail value) changeEmail,
    required TResult Function(UserEditEventChangeDepartment value)
        changeDepartment,
    required TResult Function(UserEditEventChangeUsername value) changeUsername,
    required TResult Function(UserEditEventChangePassword value) changePassword,
    required TResult Function(UserEditEventChangeUserType value) changeUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return changeLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(UserEditEventChangeLastName value)? changeLastName,
    TResult? Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(UserEditEventChangeEmail value)? changeEmail,
    TResult? Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult? Function(UserEditEventChangeUsername value)? changeUsername,
    TResult? Function(UserEditEventChangePassword value)? changePassword,
    TResult? Function(UserEditEventChangeUserType value)? changeUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return changeLastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult Function(UserEditEventChangeLastName value)? changeLastName,
    TResult Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(UserEditEventChangeEmail value)? changeEmail,
    TResult Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult Function(UserEditEventChangeUsername value)? changeUsername,
    TResult Function(UserEditEventChangePassword value)? changePassword,
    TResult Function(UserEditEventChangeUserType value)? changeUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (changeLastName != null) {
      return changeLastName(this);
    }
    return orElse();
  }
}

abstract class UserEditEventChangeLastName implements UserEditEvent {
  const factory UserEditEventChangeLastName({required final String value}) =
      _$UserEditEventChangeLastNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventChangeLastNameImplCopyWith<_$UserEditEventChangeLastNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventChangePhoneNumberImplCopyWith<$Res> {
  factory _$$UserEditEventChangePhoneNumberImplCopyWith(
          _$UserEditEventChangePhoneNumberImpl value,
          $Res Function(_$UserEditEventChangePhoneNumberImpl) then) =
      __$$UserEditEventChangePhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventChangePhoneNumberImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res,
        _$UserEditEventChangePhoneNumberImpl>
    implements _$$UserEditEventChangePhoneNumberImplCopyWith<$Res> {
  __$$UserEditEventChangePhoneNumberImplCopyWithImpl(
      _$UserEditEventChangePhoneNumberImpl _value,
      $Res Function(_$UserEditEventChangePhoneNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventChangePhoneNumberImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventChangePhoneNumberImpl
    implements UserEditEventChangePhoneNumber {
  const _$UserEditEventChangePhoneNumberImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.changePhoneNumber(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventChangePhoneNumberImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventChangePhoneNumberImplCopyWith<
          _$UserEditEventChangePhoneNumberImpl>
      get copyWith => __$$UserEditEventChangePhoneNumberImplCopyWithImpl<
          _$UserEditEventChangePhoneNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changeDepartment,
    required TResult Function(String value) changeUsername,
    required TResult Function(String value) changePassword,
    required TResult Function(int value) changeUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changePhoneNumber(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changeDepartment,
    TResult? Function(String value)? changeUsername,
    TResult? Function(String value)? changePassword,
    TResult? Function(int value)? changeUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changePhoneNumber?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changeDepartment,
    TResult Function(String value)? changeUsername,
    TResult Function(String value)? changePassword,
    TResult Function(int value)? changeUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changePhoneNumber != null) {
      return changePhoneNumber(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(UserEditEventChangeLastName value) changeLastName,
    required TResult Function(UserEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(UserEditEventChangeEmail value) changeEmail,
    required TResult Function(UserEditEventChangeDepartment value)
        changeDepartment,
    required TResult Function(UserEditEventChangeUsername value) changeUsername,
    required TResult Function(UserEditEventChangePassword value) changePassword,
    required TResult Function(UserEditEventChangeUserType value) changeUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return changePhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(UserEditEventChangeLastName value)? changeLastName,
    TResult? Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(UserEditEventChangeEmail value)? changeEmail,
    TResult? Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult? Function(UserEditEventChangeUsername value)? changeUsername,
    TResult? Function(UserEditEventChangePassword value)? changePassword,
    TResult? Function(UserEditEventChangeUserType value)? changeUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return changePhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult Function(UserEditEventChangeLastName value)? changeLastName,
    TResult Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(UserEditEventChangeEmail value)? changeEmail,
    TResult Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult Function(UserEditEventChangeUsername value)? changeUsername,
    TResult Function(UserEditEventChangePassword value)? changePassword,
    TResult Function(UserEditEventChangeUserType value)? changeUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (changePhoneNumber != null) {
      return changePhoneNumber(this);
    }
    return orElse();
  }
}

abstract class UserEditEventChangePhoneNumber implements UserEditEvent {
  const factory UserEditEventChangePhoneNumber({required final String value}) =
      _$UserEditEventChangePhoneNumberImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventChangePhoneNumberImplCopyWith<
          _$UserEditEventChangePhoneNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventChangeEmailImplCopyWith<$Res> {
  factory _$$UserEditEventChangeEmailImplCopyWith(
          _$UserEditEventChangeEmailImpl value,
          $Res Function(_$UserEditEventChangeEmailImpl) then) =
      __$$UserEditEventChangeEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventChangeEmailImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res, _$UserEditEventChangeEmailImpl>
    implements _$$UserEditEventChangeEmailImplCopyWith<$Res> {
  __$$UserEditEventChangeEmailImplCopyWithImpl(
      _$UserEditEventChangeEmailImpl _value,
      $Res Function(_$UserEditEventChangeEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventChangeEmailImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventChangeEmailImpl implements UserEditEventChangeEmail {
  const _$UserEditEventChangeEmailImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.changeEmail(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventChangeEmailImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventChangeEmailImplCopyWith<_$UserEditEventChangeEmailImpl>
      get copyWith => __$$UserEditEventChangeEmailImplCopyWithImpl<
          _$UserEditEventChangeEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changeDepartment,
    required TResult Function(String value) changeUsername,
    required TResult Function(String value) changePassword,
    required TResult Function(int value) changeUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeEmail(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changeDepartment,
    TResult? Function(String value)? changeUsername,
    TResult? Function(String value)? changePassword,
    TResult? Function(int value)? changeUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeEmail?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changeDepartment,
    TResult Function(String value)? changeUsername,
    TResult Function(String value)? changePassword,
    TResult Function(int value)? changeUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(UserEditEventChangeLastName value) changeLastName,
    required TResult Function(UserEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(UserEditEventChangeEmail value) changeEmail,
    required TResult Function(UserEditEventChangeDepartment value)
        changeDepartment,
    required TResult Function(UserEditEventChangeUsername value) changeUsername,
    required TResult Function(UserEditEventChangePassword value) changePassword,
    required TResult Function(UserEditEventChangeUserType value) changeUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(UserEditEventChangeLastName value)? changeLastName,
    TResult? Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(UserEditEventChangeEmail value)? changeEmail,
    TResult? Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult? Function(UserEditEventChangeUsername value)? changeUsername,
    TResult? Function(UserEditEventChangePassword value)? changePassword,
    TResult? Function(UserEditEventChangeUserType value)? changeUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult Function(UserEditEventChangeLastName value)? changeLastName,
    TResult Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(UserEditEventChangeEmail value)? changeEmail,
    TResult Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult Function(UserEditEventChangeUsername value)? changeUsername,
    TResult Function(UserEditEventChangePassword value)? changePassword,
    TResult Function(UserEditEventChangeUserType value)? changeUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class UserEditEventChangeEmail implements UserEditEvent {
  const factory UserEditEventChangeEmail({required final String value}) =
      _$UserEditEventChangeEmailImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventChangeEmailImplCopyWith<_$UserEditEventChangeEmailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventChangeDepartmentImplCopyWith<$Res> {
  factory _$$UserEditEventChangeDepartmentImplCopyWith(
          _$UserEditEventChangeDepartmentImpl value,
          $Res Function(_$UserEditEventChangeDepartmentImpl) then) =
      __$$UserEditEventChangeDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventChangeDepartmentImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res,
        _$UserEditEventChangeDepartmentImpl>
    implements _$$UserEditEventChangeDepartmentImplCopyWith<$Res> {
  __$$UserEditEventChangeDepartmentImplCopyWithImpl(
      _$UserEditEventChangeDepartmentImpl _value,
      $Res Function(_$UserEditEventChangeDepartmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventChangeDepartmentImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventChangeDepartmentImpl
    implements UserEditEventChangeDepartment {
  const _$UserEditEventChangeDepartmentImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.changeDepartment(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventChangeDepartmentImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventChangeDepartmentImplCopyWith<
          _$UserEditEventChangeDepartmentImpl>
      get copyWith => __$$UserEditEventChangeDepartmentImplCopyWithImpl<
          _$UserEditEventChangeDepartmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changeDepartment,
    required TResult Function(String value) changeUsername,
    required TResult Function(String value) changePassword,
    required TResult Function(int value) changeUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeDepartment(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changeDepartment,
    TResult? Function(String value)? changeUsername,
    TResult? Function(String value)? changePassword,
    TResult? Function(int value)? changeUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeDepartment?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changeDepartment,
    TResult Function(String value)? changeUsername,
    TResult Function(String value)? changePassword,
    TResult Function(int value)? changeUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeDepartment != null) {
      return changeDepartment(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(UserEditEventChangeLastName value) changeLastName,
    required TResult Function(UserEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(UserEditEventChangeEmail value) changeEmail,
    required TResult Function(UserEditEventChangeDepartment value)
        changeDepartment,
    required TResult Function(UserEditEventChangeUsername value) changeUsername,
    required TResult Function(UserEditEventChangePassword value) changePassword,
    required TResult Function(UserEditEventChangeUserType value) changeUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return changeDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(UserEditEventChangeLastName value)? changeLastName,
    TResult? Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(UserEditEventChangeEmail value)? changeEmail,
    TResult? Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult? Function(UserEditEventChangeUsername value)? changeUsername,
    TResult? Function(UserEditEventChangePassword value)? changePassword,
    TResult? Function(UserEditEventChangeUserType value)? changeUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return changeDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult Function(UserEditEventChangeLastName value)? changeLastName,
    TResult Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(UserEditEventChangeEmail value)? changeEmail,
    TResult Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult Function(UserEditEventChangeUsername value)? changeUsername,
    TResult Function(UserEditEventChangePassword value)? changePassword,
    TResult Function(UserEditEventChangeUserType value)? changeUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (changeDepartment != null) {
      return changeDepartment(this);
    }
    return orElse();
  }
}

abstract class UserEditEventChangeDepartment implements UserEditEvent {
  const factory UserEditEventChangeDepartment({required final String value}) =
      _$UserEditEventChangeDepartmentImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventChangeDepartmentImplCopyWith<
          _$UserEditEventChangeDepartmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventChangeUsernameImplCopyWith<$Res> {
  factory _$$UserEditEventChangeUsernameImplCopyWith(
          _$UserEditEventChangeUsernameImpl value,
          $Res Function(_$UserEditEventChangeUsernameImpl) then) =
      __$$UserEditEventChangeUsernameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventChangeUsernameImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res, _$UserEditEventChangeUsernameImpl>
    implements _$$UserEditEventChangeUsernameImplCopyWith<$Res> {
  __$$UserEditEventChangeUsernameImplCopyWithImpl(
      _$UserEditEventChangeUsernameImpl _value,
      $Res Function(_$UserEditEventChangeUsernameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventChangeUsernameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventChangeUsernameImpl implements UserEditEventChangeUsername {
  const _$UserEditEventChangeUsernameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.changeUsername(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventChangeUsernameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventChangeUsernameImplCopyWith<_$UserEditEventChangeUsernameImpl>
      get copyWith => __$$UserEditEventChangeUsernameImplCopyWithImpl<
          _$UserEditEventChangeUsernameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changeDepartment,
    required TResult Function(String value) changeUsername,
    required TResult Function(String value) changePassword,
    required TResult Function(int value) changeUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeUsername(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changeDepartment,
    TResult? Function(String value)? changeUsername,
    TResult? Function(String value)? changePassword,
    TResult? Function(int value)? changeUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeUsername?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changeDepartment,
    TResult Function(String value)? changeUsername,
    TResult Function(String value)? changePassword,
    TResult Function(int value)? changeUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeUsername != null) {
      return changeUsername(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(UserEditEventChangeLastName value) changeLastName,
    required TResult Function(UserEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(UserEditEventChangeEmail value) changeEmail,
    required TResult Function(UserEditEventChangeDepartment value)
        changeDepartment,
    required TResult Function(UserEditEventChangeUsername value) changeUsername,
    required TResult Function(UserEditEventChangePassword value) changePassword,
    required TResult Function(UserEditEventChangeUserType value) changeUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return changeUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(UserEditEventChangeLastName value)? changeLastName,
    TResult? Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(UserEditEventChangeEmail value)? changeEmail,
    TResult? Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult? Function(UserEditEventChangeUsername value)? changeUsername,
    TResult? Function(UserEditEventChangePassword value)? changePassword,
    TResult? Function(UserEditEventChangeUserType value)? changeUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return changeUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult Function(UserEditEventChangeLastName value)? changeLastName,
    TResult Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(UserEditEventChangeEmail value)? changeEmail,
    TResult Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult Function(UserEditEventChangeUsername value)? changeUsername,
    TResult Function(UserEditEventChangePassword value)? changePassword,
    TResult Function(UserEditEventChangeUserType value)? changeUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (changeUsername != null) {
      return changeUsername(this);
    }
    return orElse();
  }
}

abstract class UserEditEventChangeUsername implements UserEditEvent {
  const factory UserEditEventChangeUsername({required final String value}) =
      _$UserEditEventChangeUsernameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventChangeUsernameImplCopyWith<_$UserEditEventChangeUsernameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventChangePasswordImplCopyWith<$Res> {
  factory _$$UserEditEventChangePasswordImplCopyWith(
          _$UserEditEventChangePasswordImpl value,
          $Res Function(_$UserEditEventChangePasswordImpl) then) =
      __$$UserEditEventChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserEditEventChangePasswordImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res, _$UserEditEventChangePasswordImpl>
    implements _$$UserEditEventChangePasswordImplCopyWith<$Res> {
  __$$UserEditEventChangePasswordImplCopyWithImpl(
      _$UserEditEventChangePasswordImpl _value,
      $Res Function(_$UserEditEventChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventChangePasswordImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEditEventChangePasswordImpl implements UserEditEventChangePassword {
  const _$UserEditEventChangePasswordImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserEditEvent.changePassword(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventChangePasswordImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventChangePasswordImplCopyWith<_$UserEditEventChangePasswordImpl>
      get copyWith => __$$UserEditEventChangePasswordImplCopyWithImpl<
          _$UserEditEventChangePasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changeDepartment,
    required TResult Function(String value) changeUsername,
    required TResult Function(String value) changePassword,
    required TResult Function(int value) changeUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changePassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changeDepartment,
    TResult? Function(String value)? changeUsername,
    TResult? Function(String value)? changePassword,
    TResult? Function(int value)? changeUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changePassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changeDepartment,
    TResult Function(String value)? changeUsername,
    TResult Function(String value)? changePassword,
    TResult Function(int value)? changeUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(UserEditEventChangeLastName value) changeLastName,
    required TResult Function(UserEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(UserEditEventChangeEmail value) changeEmail,
    required TResult Function(UserEditEventChangeDepartment value)
        changeDepartment,
    required TResult Function(UserEditEventChangeUsername value) changeUsername,
    required TResult Function(UserEditEventChangePassword value) changePassword,
    required TResult Function(UserEditEventChangeUserType value) changeUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(UserEditEventChangeLastName value)? changeLastName,
    TResult? Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(UserEditEventChangeEmail value)? changeEmail,
    TResult? Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult? Function(UserEditEventChangeUsername value)? changeUsername,
    TResult? Function(UserEditEventChangePassword value)? changePassword,
    TResult? Function(UserEditEventChangeUserType value)? changeUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult Function(UserEditEventChangeLastName value)? changeLastName,
    TResult Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(UserEditEventChangeEmail value)? changeEmail,
    TResult Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult Function(UserEditEventChangeUsername value)? changeUsername,
    TResult Function(UserEditEventChangePassword value)? changePassword,
    TResult Function(UserEditEventChangeUserType value)? changeUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class UserEditEventChangePassword implements UserEditEvent {
  const factory UserEditEventChangePassword({required final String value}) =
      _$UserEditEventChangePasswordImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserEditEventChangePasswordImplCopyWith<_$UserEditEventChangePasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEditEventChangeUserTypeImplCopyWith<$Res> {
  factory _$$UserEditEventChangeUserTypeImplCopyWith(
          _$UserEditEventChangeUserTypeImpl value,
          $Res Function(_$UserEditEventChangeUserTypeImpl) then) =
      __$$UserEditEventChangeUserTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$UserEditEventChangeUserTypeImplCopyWithImpl<$Res>
    extends _$UserEditEventCopyWithImpl<$Res, _$UserEditEventChangeUserTypeImpl>
    implements _$$UserEditEventChangeUserTypeImplCopyWith<$Res> {
  __$$UserEditEventChangeUserTypeImplCopyWithImpl(
      _$UserEditEventChangeUserTypeImpl _value,
      $Res Function(_$UserEditEventChangeUserTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserEditEventChangeUserTypeImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserEditEventChangeUserTypeImpl implements UserEditEventChangeUserType {
  const _$UserEditEventChangeUserTypeImpl({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'UserEditEvent.changeUserType(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditEventChangeUserTypeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditEventChangeUserTypeImplCopyWith<_$UserEditEventChangeUserTypeImpl>
      get copyWith => __$$UserEditEventChangeUserTypeImplCopyWithImpl<
          _$UserEditEventChangeUserTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changeDepartment,
    required TResult Function(String value) changeUsername,
    required TResult Function(String value) changePassword,
    required TResult Function(int value) changeUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeUserType(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changeDepartment,
    TResult? Function(String value)? changeUsername,
    TResult? Function(String value)? changePassword,
    TResult? Function(int value)? changeUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeUserType?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changeDepartment,
    TResult Function(String value)? changeUsername,
    TResult Function(String value)? changePassword,
    TResult Function(int value)? changeUserType,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeUserType != null) {
      return changeUserType(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEditEventtLoad value) load,
    required TResult Function(UserEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(UserEditEventChangeLastName value) changeLastName,
    required TResult Function(UserEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(UserEditEventChangeEmail value) changeEmail,
    required TResult Function(UserEditEventChangeDepartment value)
        changeDepartment,
    required TResult Function(UserEditEventChangeUsername value) changeUsername,
    required TResult Function(UserEditEventChangePassword value) changePassword,
    required TResult Function(UserEditEventChangeUserType value) changeUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return changeUserType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(UserEditEventChangeLastName value)? changeLastName,
    TResult? Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(UserEditEventChangeEmail value)? changeEmail,
    TResult? Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult? Function(UserEditEventChangeUsername value)? changeUsername,
    TResult? Function(UserEditEventChangePassword value)? changePassword,
    TResult? Function(UserEditEventChangeUserType value)? changeUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return changeUserType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult Function(UserEditEventChangeLastName value)? changeLastName,
    TResult Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(UserEditEventChangeEmail value)? changeEmail,
    TResult Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult Function(UserEditEventChangeUsername value)? changeUsername,
    TResult Function(UserEditEventChangePassword value)? changePassword,
    TResult Function(UserEditEventChangeUserType value)? changeUserType,
    TResult Function(UserEditEventtSave value)? save,
    required TResult orElse(),
  }) {
    if (changeUserType != null) {
      return changeUserType(this);
    }
    return orElse();
  }
}

abstract class UserEditEventChangeUserType implements UserEditEvent {
  const factory UserEditEventChangeUserType({required final int value}) =
      _$UserEditEventChangeUserTypeImpl;

  int get value;
  @JsonKey(ignore: true)
  _$$UserEditEventChangeUserTypeImplCopyWith<_$UserEditEventChangeUserTypeImpl>
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
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changeDepartment,
    required TResult Function(String value) changeUsername,
    required TResult Function(String value) changePassword,
    required TResult Function(int value) changeUserType,
    required TResult Function(VoidCallback callback) save,
  }) {
    return save(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changeDepartment,
    TResult? Function(String value)? changeUsername,
    TResult? Function(String value)? changePassword,
    TResult? Function(int value)? changeUserType,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return save?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changeDepartment,
    TResult Function(String value)? changeUsername,
    TResult Function(String value)? changePassword,
    TResult Function(int value)? changeUserType,
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
    required TResult Function(UserEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(UserEditEventChangeLastName value) changeLastName,
    required TResult Function(UserEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(UserEditEventChangeEmail value) changeEmail,
    required TResult Function(UserEditEventChangeDepartment value)
        changeDepartment,
    required TResult Function(UserEditEventChangeUsername value) changeUsername,
    required TResult Function(UserEditEventChangePassword value) changePassword,
    required TResult Function(UserEditEventChangeUserType value) changeUserType,
    required TResult Function(UserEditEventtSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEditEventtLoad value)? load,
    TResult? Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(UserEditEventChangeLastName value)? changeLastName,
    TResult? Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(UserEditEventChangeEmail value)? changeEmail,
    TResult? Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult? Function(UserEditEventChangeUsername value)? changeUsername,
    TResult? Function(UserEditEventChangePassword value)? changePassword,
    TResult? Function(UserEditEventChangeUserType value)? changeUserType,
    TResult? Function(UserEditEventtSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEditEventtLoad value)? load,
    TResult Function(UserEditEventChangeFirstName value)? changeFirstName,
    TResult Function(UserEditEventChangeLastName value)? changeLastName,
    TResult Function(UserEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(UserEditEventChangeEmail value)? changeEmail,
    TResult Function(UserEditEventChangeDepartment value)? changeDepartment,
    TResult Function(UserEditEventChangeUsername value)? changeUsername,
    TResult Function(UserEditEventChangePassword value)? changePassword,
    TResult Function(UserEditEventChangeUserType value)? changeUserType,
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
            CrudType type, User user, ({int code, String message})? error)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            CrudType type, User user, ({int code, String message})? error)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            CrudType type, User user, ({int code, String message})? error)?
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
            CrudType type, User user, ({int code, String message})? error)
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
            CrudType type, User user, ({int code, String message})? error)?
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
            CrudType type, User user, ({int code, String message})? error)?
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
            CrudType type, User user, ({int code, String message})? error)
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
            CrudType type, User user, ({int code, String message})? error)?
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
            CrudType type, User user, ({int code, String message})? error)?
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
  $Res call({CrudType type, User user, ({int code, String message})? error});

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
    Object? error = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ({int code, String message})?,
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
      {required this.type, required this.user, this.error});

  @override
  final CrudType type;
  @override
  final User user;
  @override
  final ({int code, String message})? error;

  @override
  String toString() {
    return 'UserEditState.loaded(type: $type, user: $user, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditStateLoadedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, user, error);

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
            CrudType type, User user, ({int code, String message})? error)
        loaded,
  }) {
    return loaded(type, user, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            CrudType type, User user, ({int code, String message})? error)?
        loaded,
  }) {
    return loaded?.call(type, user, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            CrudType type, User user, ({int code, String message})? error)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(type, user, error);
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
      final ({int code, String message})? error}) = _$UserEditStateLoadedImpl;

  CrudType get type;
  User get user;
  ({int code, String message})? get error;
  @JsonKey(ignore: true)
  _$$UserEditStateLoadedImplCopyWith<_$UserEditStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
