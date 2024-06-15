// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function() createNewUser,
    required TResult Function(Mod mod) changeView,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function()? createNewUser,
    TResult? Function(Mod mod)? changeView,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function()? createNewUser,
    TResult Function(Mod mod)? changeView,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventSignIn value) signIn,
    required TResult Function(AppEventCreateNewUser value) createNewUser,
    required TResult Function(AppEventChangeView value) changeView,
    required TResult Function(AppEventSignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventSignIn value)? signIn,
    TResult? Function(AppEventCreateNewUser value)? createNewUser,
    TResult? Function(AppEventChangeView value)? changeView,
    TResult? Function(AppEventSignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventSignIn value)? signIn,
    TResult Function(AppEventCreateNewUser value)? createNewUser,
    TResult Function(AppEventChangeView value)? changeView,
    TResult Function(AppEventSignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppEventSignInImplCopyWith<$Res> {
  factory _$$AppEventSignInImplCopyWith(_$AppEventSignInImpl value,
          $Res Function(_$AppEventSignInImpl) then) =
      __$$AppEventSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AppEventSignInImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventSignInImpl>
    implements _$$AppEventSignInImplCopyWith<$Res> {
  __$$AppEventSignInImplCopyWithImpl(
      _$AppEventSignInImpl _value, $Res Function(_$AppEventSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AppEventSignInImpl(
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

class _$AppEventSignInImpl implements AppEventSignIn {
  const _$AppEventSignInImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AppEvent.signIn(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventSignInImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppEventSignInImplCopyWith<_$AppEventSignInImpl> get copyWith =>
      __$$AppEventSignInImplCopyWithImpl<_$AppEventSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function() createNewUser,
    required TResult Function(Mod mod) changeView,
    required TResult Function() signOut,
  }) {
    return signIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function()? createNewUser,
    TResult? Function(Mod mod)? changeView,
    TResult? Function()? signOut,
  }) {
    return signIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function()? createNewUser,
    TResult Function(Mod mod)? changeView,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventSignIn value) signIn,
    required TResult Function(AppEventCreateNewUser value) createNewUser,
    required TResult Function(AppEventChangeView value) changeView,
    required TResult Function(AppEventSignOut value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventSignIn value)? signIn,
    TResult? Function(AppEventCreateNewUser value)? createNewUser,
    TResult? Function(AppEventChangeView value)? changeView,
    TResult? Function(AppEventSignOut value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventSignIn value)? signIn,
    TResult Function(AppEventCreateNewUser value)? createNewUser,
    TResult Function(AppEventChangeView value)? changeView,
    TResult Function(AppEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class AppEventSignIn implements AppEvent {
  const factory AppEventSignIn({required final User user}) =
      _$AppEventSignInImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$AppEventSignInImplCopyWith<_$AppEventSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppEventCreateNewUserImplCopyWith<$Res> {
  factory _$$AppEventCreateNewUserImplCopyWith(
          _$AppEventCreateNewUserImpl value,
          $Res Function(_$AppEventCreateNewUserImpl) then) =
      __$$AppEventCreateNewUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppEventCreateNewUserImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventCreateNewUserImpl>
    implements _$$AppEventCreateNewUserImplCopyWith<$Res> {
  __$$AppEventCreateNewUserImplCopyWithImpl(_$AppEventCreateNewUserImpl _value,
      $Res Function(_$AppEventCreateNewUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppEventCreateNewUserImpl implements AppEventCreateNewUser {
  const _$AppEventCreateNewUserImpl();

  @override
  String toString() {
    return 'AppEvent.createNewUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventCreateNewUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function() createNewUser,
    required TResult Function(Mod mod) changeView,
    required TResult Function() signOut,
  }) {
    return createNewUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function()? createNewUser,
    TResult? Function(Mod mod)? changeView,
    TResult? Function()? signOut,
  }) {
    return createNewUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function()? createNewUser,
    TResult Function(Mod mod)? changeView,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (createNewUser != null) {
      return createNewUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventSignIn value) signIn,
    required TResult Function(AppEventCreateNewUser value) createNewUser,
    required TResult Function(AppEventChangeView value) changeView,
    required TResult Function(AppEventSignOut value) signOut,
  }) {
    return createNewUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventSignIn value)? signIn,
    TResult? Function(AppEventCreateNewUser value)? createNewUser,
    TResult? Function(AppEventChangeView value)? changeView,
    TResult? Function(AppEventSignOut value)? signOut,
  }) {
    return createNewUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventSignIn value)? signIn,
    TResult Function(AppEventCreateNewUser value)? createNewUser,
    TResult Function(AppEventChangeView value)? changeView,
    TResult Function(AppEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (createNewUser != null) {
      return createNewUser(this);
    }
    return orElse();
  }
}

abstract class AppEventCreateNewUser implements AppEvent {
  const factory AppEventCreateNewUser() = _$AppEventCreateNewUserImpl;
}

/// @nodoc
abstract class _$$AppEventChangeViewImplCopyWith<$Res> {
  factory _$$AppEventChangeViewImplCopyWith(_$AppEventChangeViewImpl value,
          $Res Function(_$AppEventChangeViewImpl) then) =
      __$$AppEventChangeViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Mod mod});

  $ModCopyWith<$Res> get mod;
}

/// @nodoc
class __$$AppEventChangeViewImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventChangeViewImpl>
    implements _$$AppEventChangeViewImplCopyWith<$Res> {
  __$$AppEventChangeViewImplCopyWithImpl(_$AppEventChangeViewImpl _value,
      $Res Function(_$AppEventChangeViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mod = null,
  }) {
    return _then(_$AppEventChangeViewImpl(
      mod: null == mod
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as Mod,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ModCopyWith<$Res> get mod {
    return $ModCopyWith<$Res>(_value.mod, (value) {
      return _then(_value.copyWith(mod: value));
    });
  }
}

/// @nodoc

class _$AppEventChangeViewImpl implements AppEventChangeView {
  const _$AppEventChangeViewImpl({required this.mod});

  @override
  final Mod mod;

  @override
  String toString() {
    return 'AppEvent.changeView(mod: $mod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventChangeViewImpl &&
            (identical(other.mod, mod) || other.mod == mod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppEventChangeViewImplCopyWith<_$AppEventChangeViewImpl> get copyWith =>
      __$$AppEventChangeViewImplCopyWithImpl<_$AppEventChangeViewImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function() createNewUser,
    required TResult Function(Mod mod) changeView,
    required TResult Function() signOut,
  }) {
    return changeView(mod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function()? createNewUser,
    TResult? Function(Mod mod)? changeView,
    TResult? Function()? signOut,
  }) {
    return changeView?.call(mod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function()? createNewUser,
    TResult Function(Mod mod)? changeView,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (changeView != null) {
      return changeView(mod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventSignIn value) signIn,
    required TResult Function(AppEventCreateNewUser value) createNewUser,
    required TResult Function(AppEventChangeView value) changeView,
    required TResult Function(AppEventSignOut value) signOut,
  }) {
    return changeView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventSignIn value)? signIn,
    TResult? Function(AppEventCreateNewUser value)? createNewUser,
    TResult? Function(AppEventChangeView value)? changeView,
    TResult? Function(AppEventSignOut value)? signOut,
  }) {
    return changeView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventSignIn value)? signIn,
    TResult Function(AppEventCreateNewUser value)? createNewUser,
    TResult Function(AppEventChangeView value)? changeView,
    TResult Function(AppEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (changeView != null) {
      return changeView(this);
    }
    return orElse();
  }
}

abstract class AppEventChangeView implements AppEvent {
  const factory AppEventChangeView({required final Mod mod}) =
      _$AppEventChangeViewImpl;

  Mod get mod;
  @JsonKey(ignore: true)
  _$$AppEventChangeViewImplCopyWith<_$AppEventChangeViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppEventSignOutImplCopyWith<$Res> {
  factory _$$AppEventSignOutImplCopyWith(_$AppEventSignOutImpl value,
          $Res Function(_$AppEventSignOutImpl) then) =
      __$$AppEventSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppEventSignOutImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventSignOutImpl>
    implements _$$AppEventSignOutImplCopyWith<$Res> {
  __$$AppEventSignOutImplCopyWithImpl(
      _$AppEventSignOutImpl _value, $Res Function(_$AppEventSignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppEventSignOutImpl implements AppEventSignOut {
  const _$AppEventSignOutImpl();

  @override
  String toString() {
    return 'AppEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppEventSignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function() createNewUser,
    required TResult Function(Mod mod) changeView,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function()? createNewUser,
    TResult? Function(Mod mod)? changeView,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function()? createNewUser,
    TResult Function(Mod mod)? changeView,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventSignIn value) signIn,
    required TResult Function(AppEventCreateNewUser value) createNewUser,
    required TResult Function(AppEventChangeView value) changeView,
    required TResult Function(AppEventSignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventSignIn value)? signIn,
    TResult? Function(AppEventCreateNewUser value)? createNewUser,
    TResult? Function(AppEventChangeView value)? changeView,
    TResult? Function(AppEventSignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventSignIn value)? signIn,
    TResult Function(AppEventCreateNewUser value)? createNewUser,
    TResult Function(AppEventChangeView value)? changeView,
    TResult Function(AppEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class AppEventSignOut implements AppEvent {
  const factory AppEventSignOut() = _$AppEventSignOutImpl;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function(User user, Mod mod) logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function(User user, Mod mod)? logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function(User user, Mod mod)? logged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateIn value) signIn,
    required TResult Function(AppStateUp value) signUp,
    required TResult Function(AppStateLogged value) logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateIn value)? signIn,
    TResult? Function(AppStateUp value)? signUp,
    TResult? Function(AppStateLogged value)? logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateIn value)? signIn,
    TResult Function(AppStateUp value)? signUp,
    TResult Function(AppStateLogged value)? logged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppStateInImplCopyWith<$Res> {
  factory _$$AppStateInImplCopyWith(
          _$AppStateInImpl value, $Res Function(_$AppStateInImpl) then) =
      __$$AppStateInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateInImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateInImpl>
    implements _$$AppStateInImplCopyWith<$Res> {
  __$$AppStateInImplCopyWithImpl(
      _$AppStateInImpl _value, $Res Function(_$AppStateInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateInImpl implements AppStateIn {
  const _$AppStateInImpl();

  @override
  String toString() {
    return 'AppState.signIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function(User user, Mod mod) logged,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function(User user, Mod mod)? logged,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function(User user, Mod mod)? logged,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateIn value) signIn,
    required TResult Function(AppStateUp value) signUp,
    required TResult Function(AppStateLogged value) logged,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateIn value)? signIn,
    TResult? Function(AppStateUp value)? signUp,
    TResult? Function(AppStateLogged value)? logged,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateIn value)? signIn,
    TResult Function(AppStateUp value)? signUp,
    TResult Function(AppStateLogged value)? logged,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class AppStateIn implements AppState {
  const factory AppStateIn() = _$AppStateInImpl;
}

/// @nodoc
abstract class _$$AppStateUpImplCopyWith<$Res> {
  factory _$$AppStateUpImplCopyWith(
          _$AppStateUpImpl value, $Res Function(_$AppStateUpImpl) then) =
      __$$AppStateUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateUpImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateUpImpl>
    implements _$$AppStateUpImplCopyWith<$Res> {
  __$$AppStateUpImplCopyWithImpl(
      _$AppStateUpImpl _value, $Res Function(_$AppStateUpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateUpImpl implements AppStateUp {
  const _$AppStateUpImpl();

  @override
  String toString() {
    return 'AppState.signUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function(User user, Mod mod) logged,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function(User user, Mod mod)? logged,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function(User user, Mod mod)? logged,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateIn value) signIn,
    required TResult Function(AppStateUp value) signUp,
    required TResult Function(AppStateLogged value) logged,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateIn value)? signIn,
    TResult? Function(AppStateUp value)? signUp,
    TResult? Function(AppStateLogged value)? logged,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateIn value)? signIn,
    TResult Function(AppStateUp value)? signUp,
    TResult Function(AppStateLogged value)? logged,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class AppStateUp implements AppState {
  const factory AppStateUp() = _$AppStateUpImpl;
}

/// @nodoc
abstract class _$$AppStateLoggedImplCopyWith<$Res> {
  factory _$$AppStateLoggedImplCopyWith(_$AppStateLoggedImpl value,
          $Res Function(_$AppStateLoggedImpl) then) =
      __$$AppStateLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, Mod mod});

  $UserCopyWith<$Res> get user;
  $ModCopyWith<$Res> get mod;
}

/// @nodoc
class __$$AppStateLoggedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateLoggedImpl>
    implements _$$AppStateLoggedImplCopyWith<$Res> {
  __$$AppStateLoggedImplCopyWithImpl(
      _$AppStateLoggedImpl _value, $Res Function(_$AppStateLoggedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? mod = null,
  }) {
    return _then(_$AppStateLoggedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      mod: null == mod
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as Mod,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ModCopyWith<$Res> get mod {
    return $ModCopyWith<$Res>(_value.mod, (value) {
      return _then(_value.copyWith(mod: value));
    });
  }
}

/// @nodoc

class _$AppStateLoggedImpl implements AppStateLogged {
  const _$AppStateLoggedImpl({required this.user, required this.mod});

  @override
  final User user;
  @override
  final Mod mod;

  @override
  String toString() {
    return 'AppState.logged(user: $user, mod: $mod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateLoggedImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.mod, mod) || other.mod == mod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, mod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateLoggedImplCopyWith<_$AppStateLoggedImpl> get copyWith =>
      __$$AppStateLoggedImplCopyWithImpl<_$AppStateLoggedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function(User user, Mod mod) logged,
  }) {
    return logged(user, mod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function(User user, Mod mod)? logged,
  }) {
    return logged?.call(user, mod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function(User user, Mod mod)? logged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(user, mod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateIn value) signIn,
    required TResult Function(AppStateUp value) signUp,
    required TResult Function(AppStateLogged value) logged,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateIn value)? signIn,
    TResult? Function(AppStateUp value)? signUp,
    TResult? Function(AppStateLogged value)? logged,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateIn value)? signIn,
    TResult Function(AppStateUp value)? signUp,
    TResult Function(AppStateLogged value)? logged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class AppStateLogged implements AppState {
  const factory AppStateLogged(
      {required final User user,
      required final Mod mod}) = _$AppStateLoggedImpl;

  User get user;
  Mod get mod;
  @JsonKey(ignore: true)
  _$$AppStateLoggedImplCopyWith<_$AppStateLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
