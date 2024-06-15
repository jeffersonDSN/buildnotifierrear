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
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignIn value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignIn value)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignIn value)? signIn,
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
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signIn,
  }) {
    return changeUserName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signIn,
  }) {
    return changeUserName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signIn,
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
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignIn value) signIn,
  }) {
    return changeUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignIn value)? signIn,
  }) {
    return changeUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignIn value)? signIn,
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
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signIn,
  }) {
    return changePassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signIn,
  }) {
    return changePassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signIn,
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
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignIn value) signIn,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignIn value)? signIn,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignIn value)? signIn,
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
abstract class _$$SignUpEventSignInImplCopyWith<$Res> {
  factory _$$SignUpEventSignInImplCopyWith(_$SignUpEventSignInImpl value,
          $Res Function(_$SignUpEventSignInImpl) then) =
      __$$SignUpEventSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ValueChanged<User> callback});
}

/// @nodoc
class __$$SignUpEventSignInImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventSignInImpl>
    implements _$$SignUpEventSignInImplCopyWith<$Res> {
  __$$SignUpEventSignInImplCopyWithImpl(_$SignUpEventSignInImpl _value,
      $Res Function(_$SignUpEventSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$SignUpEventSignInImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as ValueChanged<User>,
    ));
  }
}

/// @nodoc

class _$SignUpEventSignInImpl implements SignUpEventSignIn {
  const _$SignUpEventSignInImpl({required this.callback});

  @override
  final ValueChanged<User> callback;

  @override
  String toString() {
    return 'SignUpEvent.signIn(callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventSignInImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventSignInImplCopyWith<_$SignUpEventSignInImpl> get copyWith =>
      __$$SignUpEventSignInImplCopyWithImpl<_$SignUpEventSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changeUserName,
    required TResult Function(String value) changePassword,
    required TResult Function(ValueChanged<User> callback) signIn,
  }) {
    return signIn(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changeUserName,
    TResult? Function(String value)? changePassword,
    TResult? Function(ValueChanged<User> callback)? signIn,
  }) {
    return signIn?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changeUserName,
    TResult Function(String value)? changePassword,
    TResult Function(ValueChanged<User> callback)? signIn,
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
    required TResult Function(SignUpEventChangeUserName value) changeUserName,
    required TResult Function(SignUpEventChangePassword value) changePassword,
    required TResult Function(SignUpEventSignIn value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventChangeUserName value)? changeUserName,
    TResult? Function(SignUpEventChangePassword value)? changePassword,
    TResult? Function(SignUpEventSignIn value)? signIn,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventChangeUserName value)? changeUserName,
    TResult Function(SignUpEventChangePassword value)? changePassword,
    TResult Function(SignUpEventSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignUpEventSignIn implements SignUpEvent {
  const factory SignUpEventSignIn(
      {required final ValueChanged<User> callback}) = _$SignUpEventSignInImpl;

  ValueChanged<User> get callback;
  @JsonKey(ignore: true)
  _$$SignUpEventSignInImplCopyWith<_$SignUpEventSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) init,
    required TResult Function(String userName, String password) signUp,
    required TResult Function(String userName, String password) signUpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? init,
    TResult? Function(String userName, String password)? signUp,
    TResult? Function(String userName, String password)? signUpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? init,
    TResult Function(String userName, String password)? signUp,
    TResult Function(String userName, String password)? signUpError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateSignIn value) signUp,
    required TResult Function(SignUpStateSignUpError value) signUpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateSignIn value)? signUp,
    TResult? Function(SignUpStateSignUpError value)? signUpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateSignIn value)? signUp,
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
  $Res call({String userName, String password});
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
abstract class _$$SignUpStateInitImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateInitImplCopyWith(_$SignUpStateInitImpl value,
          $Res Function(_$SignUpStateInitImpl) then) =
      __$$SignUpStateInitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$SignUpStateInitImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateInitImpl>
    implements _$$SignUpStateInitImplCopyWith<$Res> {
  __$$SignUpStateInitImplCopyWithImpl(
      _$SignUpStateInitImpl _value, $Res Function(_$SignUpStateInitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$SignUpStateInitImpl(
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

class _$SignUpStateInitImpl implements SignUpStateInit {
  const _$SignUpStateInitImpl({required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpState.init(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateInitImpl &&
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
  _$$SignUpStateInitImplCopyWith<_$SignUpStateInitImpl> get copyWith =>
      __$$SignUpStateInitImplCopyWithImpl<_$SignUpStateInitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) init,
    required TResult Function(String userName, String password) signUp,
    required TResult Function(String userName, String password) signUpError,
  }) {
    return init(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? init,
    TResult? Function(String userName, String password)? signUp,
    TResult? Function(String userName, String password)? signUpError,
  }) {
    return init?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? init,
    TResult Function(String userName, String password)? signUp,
    TResult Function(String userName, String password)? signUpError,
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
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateSignIn value) signUp,
    required TResult Function(SignUpStateSignUpError value) signUpError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateSignIn value)? signUp,
    TResult? Function(SignUpStateSignUpError value)? signUpError,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateSignIn value)? signUp,
    TResult Function(SignUpStateSignUpError value)? signUpError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SignUpStateInit implements SignUpState {
  const factory SignUpStateInit(
      {required final String userName,
      required final String password}) = _$SignUpStateInitImpl;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateInitImplCopyWith<_$SignUpStateInitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateSignInImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateSignInImplCopyWith(_$SignUpStateSignInImpl value,
          $Res Function(_$SignUpStateSignInImpl) then) =
      __$$SignUpStateSignInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$SignUpStateSignInImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateSignInImpl>
    implements _$$SignUpStateSignInImplCopyWith<$Res> {
  __$$SignUpStateSignInImplCopyWithImpl(_$SignUpStateSignInImpl _value,
      $Res Function(_$SignUpStateSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$SignUpStateSignInImpl(
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

class _$SignUpStateSignInImpl implements SignUpStateSignIn {
  const _$SignUpStateSignInImpl(
      {required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpState.signUp(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateSignInImpl &&
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
  _$$SignUpStateSignInImplCopyWith<_$SignUpStateSignInImpl> get copyWith =>
      __$$SignUpStateSignInImplCopyWithImpl<_$SignUpStateSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) init,
    required TResult Function(String userName, String password) signUp,
    required TResult Function(String userName, String password) signUpError,
  }) {
    return signUp(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? init,
    TResult? Function(String userName, String password)? signUp,
    TResult? Function(String userName, String password)? signUpError,
  }) {
    return signUp?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? init,
    TResult Function(String userName, String password)? signUp,
    TResult Function(String userName, String password)? signUpError,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateSignIn value) signUp,
    required TResult Function(SignUpStateSignUpError value) signUpError,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateSignIn value)? signUp,
    TResult? Function(SignUpStateSignUpError value)? signUpError,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateSignIn value)? signUp,
    TResult Function(SignUpStateSignUpError value)? signUpError,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUpStateSignIn implements SignUpState {
  const factory SignUpStateSignIn(
      {required final String userName,
      required final String password}) = _$SignUpStateSignInImpl;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateSignInImplCopyWith<_$SignUpStateSignInImpl> get copyWith =>
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
  $Res call({String userName, String password});
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
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$SignUpStateSignUpErrorImpl(
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

class _$SignUpStateSignUpErrorImpl implements SignUpStateSignUpError {
  const _$SignUpStateSignUpErrorImpl(
      {required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpState.signUpError(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateSignUpErrorImpl &&
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
  _$$SignUpStateSignUpErrorImplCopyWith<_$SignUpStateSignUpErrorImpl>
      get copyWith => __$$SignUpStateSignUpErrorImplCopyWithImpl<
          _$SignUpStateSignUpErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) init,
    required TResult Function(String userName, String password) signUp,
    required TResult Function(String userName, String password) signUpError,
  }) {
    return signUpError(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? init,
    TResult? Function(String userName, String password)? signUp,
    TResult? Function(String userName, String password)? signUpError,
  }) {
    return signUpError?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? init,
    TResult Function(String userName, String password)? signUp,
    TResult Function(String userName, String password)? signUpError,
    required TResult orElse(),
  }) {
    if (signUpError != null) {
      return signUpError(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateSignIn value) signUp,
    required TResult Function(SignUpStateSignUpError value) signUpError,
  }) {
    return signUpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateSignIn value)? signUp,
    TResult? Function(SignUpStateSignUpError value)? signUpError,
  }) {
    return signUpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateSignIn value)? signUp,
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
      {required final String userName,
      required final String password}) = _$SignUpStateSignUpErrorImpl;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateSignUpErrorImplCopyWith<_$SignUpStateSignUpErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
