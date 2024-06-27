// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<Employee> callback) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<Employee> callback)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<Employee> callback)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEventChangeUserName value) changeUserName,
    required TResult Function(SignInEventChangePassword value) changePassword,
    required TResult Function(SignInEventSignIn value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEventChangeUserName value)? changeUserName,
    TResult? Function(SignInEventChangePassword value)? changePassword,
    TResult? Function(SignInEventSignIn value)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEventChangeUserName value)? changeUserName,
    TResult Function(SignInEventChangePassword value)? changePassword,
    TResult Function(SignInEventSignIn value)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInEventChangeUserNameImplCopyWith<$Res> {
  factory _$$SignInEventChangeUserNameImplCopyWith(
          _$SignInEventChangeUserNameImpl value,
          $Res Function(_$SignInEventChangeUserNameImpl) then) =
      __$$SignInEventChangeUserNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SignInEventChangeUserNameImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInEventChangeUserNameImpl>
    implements _$$SignInEventChangeUserNameImplCopyWith<$Res> {
  __$$SignInEventChangeUserNameImplCopyWithImpl(
      _$SignInEventChangeUserNameImpl _value,
      $Res Function(_$SignInEventChangeUserNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SignInEventChangeUserNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInEventChangeUserNameImpl implements SignInEventChangeUserName {
  const _$SignInEventChangeUserNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.changeUserName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventChangeUserNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEventChangeUserNameImplCopyWith<_$SignInEventChangeUserNameImpl>
      get copyWith => __$$SignInEventChangeUserNameImplCopyWithImpl<
          _$SignInEventChangeUserNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<Employee> callback) signIn,
  }) {
    return changeUserName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<Employee> callback)? signIn,
  }) {
    return changeUserName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<Employee> callback)? signIn,
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
    required TResult Function(SignInEventChangeUserName value) changeUserName,
    required TResult Function(SignInEventChangePassword value) changePassword,
    required TResult Function(SignInEventSignIn value) signIn,
  }) {
    return changeUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEventChangeUserName value)? changeUserName,
    TResult? Function(SignInEventChangePassword value)? changePassword,
    TResult? Function(SignInEventSignIn value)? signIn,
  }) {
    return changeUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEventChangeUserName value)? changeUserName,
    TResult Function(SignInEventChangePassword value)? changePassword,
    TResult Function(SignInEventSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (changeUserName != null) {
      return changeUserName(this);
    }
    return orElse();
  }
}

abstract class SignInEventChangeUserName implements SignInEvent {
  const factory SignInEventChangeUserName({required final String value}) =
      _$SignInEventChangeUserNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SignInEventChangeUserNameImplCopyWith<_$SignInEventChangeUserNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInEventChangePasswordImplCopyWith<$Res> {
  factory _$$SignInEventChangePasswordImplCopyWith(
          _$SignInEventChangePasswordImpl value,
          $Res Function(_$SignInEventChangePasswordImpl) then) =
      __$$SignInEventChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SignInEventChangePasswordImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInEventChangePasswordImpl>
    implements _$$SignInEventChangePasswordImplCopyWith<$Res> {
  __$$SignInEventChangePasswordImplCopyWithImpl(
      _$SignInEventChangePasswordImpl _value,
      $Res Function(_$SignInEventChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SignInEventChangePasswordImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInEventChangePasswordImpl implements SignInEventChangePassword {
  const _$SignInEventChangePasswordImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.changePassword(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventChangePasswordImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEventChangePasswordImplCopyWith<_$SignInEventChangePasswordImpl>
      get copyWith => __$$SignInEventChangePasswordImplCopyWithImpl<
          _$SignInEventChangePasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<Employee> callback) signIn,
  }) {
    return changePassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<Employee> callback)? signIn,
  }) {
    return changePassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<Employee> callback)? signIn,
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
    required TResult Function(SignInEventChangeUserName value) changeUserName,
    required TResult Function(SignInEventChangePassword value) changePassword,
    required TResult Function(SignInEventSignIn value) signIn,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEventChangeUserName value)? changeUserName,
    TResult? Function(SignInEventChangePassword value)? changePassword,
    TResult? Function(SignInEventSignIn value)? signIn,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEventChangeUserName value)? changeUserName,
    TResult Function(SignInEventChangePassword value)? changePassword,
    TResult Function(SignInEventSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class SignInEventChangePassword implements SignInEvent {
  const factory SignInEventChangePassword({required final String value}) =
      _$SignInEventChangePasswordImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SignInEventChangePasswordImplCopyWith<_$SignInEventChangePasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInEventSignInImplCopyWith<$Res> {
  factory _$$SignInEventSignInImplCopyWith(_$SignInEventSignInImpl value,
          $Res Function(_$SignInEventSignInImpl) then) =
      __$$SignInEventSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ValueChanged<Employee> callback});
}

/// @nodoc
class __$$SignInEventSignInImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInEventSignInImpl>
    implements _$$SignInEventSignInImplCopyWith<$Res> {
  __$$SignInEventSignInImplCopyWithImpl(_$SignInEventSignInImpl _value,
      $Res Function(_$SignInEventSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$SignInEventSignInImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as ValueChanged<Employee>,
    ));
  }
}

/// @nodoc

class _$SignInEventSignInImpl implements SignInEventSignIn {
  const _$SignInEventSignInImpl({required this.callback});

  @override
  final ValueChanged<Employee> callback;

  @override
  String toString() {
    return 'SignInEvent.signIn(callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventSignInImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEventSignInImplCopyWith<_$SignInEventSignInImpl> get copyWith =>
      __$$SignInEventSignInImplCopyWithImpl<_$SignInEventSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<Employee> callback) signIn,
  }) {
    return signIn(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<Employee> callback)? signIn,
  }) {
    return signIn?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<Employee> callback)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEventChangeUserName value) changeUserName,
    required TResult Function(SignInEventChangePassword value) changePassword,
    required TResult Function(SignInEventSignIn value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEventChangeUserName value)? changeUserName,
    TResult? Function(SignInEventChangePassword value)? changePassword,
    TResult? Function(SignInEventSignIn value)? signIn,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEventChangeUserName value)? changeUserName,
    TResult Function(SignInEventChangePassword value)? changePassword,
    TResult Function(SignInEventSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignInEventSignIn implements SignInEvent {
  const factory SignInEventSignIn(
          {required final ValueChanged<Employee> callback}) =
      _$SignInEventSignInImpl;

  ValueChanged<Employee> get callback;
  @JsonKey(ignore: true)
  _$$SignInEventSignInImplCopyWith<_$SignInEventSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) init,
    required TResult Function(String userName, String password) signIn,
    required TResult Function(String userName, String password) signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? init,
    TResult? Function(String userName, String password)? signIn,
    TResult? Function(String userName, String password)? signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? init,
    TResult Function(String userName, String password)? signIn,
    TResult Function(String userName, String password)? signInError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStateInit value) init,
    required TResult Function(SignInStateSignIn value) signIn,
    required TResult Function(SignInStateSignInError value) signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStateInit value)? init,
    TResult? Function(SignInStateSignIn value)? signIn,
    TResult? Function(SignInStateSignInError value)? signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateInit value)? init,
    TResult Function(SignInStateSignIn value)? signIn,
    TResult Function(SignInStateSignInError value)? signInError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInStateInitImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateInitImplCopyWith(_$SignInStateInitImpl value,
          $Res Function(_$SignInStateInitImpl) then) =
      __$$SignInStateInitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$SignInStateInitImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateInitImpl>
    implements _$$SignInStateInitImplCopyWith<$Res> {
  __$$SignInStateInitImplCopyWithImpl(
      _$SignInStateInitImpl _value, $Res Function(_$SignInStateInitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$SignInStateInitImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInStateInitImpl implements SignInStateInit {
  const _$SignInStateInitImpl({required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInState.init(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateInitImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateInitImplCopyWith<_$SignInStateInitImpl> get copyWith =>
      __$$SignInStateInitImplCopyWithImpl<_$SignInStateInitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) init,
    required TResult Function(String userName, String password) signIn,
    required TResult Function(String userName, String password) signInError,
  }) {
    return init(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? init,
    TResult? Function(String userName, String password)? signIn,
    TResult? Function(String userName, String password)? signInError,
  }) {
    return init?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? init,
    TResult Function(String userName, String password)? signIn,
    TResult Function(String userName, String password)? signInError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStateInit value) init,
    required TResult Function(SignInStateSignIn value) signIn,
    required TResult Function(SignInStateSignInError value) signInError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStateInit value)? init,
    TResult? Function(SignInStateSignIn value)? signIn,
    TResult? Function(SignInStateSignInError value)? signInError,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateInit value)? init,
    TResult Function(SignInStateSignIn value)? signIn,
    TResult Function(SignInStateSignInError value)? signInError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SignInStateInit implements SignInState {
  const factory SignInStateInit(
      {required final String userName,
      required final String password}) = _$SignInStateInitImpl;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateInitImplCopyWith<_$SignInStateInitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInStateSignInImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateSignInImplCopyWith(_$SignInStateSignInImpl value,
          $Res Function(_$SignInStateSignInImpl) then) =
      __$$SignInStateSignInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$SignInStateSignInImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateSignInImpl>
    implements _$$SignInStateSignInImplCopyWith<$Res> {
  __$$SignInStateSignInImplCopyWithImpl(_$SignInStateSignInImpl _value,
      $Res Function(_$SignInStateSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$SignInStateSignInImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInStateSignInImpl implements SignInStateSignIn {
  const _$SignInStateSignInImpl(
      {required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInState.signIn(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateSignInImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateSignInImplCopyWith<_$SignInStateSignInImpl> get copyWith =>
      __$$SignInStateSignInImplCopyWithImpl<_$SignInStateSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) init,
    required TResult Function(String userName, String password) signIn,
    required TResult Function(String userName, String password) signInError,
  }) {
    return signIn(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? init,
    TResult? Function(String userName, String password)? signIn,
    TResult? Function(String userName, String password)? signInError,
  }) {
    return signIn?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? init,
    TResult Function(String userName, String password)? signIn,
    TResult Function(String userName, String password)? signInError,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStateInit value) init,
    required TResult Function(SignInStateSignIn value) signIn,
    required TResult Function(SignInStateSignInError value) signInError,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStateInit value)? init,
    TResult? Function(SignInStateSignIn value)? signIn,
    TResult? Function(SignInStateSignInError value)? signInError,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateInit value)? init,
    TResult Function(SignInStateSignIn value)? signIn,
    TResult Function(SignInStateSignInError value)? signInError,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignInStateSignIn implements SignInState {
  const factory SignInStateSignIn(
      {required final String userName,
      required final String password}) = _$SignInStateSignInImpl;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateSignInImplCopyWith<_$SignInStateSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInStateSignInErrorImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateSignInErrorImplCopyWith(
          _$SignInStateSignInErrorImpl value,
          $Res Function(_$SignInStateSignInErrorImpl) then) =
      __$$SignInStateSignInErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$SignInStateSignInErrorImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateSignInErrorImpl>
    implements _$$SignInStateSignInErrorImplCopyWith<$Res> {
  __$$SignInStateSignInErrorImplCopyWithImpl(
      _$SignInStateSignInErrorImpl _value,
      $Res Function(_$SignInStateSignInErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$SignInStateSignInErrorImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInStateSignInErrorImpl implements SignInStateSignInError {
  const _$SignInStateSignInErrorImpl(
      {required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInState.signInError(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateSignInErrorImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateSignInErrorImplCopyWith<_$SignInStateSignInErrorImpl>
      get copyWith => __$$SignInStateSignInErrorImplCopyWithImpl<
          _$SignInStateSignInErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) init,
    required TResult Function(String userName, String password) signIn,
    required TResult Function(String userName, String password) signInError,
  }) {
    return signInError(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? init,
    TResult? Function(String userName, String password)? signIn,
    TResult? Function(String userName, String password)? signInError,
  }) {
    return signInError?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? init,
    TResult Function(String userName, String password)? signIn,
    TResult Function(String userName, String password)? signInError,
    required TResult orElse(),
  }) {
    if (signInError != null) {
      return signInError(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStateInit value) init,
    required TResult Function(SignInStateSignIn value) signIn,
    required TResult Function(SignInStateSignInError value) signInError,
  }) {
    return signInError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStateInit value)? init,
    TResult? Function(SignInStateSignIn value)? signIn,
    TResult? Function(SignInStateSignInError value)? signInError,
  }) {
    return signInError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateInit value)? init,
    TResult Function(SignInStateSignIn value)? signIn,
    TResult Function(SignInStateSignInError value)? signInError,
    required TResult orElse(),
  }) {
    if (signInError != null) {
      return signInError(this);
    }
    return orElse();
  }
}

abstract class SignInStateSignInError implements SignInState {
  const factory SignInStateSignInError(
      {required final String userName,
      required final String password}) = _$SignInStateSignInErrorImpl;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateSignInErrorImplCopyWith<_$SignInStateSignInErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
