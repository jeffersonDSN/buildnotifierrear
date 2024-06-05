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
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
    required TResult Function(VoidCallback callback) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String value)? updateFirstName,
    TResult? Function(String value)? updateLastName,
    TResult? Function(String value)? updateEmail,
    TResult? Function(VoidCallback callback)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String value)? updateFirstName,
    TResult Function(String value)? updateLastName,
    TResult Function(String value)? updateEmail,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientEditEventLoad value) load,
    required TResult Function(ClientEditEventUpdateFirstName value)
        updateFirstName,
    required TResult Function(ClientEditEventUpdateLastName value)
        updateLastName,
    required TResult Function(ClientEditEventUpdateEmail value) updateEmail,
    required TResult Function(ClientEditEventSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult? Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult? Function(ClientEditEventUpdateEmail value)? updateEmail,
    TResult? Function(ClientEditEventSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult Function(ClientEditEventUpdateEmail value)? updateEmail,
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
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
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
    required TResult Function(ClientEditEventUpdateFirstName value)
        updateFirstName,
    required TResult Function(ClientEditEventUpdateLastName value)
        updateLastName,
    required TResult Function(ClientEditEventUpdateEmail value) updateEmail,
    required TResult Function(ClientEditEventSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult? Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult? Function(ClientEditEventUpdateEmail value)? updateEmail,
    TResult? Function(ClientEditEventSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult Function(ClientEditEventUpdateEmail value)? updateEmail,
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
abstract class _$$ClientEditEventUpdateFirstNameImplCopyWith<$Res> {
  factory _$$ClientEditEventUpdateFirstNameImplCopyWith(
          _$ClientEditEventUpdateFirstNameImpl value,
          $Res Function(_$ClientEditEventUpdateFirstNameImpl) then) =
      __$$ClientEditEventUpdateFirstNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ClientEditEventUpdateFirstNameImplCopyWithImpl<$Res>
    extends _$ClientEditEventCopyWithImpl<$Res,
        _$ClientEditEventUpdateFirstNameImpl>
    implements _$$ClientEditEventUpdateFirstNameImplCopyWith<$Res> {
  __$$ClientEditEventUpdateFirstNameImplCopyWithImpl(
      _$ClientEditEventUpdateFirstNameImpl _value,
      $Res Function(_$ClientEditEventUpdateFirstNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ClientEditEventUpdateFirstNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientEditEventUpdateFirstNameImpl
    implements ClientEditEventUpdateFirstName {
  const _$ClientEditEventUpdateFirstNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ClientEditEvent.updateFirstName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditEventUpdateFirstNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEditEventUpdateFirstNameImplCopyWith<
          _$ClientEditEventUpdateFirstNameImpl>
      get copyWith => __$$ClientEditEventUpdateFirstNameImplCopyWithImpl<
          _$ClientEditEventUpdateFirstNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
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
    required TResult Function(ClientEditEventLoad value) load,
    required TResult Function(ClientEditEventUpdateFirstName value)
        updateFirstName,
    required TResult Function(ClientEditEventUpdateLastName value)
        updateLastName,
    required TResult Function(ClientEditEventUpdateEmail value) updateEmail,
    required TResult Function(ClientEditEventSave value) save,
  }) {
    return updateFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult? Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult? Function(ClientEditEventUpdateEmail value)? updateEmail,
    TResult? Function(ClientEditEventSave value)? save,
  }) {
    return updateFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult Function(ClientEditEventUpdateEmail value)? updateEmail,
    TResult Function(ClientEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (updateFirstName != null) {
      return updateFirstName(this);
    }
    return orElse();
  }
}

abstract class ClientEditEventUpdateFirstName implements ClientEditEvent {
  const factory ClientEditEventUpdateFirstName({required final String value}) =
      _$ClientEditEventUpdateFirstNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ClientEditEventUpdateFirstNameImplCopyWith<
          _$ClientEditEventUpdateFirstNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientEditEventUpdateLastNameImplCopyWith<$Res> {
  factory _$$ClientEditEventUpdateLastNameImplCopyWith(
          _$ClientEditEventUpdateLastNameImpl value,
          $Res Function(_$ClientEditEventUpdateLastNameImpl) then) =
      __$$ClientEditEventUpdateLastNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ClientEditEventUpdateLastNameImplCopyWithImpl<$Res>
    extends _$ClientEditEventCopyWithImpl<$Res,
        _$ClientEditEventUpdateLastNameImpl>
    implements _$$ClientEditEventUpdateLastNameImplCopyWith<$Res> {
  __$$ClientEditEventUpdateLastNameImplCopyWithImpl(
      _$ClientEditEventUpdateLastNameImpl _value,
      $Res Function(_$ClientEditEventUpdateLastNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ClientEditEventUpdateLastNameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientEditEventUpdateLastNameImpl
    implements ClientEditEventUpdateLastName {
  const _$ClientEditEventUpdateLastNameImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ClientEditEvent.updateLastName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditEventUpdateLastNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEditEventUpdateLastNameImplCopyWith<
          _$ClientEditEventUpdateLastNameImpl>
      get copyWith => __$$ClientEditEventUpdateLastNameImplCopyWithImpl<
          _$ClientEditEventUpdateLastNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
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
    required TResult Function(ClientEditEventLoad value) load,
    required TResult Function(ClientEditEventUpdateFirstName value)
        updateFirstName,
    required TResult Function(ClientEditEventUpdateLastName value)
        updateLastName,
    required TResult Function(ClientEditEventUpdateEmail value) updateEmail,
    required TResult Function(ClientEditEventSave value) save,
  }) {
    return updateLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult? Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult? Function(ClientEditEventUpdateEmail value)? updateEmail,
    TResult? Function(ClientEditEventSave value)? save,
  }) {
    return updateLastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult Function(ClientEditEventUpdateEmail value)? updateEmail,
    TResult Function(ClientEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (updateLastName != null) {
      return updateLastName(this);
    }
    return orElse();
  }
}

abstract class ClientEditEventUpdateLastName implements ClientEditEvent {
  const factory ClientEditEventUpdateLastName({required final String value}) =
      _$ClientEditEventUpdateLastNameImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ClientEditEventUpdateLastNameImplCopyWith<
          _$ClientEditEventUpdateLastNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientEditEventUpdateEmailImplCopyWith<$Res> {
  factory _$$ClientEditEventUpdateEmailImplCopyWith(
          _$ClientEditEventUpdateEmailImpl value,
          $Res Function(_$ClientEditEventUpdateEmailImpl) then) =
      __$$ClientEditEventUpdateEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ClientEditEventUpdateEmailImplCopyWithImpl<$Res>
    extends _$ClientEditEventCopyWithImpl<$Res,
        _$ClientEditEventUpdateEmailImpl>
    implements _$$ClientEditEventUpdateEmailImplCopyWith<$Res> {
  __$$ClientEditEventUpdateEmailImplCopyWithImpl(
      _$ClientEditEventUpdateEmailImpl _value,
      $Res Function(_$ClientEditEventUpdateEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ClientEditEventUpdateEmailImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientEditEventUpdateEmailImpl implements ClientEditEventUpdateEmail {
  const _$ClientEditEventUpdateEmailImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ClientEditEvent.updateEmail(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEditEventUpdateEmailImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEditEventUpdateEmailImplCopyWith<_$ClientEditEventUpdateEmailImpl>
      get copyWith => __$$ClientEditEventUpdateEmailImplCopyWithImpl<
          _$ClientEditEventUpdateEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
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
    required TResult Function(ClientEditEventLoad value) load,
    required TResult Function(ClientEditEventUpdateFirstName value)
        updateFirstName,
    required TResult Function(ClientEditEventUpdateLastName value)
        updateLastName,
    required TResult Function(ClientEditEventUpdateEmail value) updateEmail,
    required TResult Function(ClientEditEventSave value) save,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult? Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult? Function(ClientEditEventUpdateEmail value)? updateEmail,
    TResult? Function(ClientEditEventSave value)? save,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult Function(ClientEditEventUpdateEmail value)? updateEmail,
    TResult Function(ClientEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class ClientEditEventUpdateEmail implements ClientEditEvent {
  const factory ClientEditEventUpdateEmail({required final String value}) =
      _$ClientEditEventUpdateEmailImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$ClientEditEventUpdateEmailImplCopyWith<_$ClientEditEventUpdateEmailImpl>
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
    required TResult Function(String value) updateFirstName,
    required TResult Function(String value) updateLastName,
    required TResult Function(String value) updateEmail,
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
    required TResult Function(ClientEditEventUpdateFirstName value)
        updateFirstName,
    required TResult Function(ClientEditEventUpdateLastName value)
        updateLastName,
    required TResult Function(ClientEditEventUpdateEmail value) updateEmail,
    required TResult Function(ClientEditEventSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientEditEventLoad value)? load,
    TResult? Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult? Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult? Function(ClientEditEventUpdateEmail value)? updateEmail,
    TResult? Function(ClientEditEventSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientEditEventLoad value)? load,
    TResult Function(ClientEditEventUpdateFirstName value)? updateFirstName,
    TResult Function(ClientEditEventUpdateLastName value)? updateLastName,
    TResult Function(ClientEditEventUpdateEmail value)? updateEmail,
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
    Object? client = freezed,
  }) {
    return _then(_$ClientEditStateLoadedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CrudType,
      client: freezed == client
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
            const DeepCollectionEquality().equals(other.client, client));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(client));

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
