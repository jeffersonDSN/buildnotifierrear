// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_file_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttachmentFileViewEvent {
  FileItem get fileItem => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FileItem fileItem) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FileItem fileItem)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FileItem fileItem)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentFileViewEventLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentFileViewEventLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentFileViewEventLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttachmentFileViewEventCopyWith<AttachmentFileViewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentFileViewEventCopyWith<$Res> {
  factory $AttachmentFileViewEventCopyWith(AttachmentFileViewEvent value,
          $Res Function(AttachmentFileViewEvent) then) =
      _$AttachmentFileViewEventCopyWithImpl<$Res, AttachmentFileViewEvent>;
  @useResult
  $Res call({FileItem fileItem});

  $FileItemCopyWith<$Res> get fileItem;
}

/// @nodoc
class _$AttachmentFileViewEventCopyWithImpl<$Res,
        $Val extends AttachmentFileViewEvent>
    implements $AttachmentFileViewEventCopyWith<$Res> {
  _$AttachmentFileViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileItem = null,
  }) {
    return _then(_value.copyWith(
      fileItem: null == fileItem
          ? _value.fileItem
          : fileItem // ignore: cast_nullable_to_non_nullable
              as FileItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FileItemCopyWith<$Res> get fileItem {
    return $FileItemCopyWith<$Res>(_value.fileItem, (value) {
      return _then(_value.copyWith(fileItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttachmentFileViewEventLoadImplCopyWith<$Res>
    implements $AttachmentFileViewEventCopyWith<$Res> {
  factory _$$AttachmentFileViewEventLoadImplCopyWith(
          _$AttachmentFileViewEventLoadImpl value,
          $Res Function(_$AttachmentFileViewEventLoadImpl) then) =
      __$$AttachmentFileViewEventLoadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FileItem fileItem});

  @override
  $FileItemCopyWith<$Res> get fileItem;
}

/// @nodoc
class __$$AttachmentFileViewEventLoadImplCopyWithImpl<$Res>
    extends _$AttachmentFileViewEventCopyWithImpl<$Res,
        _$AttachmentFileViewEventLoadImpl>
    implements _$$AttachmentFileViewEventLoadImplCopyWith<$Res> {
  __$$AttachmentFileViewEventLoadImplCopyWithImpl(
      _$AttachmentFileViewEventLoadImpl _value,
      $Res Function(_$AttachmentFileViewEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileItem = null,
  }) {
    return _then(_$AttachmentFileViewEventLoadImpl(
      fileItem: null == fileItem
          ? _value.fileItem
          : fileItem // ignore: cast_nullable_to_non_nullable
              as FileItem,
    ));
  }
}

/// @nodoc

class _$AttachmentFileViewEventLoadImpl implements AttachmentFileViewEventLoad {
  const _$AttachmentFileViewEventLoadImpl({required this.fileItem});

  @override
  final FileItem fileItem;

  @override
  String toString() {
    return 'AttachmentFileViewEvent.load(fileItem: $fileItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentFileViewEventLoadImpl &&
            (identical(other.fileItem, fileItem) ||
                other.fileItem == fileItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentFileViewEventLoadImplCopyWith<_$AttachmentFileViewEventLoadImpl>
      get copyWith => __$$AttachmentFileViewEventLoadImplCopyWithImpl<
          _$AttachmentFileViewEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FileItem fileItem) load,
  }) {
    return load(fileItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FileItem fileItem)? load,
  }) {
    return load?.call(fileItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FileItem fileItem)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(fileItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentFileViewEventLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentFileViewEventLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentFileViewEventLoad value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class AttachmentFileViewEventLoad implements AttachmentFileViewEvent {
  const factory AttachmentFileViewEventLoad(
      {required final FileItem fileItem}) = _$AttachmentFileViewEventLoadImpl;

  @override
  FileItem get fileItem;
  @override
  @JsonKey(ignore: true)
  _$$AttachmentFileViewEventLoadImplCopyWith<_$AttachmentFileViewEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttachmentFileViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(FileItem fileItem) loading,
    required TResult Function(FileItem fileItem, Uint8List? data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(FileItem fileItem)? loading,
    TResult? Function(FileItem fileItem, Uint8List? data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(FileItem fileItem)? loading,
    TResult Function(FileItem fileItem, Uint8List? data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentFileViewStateInit value) init,
    required TResult Function(AttachmentFileViewStateLoading value) loading,
    required TResult Function(AttachmentFileViewStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentFileViewStateInit value)? init,
    TResult? Function(AttachmentFileViewStateLoading value)? loading,
    TResult? Function(AttachmentFileViewStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentFileViewStateInit value)? init,
    TResult Function(AttachmentFileViewStateLoading value)? loading,
    TResult Function(AttachmentFileViewStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentFileViewStateCopyWith<$Res> {
  factory $AttachmentFileViewStateCopyWith(AttachmentFileViewState value,
          $Res Function(AttachmentFileViewState) then) =
      _$AttachmentFileViewStateCopyWithImpl<$Res, AttachmentFileViewState>;
}

/// @nodoc
class _$AttachmentFileViewStateCopyWithImpl<$Res,
        $Val extends AttachmentFileViewState>
    implements $AttachmentFileViewStateCopyWith<$Res> {
  _$AttachmentFileViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AttachmentFileViewStateInitImplCopyWith<$Res> {
  factory _$$AttachmentFileViewStateInitImplCopyWith(
          _$AttachmentFileViewStateInitImpl value,
          $Res Function(_$AttachmentFileViewStateInitImpl) then) =
      __$$AttachmentFileViewStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttachmentFileViewStateInitImplCopyWithImpl<$Res>
    extends _$AttachmentFileViewStateCopyWithImpl<$Res,
        _$AttachmentFileViewStateInitImpl>
    implements _$$AttachmentFileViewStateInitImplCopyWith<$Res> {
  __$$AttachmentFileViewStateInitImplCopyWithImpl(
      _$AttachmentFileViewStateInitImpl _value,
      $Res Function(_$AttachmentFileViewStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AttachmentFileViewStateInitImpl implements AttachmentFileViewStateInit {
  const _$AttachmentFileViewStateInitImpl();

  @override
  String toString() {
    return 'AttachmentFileViewState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentFileViewStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(FileItem fileItem) loading,
    required TResult Function(FileItem fileItem, Uint8List? data) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(FileItem fileItem)? loading,
    TResult? Function(FileItem fileItem, Uint8List? data)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(FileItem fileItem)? loading,
    TResult Function(FileItem fileItem, Uint8List? data)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentFileViewStateInit value) init,
    required TResult Function(AttachmentFileViewStateLoading value) loading,
    required TResult Function(AttachmentFileViewStateLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentFileViewStateInit value)? init,
    TResult? Function(AttachmentFileViewStateLoading value)? loading,
    TResult? Function(AttachmentFileViewStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentFileViewStateInit value)? init,
    TResult Function(AttachmentFileViewStateLoading value)? loading,
    TResult Function(AttachmentFileViewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AttachmentFileViewStateInit implements AttachmentFileViewState {
  const factory AttachmentFileViewStateInit() =
      _$AttachmentFileViewStateInitImpl;
}

/// @nodoc
abstract class _$$AttachmentFileViewStateLoadingImplCopyWith<$Res> {
  factory _$$AttachmentFileViewStateLoadingImplCopyWith(
          _$AttachmentFileViewStateLoadingImpl value,
          $Res Function(_$AttachmentFileViewStateLoadingImpl) then) =
      __$$AttachmentFileViewStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FileItem fileItem});

  $FileItemCopyWith<$Res> get fileItem;
}

/// @nodoc
class __$$AttachmentFileViewStateLoadingImplCopyWithImpl<$Res>
    extends _$AttachmentFileViewStateCopyWithImpl<$Res,
        _$AttachmentFileViewStateLoadingImpl>
    implements _$$AttachmentFileViewStateLoadingImplCopyWith<$Res> {
  __$$AttachmentFileViewStateLoadingImplCopyWithImpl(
      _$AttachmentFileViewStateLoadingImpl _value,
      $Res Function(_$AttachmentFileViewStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileItem = null,
  }) {
    return _then(_$AttachmentFileViewStateLoadingImpl(
      fileItem: null == fileItem
          ? _value.fileItem
          : fileItem // ignore: cast_nullable_to_non_nullable
              as FileItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FileItemCopyWith<$Res> get fileItem {
    return $FileItemCopyWith<$Res>(_value.fileItem, (value) {
      return _then(_value.copyWith(fileItem: value));
    });
  }
}

/// @nodoc

class _$AttachmentFileViewStateLoadingImpl
    implements AttachmentFileViewStateLoading {
  const _$AttachmentFileViewStateLoadingImpl({required this.fileItem});

  @override
  final FileItem fileItem;

  @override
  String toString() {
    return 'AttachmentFileViewState.loading(fileItem: $fileItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentFileViewStateLoadingImpl &&
            (identical(other.fileItem, fileItem) ||
                other.fileItem == fileItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentFileViewStateLoadingImplCopyWith<
          _$AttachmentFileViewStateLoadingImpl>
      get copyWith => __$$AttachmentFileViewStateLoadingImplCopyWithImpl<
          _$AttachmentFileViewStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(FileItem fileItem) loading,
    required TResult Function(FileItem fileItem, Uint8List? data) loaded,
  }) {
    return loading(fileItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(FileItem fileItem)? loading,
    TResult? Function(FileItem fileItem, Uint8List? data)? loaded,
  }) {
    return loading?.call(fileItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(FileItem fileItem)? loading,
    TResult Function(FileItem fileItem, Uint8List? data)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(fileItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentFileViewStateInit value) init,
    required TResult Function(AttachmentFileViewStateLoading value) loading,
    required TResult Function(AttachmentFileViewStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentFileViewStateInit value)? init,
    TResult? Function(AttachmentFileViewStateLoading value)? loading,
    TResult? Function(AttachmentFileViewStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentFileViewStateInit value)? init,
    TResult Function(AttachmentFileViewStateLoading value)? loading,
    TResult Function(AttachmentFileViewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AttachmentFileViewStateLoading
    implements AttachmentFileViewState {
  const factory AttachmentFileViewStateLoading(
          {required final FileItem fileItem}) =
      _$AttachmentFileViewStateLoadingImpl;

  FileItem get fileItem;
  @JsonKey(ignore: true)
  _$$AttachmentFileViewStateLoadingImplCopyWith<
          _$AttachmentFileViewStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttachmentFileViewStateLoadedImplCopyWith<$Res> {
  factory _$$AttachmentFileViewStateLoadedImplCopyWith(
          _$AttachmentFileViewStateLoadedImpl value,
          $Res Function(_$AttachmentFileViewStateLoadedImpl) then) =
      __$$AttachmentFileViewStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FileItem fileItem, Uint8List? data});

  $FileItemCopyWith<$Res> get fileItem;
}

/// @nodoc
class __$$AttachmentFileViewStateLoadedImplCopyWithImpl<$Res>
    extends _$AttachmentFileViewStateCopyWithImpl<$Res,
        _$AttachmentFileViewStateLoadedImpl>
    implements _$$AttachmentFileViewStateLoadedImplCopyWith<$Res> {
  __$$AttachmentFileViewStateLoadedImplCopyWithImpl(
      _$AttachmentFileViewStateLoadedImpl _value,
      $Res Function(_$AttachmentFileViewStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileItem = null,
    Object? data = freezed,
  }) {
    return _then(_$AttachmentFileViewStateLoadedImpl(
      fileItem: null == fileItem
          ? _value.fileItem
          : fileItem // ignore: cast_nullable_to_non_nullable
              as FileItem,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FileItemCopyWith<$Res> get fileItem {
    return $FileItemCopyWith<$Res>(_value.fileItem, (value) {
      return _then(_value.copyWith(fileItem: value));
    });
  }
}

/// @nodoc

class _$AttachmentFileViewStateLoadedImpl
    implements AttachmentFileViewStateLoaded {
  const _$AttachmentFileViewStateLoadedImpl(
      {required this.fileItem, this.data});

  @override
  final FileItem fileItem;
  @override
  final Uint8List? data;

  @override
  String toString() {
    return 'AttachmentFileViewState.loaded(fileItem: $fileItem, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentFileViewStateLoadedImpl &&
            (identical(other.fileItem, fileItem) ||
                other.fileItem == fileItem) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fileItem, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentFileViewStateLoadedImplCopyWith<
          _$AttachmentFileViewStateLoadedImpl>
      get copyWith => __$$AttachmentFileViewStateLoadedImplCopyWithImpl<
          _$AttachmentFileViewStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(FileItem fileItem) loading,
    required TResult Function(FileItem fileItem, Uint8List? data) loaded,
  }) {
    return loaded(fileItem, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(FileItem fileItem)? loading,
    TResult? Function(FileItem fileItem, Uint8List? data)? loaded,
  }) {
    return loaded?.call(fileItem, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(FileItem fileItem)? loading,
    TResult Function(FileItem fileItem, Uint8List? data)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(fileItem, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentFileViewStateInit value) init,
    required TResult Function(AttachmentFileViewStateLoading value) loading,
    required TResult Function(AttachmentFileViewStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentFileViewStateInit value)? init,
    TResult? Function(AttachmentFileViewStateLoading value)? loading,
    TResult? Function(AttachmentFileViewStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentFileViewStateInit value)? init,
    TResult Function(AttachmentFileViewStateLoading value)? loading,
    TResult Function(AttachmentFileViewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AttachmentFileViewStateLoaded
    implements AttachmentFileViewState {
  const factory AttachmentFileViewStateLoaded(
      {required final FileItem fileItem,
      final Uint8List? data}) = _$AttachmentFileViewStateLoadedImpl;

  FileItem get fileItem;
  Uint8List? get data;
  @JsonKey(ignore: true)
  _$$AttachmentFileViewStateLoadedImplCopyWith<
          _$AttachmentFileViewStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
