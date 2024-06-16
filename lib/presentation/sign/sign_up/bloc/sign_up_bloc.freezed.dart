// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeCompanyName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhone,
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changeCompanyName,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhone,
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changeCompanyName,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhone,
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEventChangeFirstName value) changeFirstName,
    required TResult Function(SignUpEventChangeLastname value) changeLastName,
    required TResult Function(SignUpEventChangeCompanyName value)
        changeCompanyName,
    required TResult Function(SignUpEventChangeEmail value) changeEmail,
    required TResult Function(SignUpEventChangePhone value) changePhone,
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult? Function(SignUpEventChangeLastname value)? changeLastName,
    TResult? Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult? Function(SignUpEventChangeEmail value)? changeEmail,
    TResult? Function(SignUpEventChangePhone value)? changePhone,
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult Function(SignUpEventChangeLastname value)? changeLastName,
    TResult Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult Function(SignUpEventChangeEmail value)? changeEmail,
    TResult Function(SignUpEventChangePhone value)? changePhone,
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpEventChangeFirstNameImplCopyWith<$Res> {
  factory _$$SignUpEventChangeFirstNameImplCopyWith(
          _$SignUpEventChangeFirstNameImpl value,
          $Res Function(_$SignUpEventChangeFirstNameImpl) then) =
      __$$SignUpEventChangeFirstNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SignUpEventChangeFirstNameImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventChangeFirstNameImpl>
    implements _$$SignUpEventChangeFirstNameImplCopyWith<$Res> {
  __$$SignUpEventChangeFirstNameImplCopyWithImpl(
      _$SignUpEventChangeFirstNameImpl _value,
      $Res Function(_$SignUpEventChangeFirstNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SignUpEventChangeFirstNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEventChangeFirstNameImpl implements SignUpEventChangeFirstName {
  const _$SignUpEventChangeFirstNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.changeFirstName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventChangeFirstNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventChangeFirstNameImplCopyWith<_$SignUpEventChangeFirstNameImpl>
      get copyWith => __$$SignUpEventChangeFirstNameImplCopyWithImpl<
          _$SignUpEventChangeFirstNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeCompanyName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhone,
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signUp,
  }) {
    return changeFirstName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changeCompanyName,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhone,
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signUp,
  }) {
    return changeFirstName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changeCompanyName,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhone,
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signUp,
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
    required TResult Function(SignUpEventChangeFirstName value) changeFirstName,
    required TResult Function(SignUpEventChangeLastname value) changeLastName,
    required TResult Function(SignUpEventChangeCompanyName value)
        changeCompanyName,
    required TResult Function(SignUpEventChangeEmail value) changeEmail,
    required TResult Function(SignUpEventChangePhone value) changePhone,
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignUp value) signUp,
  }) {
    return changeFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult? Function(SignUpEventChangeLastname value)? changeLastName,
    TResult? Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult? Function(SignUpEventChangeEmail value)? changeEmail,
    TResult? Function(SignUpEventChangePhone value)? changePhone,
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignUp value)? signUp,
  }) {
    return changeFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult Function(SignUpEventChangeLastname value)? changeLastName,
    TResult Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult Function(SignUpEventChangeEmail value)? changeEmail,
    TResult Function(SignUpEventChangePhone value)? changePhone,
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (changeFirstName != null) {
      return changeFirstName(this);
    }
    return orElse();
  }
}

abstract class SignUpEventChangeFirstName implements SignUpEvent {
  const factory SignUpEventChangeFirstName({required final String value}) =
      _$SignUpEventChangeFirstNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SignUpEventChangeFirstNameImplCopyWith<_$SignUpEventChangeFirstNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventChangeLastnameImplCopyWith<$Res> {
  factory _$$SignUpEventChangeLastnameImplCopyWith(
          _$SignUpEventChangeLastnameImpl value,
          $Res Function(_$SignUpEventChangeLastnameImpl) then) =
      __$$SignUpEventChangeLastnameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SignUpEventChangeLastnameImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventChangeLastnameImpl>
    implements _$$SignUpEventChangeLastnameImplCopyWith<$Res> {
  __$$SignUpEventChangeLastnameImplCopyWithImpl(
      _$SignUpEventChangeLastnameImpl _value,
      $Res Function(_$SignUpEventChangeLastnameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SignUpEventChangeLastnameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEventChangeLastnameImpl implements SignUpEventChangeLastname {
  const _$SignUpEventChangeLastnameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.changeLastName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventChangeLastnameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventChangeLastnameImplCopyWith<_$SignUpEventChangeLastnameImpl>
      get copyWith => __$$SignUpEventChangeLastnameImplCopyWithImpl<
          _$SignUpEventChangeLastnameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeCompanyName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhone,
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signUp,
  }) {
    return changeLastName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changeCompanyName,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhone,
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signUp,
  }) {
    return changeLastName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changeCompanyName,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhone,
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signUp,
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
    required TResult Function(SignUpEventChangeFirstName value) changeFirstName,
    required TResult Function(SignUpEventChangeLastname value) changeLastName,
    required TResult Function(SignUpEventChangeCompanyName value)
        changeCompanyName,
    required TResult Function(SignUpEventChangeEmail value) changeEmail,
    required TResult Function(SignUpEventChangePhone value) changePhone,
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignUp value) signUp,
  }) {
    return changeLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult? Function(SignUpEventChangeLastname value)? changeLastName,
    TResult? Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult? Function(SignUpEventChangeEmail value)? changeEmail,
    TResult? Function(SignUpEventChangePhone value)? changePhone,
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignUp value)? signUp,
  }) {
    return changeLastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult Function(SignUpEventChangeLastname value)? changeLastName,
    TResult Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult Function(SignUpEventChangeEmail value)? changeEmail,
    TResult Function(SignUpEventChangePhone value)? changePhone,
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (changeLastName != null) {
      return changeLastName(this);
    }
    return orElse();
  }
}

abstract class SignUpEventChangeLastname implements SignUpEvent {
  const factory SignUpEventChangeLastname({required final String value}) =
      _$SignUpEventChangeLastnameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SignUpEventChangeLastnameImplCopyWith<_$SignUpEventChangeLastnameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventChangeCompanyNameImplCopyWith<$Res> {
  factory _$$SignUpEventChangeCompanyNameImplCopyWith(
          _$SignUpEventChangeCompanyNameImpl value,
          $Res Function(_$SignUpEventChangeCompanyNameImpl) then) =
      __$$SignUpEventChangeCompanyNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SignUpEventChangeCompanyNameImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventChangeCompanyNameImpl>
    implements _$$SignUpEventChangeCompanyNameImplCopyWith<$Res> {
  __$$SignUpEventChangeCompanyNameImplCopyWithImpl(
      _$SignUpEventChangeCompanyNameImpl _value,
      $Res Function(_$SignUpEventChangeCompanyNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SignUpEventChangeCompanyNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEventChangeCompanyNameImpl
    implements SignUpEventChangeCompanyName {
  const _$SignUpEventChangeCompanyNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.changeCompanyName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventChangeCompanyNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventChangeCompanyNameImplCopyWith<
          _$SignUpEventChangeCompanyNameImpl>
      get copyWith => __$$SignUpEventChangeCompanyNameImplCopyWithImpl<
          _$SignUpEventChangeCompanyNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeCompanyName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhone,
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signUp,
  }) {
    return changeCompanyName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changeCompanyName,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhone,
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signUp,
  }) {
    return changeCompanyName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changeCompanyName,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhone,
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signUp,
    required TResult orElse(),
  }) {
    if (changeCompanyName != null) {
      return changeCompanyName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEventChangeFirstName value) changeFirstName,
    required TResult Function(SignUpEventChangeLastname value) changeLastName,
    required TResult Function(SignUpEventChangeCompanyName value)
        changeCompanyName,
    required TResult Function(SignUpEventChangeEmail value) changeEmail,
    required TResult Function(SignUpEventChangePhone value) changePhone,
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignUp value) signUp,
  }) {
    return changeCompanyName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult? Function(SignUpEventChangeLastname value)? changeLastName,
    TResult? Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult? Function(SignUpEventChangeEmail value)? changeEmail,
    TResult? Function(SignUpEventChangePhone value)? changePhone,
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignUp value)? signUp,
  }) {
    return changeCompanyName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult Function(SignUpEventChangeLastname value)? changeLastName,
    TResult Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult Function(SignUpEventChangeEmail value)? changeEmail,
    TResult Function(SignUpEventChangePhone value)? changePhone,
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (changeCompanyName != null) {
      return changeCompanyName(this);
    }
    return orElse();
  }
}

abstract class SignUpEventChangeCompanyName implements SignUpEvent {
  const factory SignUpEventChangeCompanyName({required final String value}) =
      _$SignUpEventChangeCompanyNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SignUpEventChangeCompanyNameImplCopyWith<
          _$SignUpEventChangeCompanyNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventChangeEmailImplCopyWith<$Res> {
  factory _$$SignUpEventChangeEmailImplCopyWith(
          _$SignUpEventChangeEmailImpl value,
          $Res Function(_$SignUpEventChangeEmailImpl) then) =
      __$$SignUpEventChangeEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SignUpEventChangeEmailImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventChangeEmailImpl>
    implements _$$SignUpEventChangeEmailImplCopyWith<$Res> {
  __$$SignUpEventChangeEmailImplCopyWithImpl(
      _$SignUpEventChangeEmailImpl _value,
      $Res Function(_$SignUpEventChangeEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SignUpEventChangeEmailImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEventChangeEmailImpl implements SignUpEventChangeEmail {
  const _$SignUpEventChangeEmailImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.changeEmail(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventChangeEmailImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventChangeEmailImplCopyWith<_$SignUpEventChangeEmailImpl>
      get copyWith => __$$SignUpEventChangeEmailImplCopyWithImpl<
          _$SignUpEventChangeEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeCompanyName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhone,
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signUp,
  }) {
    return changeEmail(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changeCompanyName,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhone,
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signUp,
  }) {
    return changeEmail?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changeCompanyName,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhone,
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signUp,
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
    required TResult Function(SignUpEventChangeFirstName value) changeFirstName,
    required TResult Function(SignUpEventChangeLastname value) changeLastName,
    required TResult Function(SignUpEventChangeCompanyName value)
        changeCompanyName,
    required TResult Function(SignUpEventChangeEmail value) changeEmail,
    required TResult Function(SignUpEventChangePhone value) changePhone,
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignUp value) signUp,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult? Function(SignUpEventChangeLastname value)? changeLastName,
    TResult? Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult? Function(SignUpEventChangeEmail value)? changeEmail,
    TResult? Function(SignUpEventChangePhone value)? changePhone,
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignUp value)? signUp,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult Function(SignUpEventChangeLastname value)? changeLastName,
    TResult Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult Function(SignUpEventChangeEmail value)? changeEmail,
    TResult Function(SignUpEventChangePhone value)? changePhone,
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class SignUpEventChangeEmail implements SignUpEvent {
  const factory SignUpEventChangeEmail({required final String value}) =
      _$SignUpEventChangeEmailImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SignUpEventChangeEmailImplCopyWith<_$SignUpEventChangeEmailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventChangePhoneImplCopyWith<$Res> {
  factory _$$SignUpEventChangePhoneImplCopyWith(
          _$SignUpEventChangePhoneImpl value,
          $Res Function(_$SignUpEventChangePhoneImpl) then) =
      __$$SignUpEventChangePhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SignUpEventChangePhoneImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventChangePhoneImpl>
    implements _$$SignUpEventChangePhoneImplCopyWith<$Res> {
  __$$SignUpEventChangePhoneImplCopyWithImpl(
      _$SignUpEventChangePhoneImpl _value,
      $Res Function(_$SignUpEventChangePhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SignUpEventChangePhoneImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEventChangePhoneImpl implements SignUpEventChangePhone {
  const _$SignUpEventChangePhoneImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.changePhone(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventChangePhoneImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventChangePhoneImplCopyWith<_$SignUpEventChangePhoneImpl>
      get copyWith => __$$SignUpEventChangePhoneImplCopyWithImpl<
          _$SignUpEventChangePhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeCompanyName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhone,
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signUp,
  }) {
    return changePhone(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changeCompanyName,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhone,
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signUp,
  }) {
    return changePhone?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changeCompanyName,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhone,
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signUp,
    required TResult orElse(),
  }) {
    if (changePhone != null) {
      return changePhone(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEventChangeFirstName value) changeFirstName,
    required TResult Function(SignUpEventChangeLastname value) changeLastName,
    required TResult Function(SignUpEventChangeCompanyName value)
        changeCompanyName,
    required TResult Function(SignUpEventChangeEmail value) changeEmail,
    required TResult Function(SignUpEventChangePhone value) changePhone,
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignUp value) signUp,
  }) {
    return changePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult? Function(SignUpEventChangeLastname value)? changeLastName,
    TResult? Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult? Function(SignUpEventChangeEmail value)? changeEmail,
    TResult? Function(SignUpEventChangePhone value)? changePhone,
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignUp value)? signUp,
  }) {
    return changePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult Function(SignUpEventChangeLastname value)? changeLastName,
    TResult Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult Function(SignUpEventChangeEmail value)? changeEmail,
    TResult Function(SignUpEventChangePhone value)? changePhone,
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (changePhone != null) {
      return changePhone(this);
    }
    return orElse();
  }
}

abstract class SignUpEventChangePhone implements SignUpEvent {
  const factory SignUpEventChangePhone({required final String value}) =
      _$SignUpEventChangePhoneImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SignUpEventChangePhoneImplCopyWith<_$SignUpEventChangePhoneImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventChangeUserNameImplCopyWith<$Res> {
  factory _$$SignUpEventChangeUserNameImplCopyWith(
          _$SignUpEventChangeUserNameImpl value,
          $Res Function(_$SignUpEventChangeUserNameImpl) then) =
      __$$SignUpEventChangeUserNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SignUpEventChangeUserNameImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventChangeUserNameImpl>
    implements _$$SignUpEventChangeUserNameImplCopyWith<$Res> {
  __$$SignUpEventChangeUserNameImplCopyWithImpl(
      _$SignUpEventChangeUserNameImpl _value,
      $Res Function(_$SignUpEventChangeUserNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SignUpEventChangeUserNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEventChangeUserNameImpl implements SignUpEventChangeUserName {
  const _$SignUpEventChangeUserNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.changeUserName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventChangeUserNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventChangeUserNameImplCopyWith<_$SignUpEventChangeUserNameImpl>
      get copyWith => __$$SignUpEventChangeUserNameImplCopyWithImpl<
          _$SignUpEventChangeUserNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeCompanyName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhone,
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signUp,
  }) {
    return changeUserName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changeCompanyName,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhone,
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signUp,
  }) {
    return changeUserName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changeCompanyName,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhone,
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signUp,
    required TResult orElse(),
  }) {
    if (changeUserName != null) {
      return changeUserName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEventChangeFirstName value) changeFirstName,
    required TResult Function(SignUpEventChangeLastname value) changeLastName,
    required TResult Function(SignUpEventChangeCompanyName value)
        changeCompanyName,
    required TResult Function(SignUpEventChangeEmail value) changeEmail,
    required TResult Function(SignUpEventChangePhone value) changePhone,
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignUp value) signUp,
  }) {
    return changeUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult? Function(SignUpEventChangeLastname value)? changeLastName,
    TResult? Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult? Function(SignUpEventChangeEmail value)? changeEmail,
    TResult? Function(SignUpEventChangePhone value)? changePhone,
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignUp value)? signUp,
  }) {
    return changeUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult Function(SignUpEventChangeLastname value)? changeLastName,
    TResult Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult Function(SignUpEventChangeEmail value)? changeEmail,
    TResult Function(SignUpEventChangePhone value)? changePhone,
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (changeUserName != null) {
      return changeUserName(this);
    }
    return orElse();
  }
}

abstract class SignUpEventChangeUserName implements SignUpEvent {
  const factory SignUpEventChangeUserName({required final String value}) =
      _$SignUpEventChangeUserNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SignUpEventChangeUserNameImplCopyWith<_$SignUpEventChangeUserNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventChangePasswordImplCopyWith<$Res> {
  factory _$$SignUpEventChangePasswordImplCopyWith(
          _$SignUpEventChangePasswordImpl value,
          $Res Function(_$SignUpEventChangePasswordImpl) then) =
      __$$SignUpEventChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SignUpEventChangePasswordImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventChangePasswordImpl>
    implements _$$SignUpEventChangePasswordImplCopyWith<$Res> {
  __$$SignUpEventChangePasswordImplCopyWithImpl(
      _$SignUpEventChangePasswordImpl _value,
      $Res Function(_$SignUpEventChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SignUpEventChangePasswordImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEventChangePasswordImpl implements SignUpEventChangePassword {
  const _$SignUpEventChangePasswordImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.changePassword(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventChangePasswordImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventChangePasswordImplCopyWith<_$SignUpEventChangePasswordImpl>
      get copyWith => __$$SignUpEventChangePasswordImplCopyWithImpl<
          _$SignUpEventChangePasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeCompanyName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhone,
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signUp,
  }) {
    return changePassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changeCompanyName,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhone,
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signUp,
  }) {
    return changePassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changeCompanyName,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhone,
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signUp,
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
    required TResult Function(SignUpEventChangeFirstName value) changeFirstName,
    required TResult Function(SignUpEventChangeLastname value) changeLastName,
    required TResult Function(SignUpEventChangeCompanyName value)
        changeCompanyName,
    required TResult Function(SignUpEventChangeEmail value) changeEmail,
    required TResult Function(SignUpEventChangePhone value) changePhone,
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignUp value) signUp,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult? Function(SignUpEventChangeLastname value)? changeLastName,
    TResult? Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult? Function(SignUpEventChangeEmail value)? changeEmail,
    TResult? Function(SignUpEventChangePhone value)? changePhone,
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignUp value)? signUp,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult Function(SignUpEventChangeLastname value)? changeLastName,
    TResult Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult Function(SignUpEventChangeEmail value)? changeEmail,
    TResult Function(SignUpEventChangePhone value)? changePhone,
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class SignUpEventChangePassword implements SignUpEvent {
  const factory SignUpEventChangePassword({required final String value}) =
      _$SignUpEventChangePasswordImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SignUpEventChangePasswordImplCopyWith<_$SignUpEventChangePasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventSignUpImplCopyWith<$Res> {
  factory _$$SignUpEventSignUpImplCopyWith(_$SignUpEventSignUpImpl value,
          $Res Function(_$SignUpEventSignUpImpl) then) =
      __$$SignUpEventSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ValueChanged<User> callback});
}

/// @nodoc
class __$$SignUpEventSignUpImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventSignUpImpl>
    implements _$$SignUpEventSignUpImplCopyWith<$Res> {
  __$$SignUpEventSignUpImplCopyWithImpl(_$SignUpEventSignUpImpl _value,
      $Res Function(_$SignUpEventSignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$SignUpEventSignUpImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as ValueChanged<User>,
    ));
  }
}

/// @nodoc

class _$SignUpEventSignUpImpl implements SignUpEventSignUp {
  const _$SignUpEventSignUpImpl({required this.callback});

  @override
  final ValueChanged<User> callback;

  @override
  String toString() {
    return 'SignUpEvent.signUp(callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventSignUpImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventSignUpImplCopyWith<_$SignUpEventSignUpImpl> get copyWith =>
      __$$SignUpEventSignUpImplCopyWithImpl<_$SignUpEventSignUpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeFirstName,
    required TResult Function(String value) changeLastName,
    required TResult Function(String value) changeCompanyName,
    required TResult Function(String value) changeEmail,
    required TResult Function(String value) changePhone,
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signUp,
  }) {
    return signUp(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeFirstName,
    TResult? Function(String value)? changeLastName,
    TResult? Function(String value)? changeCompanyName,
    TResult? Function(String value)? changeEmail,
    TResult? Function(String value)? changePhone,
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signUp,
  }) {
    return signUp?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeFirstName,
    TResult Function(String value)? changeLastName,
    TResult Function(String value)? changeCompanyName,
    TResult Function(String value)? changeEmail,
    TResult Function(String value)? changePhone,
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEventChangeFirstName value) changeFirstName,
    required TResult Function(SignUpEventChangeLastname value) changeLastName,
    required TResult Function(SignUpEventChangeCompanyName value)
        changeCompanyName,
    required TResult Function(SignUpEventChangeEmail value) changeEmail,
    required TResult Function(SignUpEventChangePhone value) changePhone,
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult? Function(SignUpEventChangeLastname value)? changeLastName,
    TResult? Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult? Function(SignUpEventChangeEmail value)? changeEmail,
    TResult? Function(SignUpEventChangePhone value)? changePhone,
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeFirstName value)? changeFirstName,
    TResult Function(SignUpEventChangeLastname value)? changeLastName,
    TResult Function(SignUpEventChangeCompanyName value)? changeCompanyName,
    TResult Function(SignUpEventChangeEmail value)? changeEmail,
    TResult Function(SignUpEventChangePhone value)? changePhone,
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUpEventSignUp implements SignUpEvent {
  const factory SignUpEventSignUp(
      {required final ValueChanged<User> callback}) = _$SignUpEventSignUpImpl;

  ValueChanged<User> get callback;
  @JsonKey(ignore: true)
  _$$SignUpEventSignUpImplCopyWith<_$SignUpEventSignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  User get user => throw _privateConstructorUsedError;
  Settings get settings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, Settings settings) init,
    required TResult Function(User user, Settings settings) signUp,
    required TResult Function(
            User user, Settings settings, ({int code, String message}) error)
        signUpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, Settings settings)? init,
    TResult? Function(User user, Settings settings)? signUp,
    TResult? Function(
            User user, Settings settings, ({int code, String message}) error)?
        signUpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, Settings settings)? init,
    TResult Function(User user, Settings settings)? signUp,
    TResult Function(
            User user, Settings settings, ({int code, String message}) error)?
        signUpError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateUp value) init,
    required TResult Function(SignUpStateSignUp value) signUp,
    required TResult Function(SignUpStateSignUpError value) signUpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateUp value)? init,
    TResult? Function(SignUpStateSignUp value)? signUp,
    TResult? Function(SignUpStateSignUpError value)? signUpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateUp value)? init,
    TResult Function(SignUpStateSignUp value)? signUp,
    TResult Function(SignUpStateSignUpError value)? signUpError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call({User user, Settings settings});

  $UserCopyWith<$Res> get user;
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpStateUpImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateUpImplCopyWith(
          _$SignUpStateUpImpl value, $Res Function(_$SignUpStateUpImpl) then) =
      __$$SignUpStateUpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Settings settings});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$SignUpStateUpImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateUpImpl>
    implements _$$SignUpStateUpImplCopyWith<$Res> {
  __$$SignUpStateUpImplCopyWithImpl(
      _$SignUpStateUpImpl _value, $Res Function(_$SignUpStateUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? settings = null,
  }) {
    return _then(_$SignUpStateUpImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ));
  }
}

/// @nodoc

class _$SignUpStateUpImpl implements SignUpStateUp {
  const _$SignUpStateUpImpl({required this.user, required this.settings});

  @override
  final User user;
  @override
  final Settings settings;

  @override
  String toString() {
    return 'SignUpState.init(user: $user, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateUpImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateUpImplCopyWith<_$SignUpStateUpImpl> get copyWith =>
      __$$SignUpStateUpImplCopyWithImpl<_$SignUpStateUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, Settings settings) init,
    required TResult Function(User user, Settings settings) signUp,
    required TResult Function(
            User user, Settings settings, ({int code, String message}) error)
        signUpError,
  }) {
    return init(user, settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, Settings settings)? init,
    TResult? Function(User user, Settings settings)? signUp,
    TResult? Function(
            User user, Settings settings, ({int code, String message}) error)?
        signUpError,
  }) {
    return init?.call(user, settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, Settings settings)? init,
    TResult Function(User user, Settings settings)? signUp,
    TResult Function(
            User user, Settings settings, ({int code, String message}) error)?
        signUpError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(user, settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateUp value) init,
    required TResult Function(SignUpStateSignUp value) signUp,
    required TResult Function(SignUpStateSignUpError value) signUpError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateUp value)? init,
    TResult? Function(SignUpStateSignUp value)? signUp,
    TResult? Function(SignUpStateSignUpError value)? signUpError,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateUp value)? init,
    TResult Function(SignUpStateSignUp value)? signUp,
    TResult Function(SignUpStateSignUpError value)? signUpError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SignUpStateUp implements SignUpState {
  const factory SignUpStateUp(
      {required final User user,
      required final Settings settings}) = _$SignUpStateUpImpl;

  @override
  User get user;
  @override
  Settings get settings;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateUpImplCopyWith<_$SignUpStateUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateSignUpImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateSignUpImplCopyWith(_$SignUpStateSignUpImpl value,
          $Res Function(_$SignUpStateSignUpImpl) then) =
      __$$SignUpStateSignUpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Settings settings});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$SignUpStateSignUpImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateSignUpImpl>
    implements _$$SignUpStateSignUpImplCopyWith<$Res> {
  __$$SignUpStateSignUpImplCopyWithImpl(_$SignUpStateSignUpImpl _value,
      $Res Function(_$SignUpStateSignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? settings = null,
  }) {
    return _then(_$SignUpStateSignUpImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ));
  }
}

/// @nodoc

class _$SignUpStateSignUpImpl implements SignUpStateSignUp {
  const _$SignUpStateSignUpImpl({required this.user, required this.settings});

  @override
  final User user;
  @override
  final Settings settings;

  @override
  String toString() {
    return 'SignUpState.signUp(user: $user, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateSignUpImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateSignUpImplCopyWith<_$SignUpStateSignUpImpl> get copyWith =>
      __$$SignUpStateSignUpImplCopyWithImpl<_$SignUpStateSignUpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, Settings settings) init,
    required TResult Function(User user, Settings settings) signUp,
    required TResult Function(
            User user, Settings settings, ({int code, String message}) error)
        signUpError,
  }) {
    return signUp(user, settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, Settings settings)? init,
    TResult? Function(User user, Settings settings)? signUp,
    TResult? Function(
            User user, Settings settings, ({int code, String message}) error)?
        signUpError,
  }) {
    return signUp?.call(user, settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, Settings settings)? init,
    TResult Function(User user, Settings settings)? signUp,
    TResult Function(
            User user, Settings settings, ({int code, String message}) error)?
        signUpError,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(user, settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateUp value) init,
    required TResult Function(SignUpStateSignUp value) signUp,
    required TResult Function(SignUpStateSignUpError value) signUpError,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateUp value)? init,
    TResult? Function(SignUpStateSignUp value)? signUp,
    TResult? Function(SignUpStateSignUpError value)? signUpError,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateUp value)? init,
    TResult Function(SignUpStateSignUp value)? signUp,
    TResult Function(SignUpStateSignUpError value)? signUpError,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUpStateSignUp implements SignUpState {
  const factory SignUpStateSignUp(
      {required final User user,
      required final Settings settings}) = _$SignUpStateSignUpImpl;

  @override
  User get user;
  @override
  Settings get settings;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateSignUpImplCopyWith<_$SignUpStateSignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateSignUpErrorImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateSignUpErrorImplCopyWith(
          _$SignUpStateSignUpErrorImpl value,
          $Res Function(_$SignUpStateSignUpErrorImpl) then) =
      __$$SignUpStateSignUpErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Settings settings, ({int code, String message}) error});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$SignUpStateSignUpErrorImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateSignUpErrorImpl>
    implements _$$SignUpStateSignUpErrorImplCopyWith<$Res> {
  __$$SignUpStateSignUpErrorImplCopyWithImpl(
      _$SignUpStateSignUpErrorImpl _value,
      $Res Function(_$SignUpStateSignUpErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? settings = null,
    Object? error = null,
  }) {
    return _then(_$SignUpStateSignUpErrorImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ({int code, String message}),
    ));
  }
}

/// @nodoc

class _$SignUpStateSignUpErrorImpl implements SignUpStateSignUpError {
  const _$SignUpStateSignUpErrorImpl(
      {required this.user, required this.settings, required this.error});

  @override
  final User user;
  @override
  final Settings settings;
  @override
  final ({int code, String message}) error;

  @override
  String toString() {
    return 'SignUpState.signUpError(user: $user, settings: $settings, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateSignUpErrorImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, settings, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateSignUpErrorImplCopyWith<_$SignUpStateSignUpErrorImpl>
      get copyWith => __$$SignUpStateSignUpErrorImplCopyWithImpl<
          _$SignUpStateSignUpErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, Settings settings) init,
    required TResult Function(User user, Settings settings) signUp,
    required TResult Function(
            User user, Settings settings, ({int code, String message}) error)
        signUpError,
  }) {
    return signUpError(user, settings, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, Settings settings)? init,
    TResult? Function(User user, Settings settings)? signUp,
    TResult? Function(
            User user, Settings settings, ({int code, String message}) error)?
        signUpError,
  }) {
    return signUpError?.call(user, settings, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, Settings settings)? init,
    TResult Function(User user, Settings settings)? signUp,
    TResult Function(
            User user, Settings settings, ({int code, String message}) error)?
        signUpError,
    required TResult orElse(),
  }) {
    if (signUpError != null) {
      return signUpError(user, settings, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateUp value) init,
    required TResult Function(SignUpStateSignUp value) signUp,
    required TResult Function(SignUpStateSignUpError value) signUpError,
  }) {
    return signUpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateUp value)? init,
    TResult? Function(SignUpStateSignUp value)? signUp,
    TResult? Function(SignUpStateSignUpError value)? signUpError,
  }) {
    return signUpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateUp value)? init,
    TResult Function(SignUpStateSignUp value)? signUp,
    TResult Function(SignUpStateSignUpError value)? signUpError,
    required TResult orElse(),
  }) {
    if (signUpError != null) {
      return signUpError(this);
    }
    return orElse();
  }
}

abstract class SignUpStateSignUpError implements SignUpState {
  const factory SignUpStateSignUpError(
          {required final User user,
          required final Settings settings,
          required final ({int code, String message}) error}) =
      _$SignUpStateSignUpErrorImpl;

  @override
  User get user;
  @override
  Settings get settings;
  ({int code, String message}) get error;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateSignUpErrorImplCopyWith<_$SignUpStateSignUpErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
