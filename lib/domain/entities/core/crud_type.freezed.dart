// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crud_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CrudType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function(String id) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function(String id)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function(String id)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CrudTypeCreate value) create,
    required TResult Function(CrudTypeUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CrudTypeCreate value)? create,
    TResult? Function(CrudTypeUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CrudTypeCreate value)? create,
    TResult Function(CrudTypeUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrudTypeCopyWith<$Res> {
  factory $CrudTypeCopyWith(CrudType value, $Res Function(CrudType) then) =
      _$CrudTypeCopyWithImpl<$Res, CrudType>;
}

/// @nodoc
class _$CrudTypeCopyWithImpl<$Res, $Val extends CrudType>
    implements $CrudTypeCopyWith<$Res> {
  _$CrudTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CrudTypeCreateImplCopyWith<$Res> {
  factory _$$CrudTypeCreateImplCopyWith(_$CrudTypeCreateImpl value,
          $Res Function(_$CrudTypeCreateImpl) then) =
      __$$CrudTypeCreateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CrudTypeCreateImplCopyWithImpl<$Res>
    extends _$CrudTypeCopyWithImpl<$Res, _$CrudTypeCreateImpl>
    implements _$$CrudTypeCreateImplCopyWith<$Res> {
  __$$CrudTypeCreateImplCopyWithImpl(
      _$CrudTypeCreateImpl _value, $Res Function(_$CrudTypeCreateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CrudTypeCreateImpl implements CrudTypeCreate {
  const _$CrudTypeCreateImpl();

  @override
  String toString() {
    return 'CrudType.create()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CrudTypeCreateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function(String id) update,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function(String id)? update,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function(String id)? update,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CrudTypeCreate value) create,
    required TResult Function(CrudTypeUpdate value) update,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CrudTypeCreate value)? create,
    TResult? Function(CrudTypeUpdate value)? update,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CrudTypeCreate value)? create,
    TResult Function(CrudTypeUpdate value)? update,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CrudTypeCreate implements CrudType {
  const factory CrudTypeCreate() = _$CrudTypeCreateImpl;
}

/// @nodoc
abstract class _$$CrudTypeUpdateImplCopyWith<$Res> {
  factory _$$CrudTypeUpdateImplCopyWith(_$CrudTypeUpdateImpl value,
          $Res Function(_$CrudTypeUpdateImpl) then) =
      __$$CrudTypeUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$CrudTypeUpdateImplCopyWithImpl<$Res>
    extends _$CrudTypeCopyWithImpl<$Res, _$CrudTypeUpdateImpl>
    implements _$$CrudTypeUpdateImplCopyWith<$Res> {
  __$$CrudTypeUpdateImplCopyWithImpl(
      _$CrudTypeUpdateImpl _value, $Res Function(_$CrudTypeUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CrudTypeUpdateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CrudTypeUpdateImpl implements CrudTypeUpdate {
  const _$CrudTypeUpdateImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CrudType.update(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrudTypeUpdateImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CrudTypeUpdateImplCopyWith<_$CrudTypeUpdateImpl> get copyWith =>
      __$$CrudTypeUpdateImplCopyWithImpl<_$CrudTypeUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function(String id) update,
  }) {
    return update(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function(String id)? update,
  }) {
    return update?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function(String id)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CrudTypeCreate value) create,
    required TResult Function(CrudTypeUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CrudTypeCreate value)? create,
    TResult? Function(CrudTypeUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CrudTypeCreate value)? create,
    TResult Function(CrudTypeUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class CrudTypeUpdate implements CrudType {
  const factory CrudTypeUpdate({required final String id}) =
      _$CrudTypeUpdateImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$CrudTypeUpdateImplCopyWith<_$CrudTypeUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
