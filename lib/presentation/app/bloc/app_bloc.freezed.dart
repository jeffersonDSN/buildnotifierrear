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
  Mod get mod => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Mod mod) changeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Mod mod)? changeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Mod mod)? changeView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventChangeView value) changeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventChangeView value)? changeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventChangeView value)? changeView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppEventCopyWith<AppEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
  @useResult
  $Res call({Mod mod});

  $ModCopyWith<$Res> get mod;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mod = null,
  }) {
    return _then(_value.copyWith(
      mod: null == mod
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as Mod,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModCopyWith<$Res> get mod {
    return $ModCopyWith<$Res>(_value.mod, (value) {
      return _then(_value.copyWith(mod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppEventChangeViewImplCopyWith<$Res>
    implements $AppEventCopyWith<$Res> {
  factory _$$AppEventChangeViewImplCopyWith(_$AppEventChangeViewImpl value,
          $Res Function(_$AppEventChangeViewImpl) then) =
      __$$AppEventChangeViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Mod mod});

  @override
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
    required TResult Function(Mod mod) changeView,
  }) {
    return changeView(mod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Mod mod)? changeView,
  }) {
    return changeView?.call(mod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Mod mod)? changeView,
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
    required TResult Function(AppEventChangeView value) changeView,
  }) {
    return changeView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventChangeView value)? changeView,
  }) {
    return changeView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventChangeView value)? changeView,
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

  @override
  Mod get mod;
  @override
  @JsonKey(ignore: true)
  _$$AppEventChangeViewImplCopyWith<_$AppEventChangeViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  Mod get mod => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Mod mod) logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Mod mod)? logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Mod mod)? logged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateLogged value) logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateLogged value)? logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateLogged value)? logged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({Mod mod});

  $ModCopyWith<$Res> get mod;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mod = null,
  }) {
    return _then(_value.copyWith(
      mod: null == mod
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as Mod,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModCopyWith<$Res> get mod {
    return $ModCopyWith<$Res>(_value.mod, (value) {
      return _then(_value.copyWith(mod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateLoggedImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateLoggedImplCopyWith(_$AppStateLoggedImpl value,
          $Res Function(_$AppStateLoggedImpl) then) =
      __$$AppStateLoggedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Mod mod});

  @override
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
    Object? mod = null,
  }) {
    return _then(_$AppStateLoggedImpl(
      mod: null == mod
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as Mod,
    ));
  }
}

/// @nodoc

class _$AppStateLoggedImpl implements AppStateLogged {
  const _$AppStateLoggedImpl({required this.mod});

  @override
  final Mod mod;

  @override
  String toString() {
    return 'AppState.logged(mod: $mod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateLoggedImpl &&
            (identical(other.mod, mod) || other.mod == mod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateLoggedImplCopyWith<_$AppStateLoggedImpl> get copyWith =>
      __$$AppStateLoggedImplCopyWithImpl<_$AppStateLoggedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Mod mod) logged,
  }) {
    return logged(mod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Mod mod)? logged,
  }) {
    return logged?.call(mod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Mod mod)? logged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(mod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateLogged value) logged,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateLogged value)? logged,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  const factory AppStateLogged({required final Mod mod}) = _$AppStateLoggedImpl;

  @override
  Mod get mod;
  @override
  @JsonKey(ignore: true)
  _$$AppStateLoggedImplCopyWith<_$AppStateLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
