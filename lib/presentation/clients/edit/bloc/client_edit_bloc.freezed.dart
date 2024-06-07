// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClientEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhoneNumber,
    required TResult Function(VoidCallback callback) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhoneNumber,
    TResult? Function(VoidCallback callback)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhoneNumber,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientEditEventLoad value) load,
    required TResult Function(ClientEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(ClientEditEventChangeLastName value)
        changeLastName,
    required TResult Function(ClientEditEventChangeEmail value) changeEmail,
    required TResult Function(ClientEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(ClientEditEventSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult? Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult? Function(ClientEditEventChangePhoneNumber value)?
        changePhoneNumber,
    TResult? Function(ClientEditEventSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult Function(ClientEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(ClientEditEventSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientEditEventCopyWith<$Res> {
  factory $ClientEditEventCopyWith(
          ClientEditEvent value, $Res Function(ClientEditEvent) then) =
      _$ClientEditEventCopyWithImpl<$Res, ClientEditEvent>;
}

/// @nodoc
class _$ClientEditEventCopyWithImpl<$Res, $Val extends ClientEditEvent>
    implements $ClientEditEventCopyWith<$Res> {
  _$ClientEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientEditEventLoadImplCopyWith<$Res> {
  factory _$$ClientEditEventLoadImplCopyWith(_$ClientEditEventLoadImpl value,
          $Res Function(_$ClientEditEventLoadImpl) then) =
      __$$ClientEditEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type});

  $CrudTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$ClientEditEventLoadImplCopyWithImpl<$Res>
    extends _$ClientEditEventCopyWithImpl<$Res, _$ClientEditEventLoadImpl>
    implements _$$ClientEditEventLoadImplCopyWith<$Res> {
  __$$ClientEditEventLoadImplCopyWithImpl(_$ClientEditEventLoadImpl _value,
      $Res Function(_$ClientEditEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ClientEditEventLoadImpl(
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

class _$ClientEditEventLoadImpl implements ClientEditEventLoad {
  const _$ClientEditEventLoadImpl({required this.type});

  @override
  final CrudType type;

  @override
  String toString() {
    return 'ClientEditEvent.load(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditEventLoadImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEditEventLoadImplCopyWith<_$ClientEditEventLoadImpl> get copyWith =>
      __$$ClientEditEventLoadImplCopyWithImpl<_$ClientEditEventLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhoneNumber,
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
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhoneNumber,
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
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhoneNumber,
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
    required TResult Function(ClientEditEventLoad value) load,
    required TResult Function(ClientEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(ClientEditEventChangeLastName value)
        changeLastName,
    required TResult Function(ClientEditEventChangeEmail value) changeEmail,
    required TResult Function(ClientEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(ClientEditEventSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult? Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult? Function(ClientEditEventChangePhoneNumber value)?
        changePhoneNumber,
    TResult? Function(ClientEditEventSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult Function(ClientEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(ClientEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ClientEditEventLoad implements ClientEditEvent {
  const factory ClientEditEventLoad({required final CrudType type}) =
      _$ClientEditEventLoadImpl;

  CrudType get type;
  @JsonKey(ignore: true)
  _$$ClientEditEventLoadImplCopyWith<_$ClientEditEventLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientEditEventChangeFirstNameImplCopyWith<$Res> {
  factory _$$ClientEditEventChangeFirstNameImplCopyWith(
          _$ClientEditEventChangeFirstNameImpl value,
          $Res Function(_$ClientEditEventChangeFirstNameImpl) then) =
      __$$ClientEditEventChangeFirstNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ClientEditEventChangeFirstNameImplCopyWithImpl<$Res>
    extends _$ClientEditEventCopyWithImpl<$Res,
        _$ClientEditEventChangeFirstNameImpl>
    implements _$$ClientEditEventChangeFirstNameImplCopyWith<$Res> {
  __$$ClientEditEventChangeFirstNameImplCopyWithImpl(
      _$ClientEditEventChangeFirstNameImpl _value,
      $Res Function(_$ClientEditEventChangeFirstNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ClientEditEventChangeFirstNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientEditEventChangeFirstNameImpl
    implements ClientEditEventChangeFirstName {
  const _$ClientEditEventChangeFirstNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ClientEditEvent.changeFirstName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditEventChangeFirstNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEditEventChangeFirstNameImplCopyWith<
          _$ClientEditEventChangeFirstNameImpl>
      get copyWith => __$$ClientEditEventChangeFirstNameImplCopyWithImpl<
          _$ClientEditEventChangeFirstNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhoneNumber,
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
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhoneNumber,
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
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhoneNumber,
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
    required TResult Function(ClientEditEventLoad value) load,
    required TResult Function(ClientEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(ClientEditEventChangeLastName value)
        changeLastName,
    required TResult Function(ClientEditEventChangeEmail value) changeEmail,
    required TResult Function(ClientEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(ClientEditEventSave value) save,
  }) {
    return changeFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult? Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult? Function(ClientEditEventChangePhoneNumber value)?
        changePhoneNumber,
    TResult? Function(ClientEditEventSave value)? save,
  }) {
    return changeFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult Function(ClientEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(ClientEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeFirstName != null) {
      return changeFirstName(this);
    }
    return orElse();
  }
}

abstract class ClientEditEventChangeFirstName implements ClientEditEvent {
  const factory ClientEditEventChangeFirstName({required final String value}) =
      _$ClientEditEventChangeFirstNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ClientEditEventChangeFirstNameImplCopyWith<
          _$ClientEditEventChangeFirstNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientEditEventChangeLastNameImplCopyWith<$Res> {
  factory _$$ClientEditEventChangeLastNameImplCopyWith(
          _$ClientEditEventChangeLastNameImpl value,
          $Res Function(_$ClientEditEventChangeLastNameImpl) then) =
      __$$ClientEditEventChangeLastNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ClientEditEventChangeLastNameImplCopyWithImpl<$Res>
    extends _$ClientEditEventCopyWithImpl<$Res,
        _$ClientEditEventChangeLastNameImpl>
    implements _$$ClientEditEventChangeLastNameImplCopyWith<$Res> {
  __$$ClientEditEventChangeLastNameImplCopyWithImpl(
      _$ClientEditEventChangeLastNameImpl _value,
      $Res Function(_$ClientEditEventChangeLastNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ClientEditEventChangeLastNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientEditEventChangeLastNameImpl
    implements ClientEditEventChangeLastName {
  const _$ClientEditEventChangeLastNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ClientEditEvent.changeLastName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditEventChangeLastNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEditEventChangeLastNameImplCopyWith<
          _$ClientEditEventChangeLastNameImpl>
      get copyWith => __$$ClientEditEventChangeLastNameImplCopyWithImpl<
          _$ClientEditEventChangeLastNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhoneNumber,
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
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhoneNumber,
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
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhoneNumber,
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
    required TResult Function(ClientEditEventLoad value) load,
    required TResult Function(ClientEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(ClientEditEventChangeLastName value)
        changeLastName,
    required TResult Function(ClientEditEventChangeEmail value) changeEmail,
    required TResult Function(ClientEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(ClientEditEventSave value) save,
  }) {
    return changeLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult? Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult? Function(ClientEditEventChangePhoneNumber value)?
        changePhoneNumber,
    TResult? Function(ClientEditEventSave value)? save,
  }) {
    return changeLastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult Function(ClientEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(ClientEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeLastName != null) {
      return changeLastName(this);
    }
    return orElse();
  }
}

abstract class ClientEditEventChangeLastName implements ClientEditEvent {
  const factory ClientEditEventChangeLastName({required final String value}) =
      _$ClientEditEventChangeLastNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ClientEditEventChangeLastNameImplCopyWith<
          _$ClientEditEventChangeLastNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientEditEventChangeEmailImplCopyWith<$Res> {
  factory _$$ClientEditEventChangeEmailImplCopyWith(
          _$ClientEditEventChangeEmailImpl value,
          $Res Function(_$ClientEditEventChangeEmailImpl) then) =
      __$$ClientEditEventChangeEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ClientEditEventChangeEmailImplCopyWithImpl<$Res>
    extends _$ClientEditEventCopyWithImpl<$Res,
        _$ClientEditEventChangeEmailImpl>
    implements _$$ClientEditEventChangeEmailImplCopyWith<$Res> {
  __$$ClientEditEventChangeEmailImplCopyWithImpl(
      _$ClientEditEventChangeEmailImpl _value,
      $Res Function(_$ClientEditEventChangeEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ClientEditEventChangeEmailImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientEditEventChangeEmailImpl implements ClientEditEventChangeEmail {
  const _$ClientEditEventChangeEmailImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ClientEditEvent.changeEmail(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditEventChangeEmailImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEditEventChangeEmailImplCopyWith<_$ClientEditEventChangeEmailImpl>
      get copyWith => __$$ClientEditEventChangeEmailImplCopyWithImpl<
          _$ClientEditEventChangeEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhoneNumber,
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
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhoneNumber,
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
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhoneNumber,
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
    required TResult Function(ClientEditEventLoad value) load,
    required TResult Function(ClientEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(ClientEditEventChangeLastName value)
        changeLastName,
    required TResult Function(ClientEditEventChangeEmail value) changeEmail,
    required TResult Function(ClientEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(ClientEditEventSave value) save,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult? Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult? Function(ClientEditEventChangePhoneNumber value)?
        changePhoneNumber,
    TResult? Function(ClientEditEventSave value)? save,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult Function(ClientEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(ClientEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class ClientEditEventChangeEmail implements ClientEditEvent {
  const factory ClientEditEventChangeEmail({required final String value}) =
      _$ClientEditEventChangeEmailImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ClientEditEventChangeEmailImplCopyWith<_$ClientEditEventChangeEmailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientEditEventChangePhoneNumberImplCopyWith<$Res> {
  factory _$$ClientEditEventChangePhoneNumberImplCopyWith(
          _$ClientEditEventChangePhoneNumberImpl value,
          $Res Function(_$ClientEditEventChangePhoneNumberImpl) then) =
      __$$ClientEditEventChangePhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ClientEditEventChangePhoneNumberImplCopyWithImpl<$Res>
    extends _$ClientEditEventCopyWithImpl<$Res,
        _$ClientEditEventChangePhoneNumberImpl>
    implements _$$ClientEditEventChangePhoneNumberImplCopyWith<$Res> {
  __$$ClientEditEventChangePhoneNumberImplCopyWithImpl(
      _$ClientEditEventChangePhoneNumberImpl _value,
      $Res Function(_$ClientEditEventChangePhoneNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ClientEditEventChangePhoneNumberImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientEditEventChangePhoneNumberImpl
    implements ClientEditEventChangePhoneNumber {
  const _$ClientEditEventChangePhoneNumberImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ClientEditEvent.changePhoneNumber(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditEventChangePhoneNumberImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEditEventChangePhoneNumberImplCopyWith<
          _$ClientEditEventChangePhoneNumberImpl>
      get copyWith => __$$ClientEditEventChangePhoneNumberImplCopyWithImpl<
          _$ClientEditEventChangePhoneNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhoneNumber,
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
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhoneNumber,
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
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhoneNumber,
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
    required TResult Function(ClientEditEventLoad value) load,
    required TResult Function(ClientEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(ClientEditEventChangeLastName value)
        changeLastName,
    required TResult Function(ClientEditEventChangeEmail value) changeEmail,
    required TResult Function(ClientEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(ClientEditEventSave value) save,
  }) {
    return changePhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult? Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult? Function(ClientEditEventChangePhoneNumber value)?
        changePhoneNumber,
    TResult? Function(ClientEditEventSave value)? save,
  }) {
    return changePhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult Function(ClientEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(ClientEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changePhoneNumber != null) {
      return changePhoneNumber(this);
    }
    return orElse();
  }
}

abstract class ClientEditEventChangePhoneNumber implements ClientEditEvent {
  const factory ClientEditEventChangePhoneNumber(
      {required final String value}) = _$ClientEditEventChangePhoneNumberImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ClientEditEventChangePhoneNumberImplCopyWith<
          _$ClientEditEventChangePhoneNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientEditEventSaveImplCopyWith<$Res> {
  factory _$$ClientEditEventSaveImplCopyWith(_$ClientEditEventSaveImpl value,
          $Res Function(_$ClientEditEventSaveImpl) then) =
      __$$ClientEditEventSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback callback});
}

/// @nodoc
class __$$ClientEditEventSaveImplCopyWithImpl<$Res>
    extends _$ClientEditEventCopyWithImpl<$Res, _$ClientEditEventSaveImpl>
    implements _$$ClientEditEventSaveImplCopyWith<$Res> {
  __$$ClientEditEventSaveImplCopyWithImpl(_$ClientEditEventSaveImpl _value,
      $Res Function(_$ClientEditEventSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$ClientEditEventSaveImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$ClientEditEventSaveImpl implements ClientEditEventSave {
  const _$ClientEditEventSaveImpl({required this.callback});

  @override
  final VoidCallback callback;

  @override
  String toString() {
    return 'ClientEditEvent.save(callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditEventSaveImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEditEventSaveImplCopyWith<_$ClientEditEventSaveImpl> get copyWith =>
      __$$ClientEditEventSaveImplCopyWithImpl<_$ClientEditEventSaveImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhoneNumber,
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
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhoneNumber,
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
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhoneNumber,
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
    required TResult Function(ClientEditEventLoad value) load,
    required TResult Function(ClientEditEventChangeFirstName value)
        changeFirstName,
    required TResult Function(ClientEditEventChangeLastName value)
        changeLastName,
    required TResult Function(ClientEditEventChangeEmail value) changeEmail,
    required TResult Function(ClientEditEventChangePhoneNumber value)
        changePhoneNumber,
    required TResult Function(ClientEditEventSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult? Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult? Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult? Function(ClientEditEventChangePhoneNumber value)?
        changePhoneNumber,
    TResult? Function(ClientEditEventSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventChangeFirstName value)? changeFirstName,
    TResult Function(ClientEditEventChangeLastName value)? changeLastName,
    TResult Function(ClientEditEventChangeEmail value)? changeEmail,
    TResult Function(ClientEditEventChangePhoneNumber value)? changePhoneNumber,
    TResult Function(ClientEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class ClientEditEventSave implements ClientEditEvent {
  const factory ClientEditEventSave({required final VoidCallback callback}) =
      _$ClientEditEventSaveImpl;

  VoidCallback get callback;
  @JsonKey(ignore: true)
  _$$ClientEditEventSaveImplCopyWith<_$ClientEditEventSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Client client) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Client client)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Client client)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientEditStateEmpty value) empty,
    required TResult Function(ClientEditStateLoading value) loading,
    required TResult Function(ClientEditStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditStateEmpty value)? empty,
    TResult? Function(ClientEditStateLoading value)? loading,
    TResult? Function(ClientEditStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditStateEmpty value)? empty,
    TResult Function(ClientEditStateLoading value)? loading,
    TResult Function(ClientEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientEditStateCopyWith<$Res> {
  factory $ClientEditStateCopyWith(
          ClientEditState value, $Res Function(ClientEditState) then) =
      _$ClientEditStateCopyWithImpl<$Res, ClientEditState>;
}

/// @nodoc
class _$ClientEditStateCopyWithImpl<$Res, $Val extends ClientEditState>
    implements $ClientEditStateCopyWith<$Res> {
  _$ClientEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientEditStateEmptyImplCopyWith<$Res> {
  factory _$$ClientEditStateEmptyImplCopyWith(_$ClientEditStateEmptyImpl value,
          $Res Function(_$ClientEditStateEmptyImpl) then) =
      __$$ClientEditStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientEditStateEmptyImplCopyWithImpl<$Res>
    extends _$ClientEditStateCopyWithImpl<$Res, _$ClientEditStateEmptyImpl>
    implements _$$ClientEditStateEmptyImplCopyWith<$Res> {
  __$$ClientEditStateEmptyImplCopyWithImpl(_$ClientEditStateEmptyImpl _value,
      $Res Function(_$ClientEditStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientEditStateEmptyImpl implements ClientEditStateEmpty {
  const _$ClientEditStateEmptyImpl();

  @override
  String toString() {
    return 'ClientEditState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Client client) loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Client client)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Client client)? loaded,
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
    required TResult Function(ClientEditStateEmpty value) empty,
    required TResult Function(ClientEditStateLoading value) loading,
    required TResult Function(ClientEditStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditStateEmpty value)? empty,
    TResult? Function(ClientEditStateLoading value)? loading,
    TResult? Function(ClientEditStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditStateEmpty value)? empty,
    TResult Function(ClientEditStateLoading value)? loading,
    TResult Function(ClientEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ClientEditStateEmpty implements ClientEditState {
  const factory ClientEditStateEmpty() = _$ClientEditStateEmptyImpl;
}

/// @nodoc
abstract class _$$ClientEditStateLoadingImplCopyWith<$Res> {
  factory _$$ClientEditStateLoadingImplCopyWith(
          _$ClientEditStateLoadingImpl value,
          $Res Function(_$ClientEditStateLoadingImpl) then) =
      __$$ClientEditStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientEditStateLoadingImplCopyWithImpl<$Res>
    extends _$ClientEditStateCopyWithImpl<$Res, _$ClientEditStateLoadingImpl>
    implements _$$ClientEditStateLoadingImplCopyWith<$Res> {
  __$$ClientEditStateLoadingImplCopyWithImpl(
      _$ClientEditStateLoadingImpl _value,
      $Res Function(_$ClientEditStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientEditStateLoadingImpl implements ClientEditStateLoading {
  const _$ClientEditStateLoadingImpl();

  @override
  String toString() {
    return 'ClientEditState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Client client) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Client client)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Client client)? loaded,
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
    required TResult Function(ClientEditStateEmpty value) empty,
    required TResult Function(ClientEditStateLoading value) loading,
    required TResult Function(ClientEditStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditStateEmpty value)? empty,
    TResult? Function(ClientEditStateLoading value)? loading,
    TResult? Function(ClientEditStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditStateEmpty value)? empty,
    TResult Function(ClientEditStateLoading value)? loading,
    TResult Function(ClientEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ClientEditStateLoading implements ClientEditState {
  const factory ClientEditStateLoading() = _$ClientEditStateLoadingImpl;
}

/// @nodoc
abstract class _$$ClientEditStateLoadedImplCopyWith<$Res> {
  factory _$$ClientEditStateLoadedImplCopyWith(
          _$ClientEditStateLoadedImpl value,
          $Res Function(_$ClientEditStateLoadedImpl) then) =
      __$$ClientEditStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type, Client client});

  $CrudTypeCopyWith<$Res> get type;
  $ClientCopyWith<$Res> get client;
}

/// @nodoc
class __$$ClientEditStateLoadedImplCopyWithImpl<$Res>
    extends _$ClientEditStateCopyWithImpl<$Res, _$ClientEditStateLoadedImpl>
    implements _$$ClientEditStateLoadedImplCopyWith<$Res> {
  __$$ClientEditStateLoadedImplCopyWithImpl(_$ClientEditStateLoadedImpl _value,
      $Res Function(_$ClientEditStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? client = null,
  }) {
    return _then(_$ClientEditStateLoadedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CrudType,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
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
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value));
    });
  }
}

/// @nodoc

class _$ClientEditStateLoadedImpl implements ClientEditStateLoaded {
  const _$ClientEditStateLoadedImpl({required this.type, required this.client});

  @override
  final CrudType type;
  @override
  final Client client;

  @override
  String toString() {
    return 'ClientEditState.loaded(type: $type, client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditStateLoadedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEditStateLoadedImplCopyWith<_$ClientEditStateLoadedImpl>
      get copyWith => __$$ClientEditStateLoadedImplCopyWithImpl<
          _$ClientEditStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Client client) loaded,
  }) {
    return loaded(type, client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Client client)? loaded,
  }) {
    return loaded?.call(type, client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Client client)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(type, client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientEditStateEmpty value) empty,
    required TResult Function(ClientEditStateLoading value) loading,
    required TResult Function(ClientEditStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditStateEmpty value)? empty,
    TResult? Function(ClientEditStateLoading value)? loading,
    TResult? Function(ClientEditStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditStateEmpty value)? empty,
    TResult Function(ClientEditStateLoading value)? loading,
    TResult Function(ClientEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ClientEditStateLoaded implements ClientEditState {
  const factory ClientEditStateLoaded(
      {required final CrudType type,
      required final Client client}) = _$ClientEditStateLoadedImpl;

  CrudType get type;
  Client get client;
  @JsonKey(ignore: true)
  _$$ClientEditStateLoadedImplCopyWith<_$ClientEditStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
