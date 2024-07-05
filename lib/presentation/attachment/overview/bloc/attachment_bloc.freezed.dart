// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttachmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String folderId) load,
    required TResult Function() goBack,
    required TResult Function(String id, String name) changeFileItemName,
    required TResult Function(String id) download,
    required TResult Function(FileItem fileItem, Uint8List? data) addFile,
    required TResult Function(FileItem fileItem) deleteFileItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String folderId)? load,
    TResult? Function()? goBack,
    TResult? Function(String id, String name)? changeFileItemName,
    TResult? Function(String id)? download,
    TResult? Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult? Function(FileItem fileItem)? deleteFileItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String folderId)? load,
    TResult Function()? goBack,
    TResult Function(String id, String name)? changeFileItemName,
    TResult Function(String id)? download,
    TResult Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult Function(FileItem fileItem)? deleteFileItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentEventLoad value) load,
    required TResult Function(AttachmentEventGoBack value) goBack,
    required TResult Function(AttachmentEventChangeFileItemName value)
        changeFileItemName,
    required TResult Function(AttachmentEventDownload value) download,
    required TResult Function(AttachmentEventAddFile value) addFile,
    required TResult Function(AttachmentEventDeleteFileItem value)
        deleteFileItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentEventLoad value)? load,
    TResult? Function(AttachmentEventGoBack value)? goBack,
    TResult? Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult? Function(AttachmentEventDownload value)? download,
    TResult? Function(AttachmentEventAddFile value)? addFile,
    TResult? Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentEventLoad value)? load,
    TResult Function(AttachmentEventGoBack value)? goBack,
    TResult Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult Function(AttachmentEventDownload value)? download,
    TResult Function(AttachmentEventAddFile value)? addFile,
    TResult Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentEventCopyWith<$Res> {
  factory $AttachmentEventCopyWith(
          AttachmentEvent value, $Res Function(AttachmentEvent) then) =
      _$AttachmentEventCopyWithImpl<$Res, AttachmentEvent>;
}

/// @nodoc
class _$AttachmentEventCopyWithImpl<$Res, $Val extends AttachmentEvent>
    implements $AttachmentEventCopyWith<$Res> {
  _$AttachmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AttachmentEventLoadImplCopyWith<$Res> {
  factory _$$AttachmentEventLoadImplCopyWith(_$AttachmentEventLoadImpl value,
          $Res Function(_$AttachmentEventLoadImpl) then) =
      __$$AttachmentEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String folderId});
}

/// @nodoc
class __$$AttachmentEventLoadImplCopyWithImpl<$Res>
    extends _$AttachmentEventCopyWithImpl<$Res, _$AttachmentEventLoadImpl>
    implements _$$AttachmentEventLoadImplCopyWith<$Res> {
  __$$AttachmentEventLoadImplCopyWithImpl(_$AttachmentEventLoadImpl _value,
      $Res Function(_$AttachmentEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
  }) {
    return _then(_$AttachmentEventLoadImpl(
      folderId: null == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AttachmentEventLoadImpl implements AttachmentEventLoad {
  const _$AttachmentEventLoadImpl({required this.folderId});

  @override
  final String folderId;

  @override
  String toString() {
    return 'AttachmentEvent.load(folderId: $folderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentEventLoadImpl &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, folderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentEventLoadImplCopyWith<_$AttachmentEventLoadImpl> get copyWith =>
      __$$AttachmentEventLoadImplCopyWithImpl<_$AttachmentEventLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String folderId) load,
    required TResult Function() goBack,
    required TResult Function(String id, String name) changeFileItemName,
    required TResult Function(String id) download,
    required TResult Function(FileItem fileItem, Uint8List? data) addFile,
    required TResult Function(FileItem fileItem) deleteFileItem,
  }) {
    return load(folderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String folderId)? load,
    TResult? Function()? goBack,
    TResult? Function(String id, String name)? changeFileItemName,
    TResult? Function(String id)? download,
    TResult? Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult? Function(FileItem fileItem)? deleteFileItem,
  }) {
    return load?.call(folderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String folderId)? load,
    TResult Function()? goBack,
    TResult Function(String id, String name)? changeFileItemName,
    TResult Function(String id)? download,
    TResult Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult Function(FileItem fileItem)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(folderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentEventLoad value) load,
    required TResult Function(AttachmentEventGoBack value) goBack,
    required TResult Function(AttachmentEventChangeFileItemName value)
        changeFileItemName,
    required TResult Function(AttachmentEventDownload value) download,
    required TResult Function(AttachmentEventAddFile value) addFile,
    required TResult Function(AttachmentEventDeleteFileItem value)
        deleteFileItem,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentEventLoad value)? load,
    TResult? Function(AttachmentEventGoBack value)? goBack,
    TResult? Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult? Function(AttachmentEventDownload value)? download,
    TResult? Function(AttachmentEventAddFile value)? addFile,
    TResult? Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentEventLoad value)? load,
    TResult Function(AttachmentEventGoBack value)? goBack,
    TResult Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult Function(AttachmentEventDownload value)? download,
    TResult Function(AttachmentEventAddFile value)? addFile,
    TResult Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class AttachmentEventLoad implements AttachmentEvent {
  const factory AttachmentEventLoad({required final String folderId}) =
      _$AttachmentEventLoadImpl;

  String get folderId;
  @JsonKey(ignore: true)
  _$$AttachmentEventLoadImplCopyWith<_$AttachmentEventLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttachmentEventGoBackImplCopyWith<$Res> {
  factory _$$AttachmentEventGoBackImplCopyWith(
          _$AttachmentEventGoBackImpl value,
          $Res Function(_$AttachmentEventGoBackImpl) then) =
      __$$AttachmentEventGoBackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttachmentEventGoBackImplCopyWithImpl<$Res>
    extends _$AttachmentEventCopyWithImpl<$Res, _$AttachmentEventGoBackImpl>
    implements _$$AttachmentEventGoBackImplCopyWith<$Res> {
  __$$AttachmentEventGoBackImplCopyWithImpl(_$AttachmentEventGoBackImpl _value,
      $Res Function(_$AttachmentEventGoBackImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AttachmentEventGoBackImpl implements AttachmentEventGoBack {
  const _$AttachmentEventGoBackImpl();

  @override
  String toString() {
    return 'AttachmentEvent.goBack()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentEventGoBackImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String folderId) load,
    required TResult Function() goBack,
    required TResult Function(String id, String name) changeFileItemName,
    required TResult Function(String id) download,
    required TResult Function(FileItem fileItem, Uint8List? data) addFile,
    required TResult Function(FileItem fileItem) deleteFileItem,
  }) {
    return goBack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String folderId)? load,
    TResult? Function()? goBack,
    TResult? Function(String id, String name)? changeFileItemName,
    TResult? Function(String id)? download,
    TResult? Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult? Function(FileItem fileItem)? deleteFileItem,
  }) {
    return goBack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String folderId)? load,
    TResult Function()? goBack,
    TResult Function(String id, String name)? changeFileItemName,
    TResult Function(String id)? download,
    TResult Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult Function(FileItem fileItem)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (goBack != null) {
      return goBack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentEventLoad value) load,
    required TResult Function(AttachmentEventGoBack value) goBack,
    required TResult Function(AttachmentEventChangeFileItemName value)
        changeFileItemName,
    required TResult Function(AttachmentEventDownload value) download,
    required TResult Function(AttachmentEventAddFile value) addFile,
    required TResult Function(AttachmentEventDeleteFileItem value)
        deleteFileItem,
  }) {
    return goBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentEventLoad value)? load,
    TResult? Function(AttachmentEventGoBack value)? goBack,
    TResult? Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult? Function(AttachmentEventDownload value)? download,
    TResult? Function(AttachmentEventAddFile value)? addFile,
    TResult? Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
  }) {
    return goBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentEventLoad value)? load,
    TResult Function(AttachmentEventGoBack value)? goBack,
    TResult Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult Function(AttachmentEventDownload value)? download,
    TResult Function(AttachmentEventAddFile value)? addFile,
    TResult Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (goBack != null) {
      return goBack(this);
    }
    return orElse();
  }
}

abstract class AttachmentEventGoBack implements AttachmentEvent {
  const factory AttachmentEventGoBack() = _$AttachmentEventGoBackImpl;
}

/// @nodoc
abstract class _$$AttachmentEventChangeFileItemNameImplCopyWith<$Res> {
  factory _$$AttachmentEventChangeFileItemNameImplCopyWith(
          _$AttachmentEventChangeFileItemNameImpl value,
          $Res Function(_$AttachmentEventChangeFileItemNameImpl) then) =
      __$$AttachmentEventChangeFileItemNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$AttachmentEventChangeFileItemNameImplCopyWithImpl<$Res>
    extends _$AttachmentEventCopyWithImpl<$Res,
        _$AttachmentEventChangeFileItemNameImpl>
    implements _$$AttachmentEventChangeFileItemNameImplCopyWith<$Res> {
  __$$AttachmentEventChangeFileItemNameImplCopyWithImpl(
      _$AttachmentEventChangeFileItemNameImpl _value,
      $Res Function(_$AttachmentEventChangeFileItemNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$AttachmentEventChangeFileItemNameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AttachmentEventChangeFileItemNameImpl
    implements AttachmentEventChangeFileItemName {
  const _$AttachmentEventChangeFileItemNameImpl(
      {required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'AttachmentEvent.changeFileItemName(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentEventChangeFileItemNameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentEventChangeFileItemNameImplCopyWith<
          _$AttachmentEventChangeFileItemNameImpl>
      get copyWith => __$$AttachmentEventChangeFileItemNameImplCopyWithImpl<
          _$AttachmentEventChangeFileItemNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String folderId) load,
    required TResult Function() goBack,
    required TResult Function(String id, String name) changeFileItemName,
    required TResult Function(String id) download,
    required TResult Function(FileItem fileItem, Uint8List? data) addFile,
    required TResult Function(FileItem fileItem) deleteFileItem,
  }) {
    return changeFileItemName(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String folderId)? load,
    TResult? Function()? goBack,
    TResult? Function(String id, String name)? changeFileItemName,
    TResult? Function(String id)? download,
    TResult? Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult? Function(FileItem fileItem)? deleteFileItem,
  }) {
    return changeFileItemName?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String folderId)? load,
    TResult Function()? goBack,
    TResult Function(String id, String name)? changeFileItemName,
    TResult Function(String id)? download,
    TResult Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult Function(FileItem fileItem)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (changeFileItemName != null) {
      return changeFileItemName(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentEventLoad value) load,
    required TResult Function(AttachmentEventGoBack value) goBack,
    required TResult Function(AttachmentEventChangeFileItemName value)
        changeFileItemName,
    required TResult Function(AttachmentEventDownload value) download,
    required TResult Function(AttachmentEventAddFile value) addFile,
    required TResult Function(AttachmentEventDeleteFileItem value)
        deleteFileItem,
  }) {
    return changeFileItemName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentEventLoad value)? load,
    TResult? Function(AttachmentEventGoBack value)? goBack,
    TResult? Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult? Function(AttachmentEventDownload value)? download,
    TResult? Function(AttachmentEventAddFile value)? addFile,
    TResult? Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
  }) {
    return changeFileItemName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentEventLoad value)? load,
    TResult Function(AttachmentEventGoBack value)? goBack,
    TResult Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult Function(AttachmentEventDownload value)? download,
    TResult Function(AttachmentEventAddFile value)? addFile,
    TResult Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (changeFileItemName != null) {
      return changeFileItemName(this);
    }
    return orElse();
  }
}

abstract class AttachmentEventChangeFileItemName implements AttachmentEvent {
  const factory AttachmentEventChangeFileItemName(
      {required final String id,
      required final String name}) = _$AttachmentEventChangeFileItemNameImpl;

  String get id;
  String get name;
  @JsonKey(ignore: true)
  _$$AttachmentEventChangeFileItemNameImplCopyWith<
          _$AttachmentEventChangeFileItemNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttachmentEventDownloadImplCopyWith<$Res> {
  factory _$$AttachmentEventDownloadImplCopyWith(
          _$AttachmentEventDownloadImpl value,
          $Res Function(_$AttachmentEventDownloadImpl) then) =
      __$$AttachmentEventDownloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$AttachmentEventDownloadImplCopyWithImpl<$Res>
    extends _$AttachmentEventCopyWithImpl<$Res, _$AttachmentEventDownloadImpl>
    implements _$$AttachmentEventDownloadImplCopyWith<$Res> {
  __$$AttachmentEventDownloadImplCopyWithImpl(
      _$AttachmentEventDownloadImpl _value,
      $Res Function(_$AttachmentEventDownloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AttachmentEventDownloadImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AttachmentEventDownloadImpl implements AttachmentEventDownload {
  const _$AttachmentEventDownloadImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AttachmentEvent.download(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentEventDownloadImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentEventDownloadImplCopyWith<_$AttachmentEventDownloadImpl>
      get copyWith => __$$AttachmentEventDownloadImplCopyWithImpl<
          _$AttachmentEventDownloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String folderId) load,
    required TResult Function() goBack,
    required TResult Function(String id, String name) changeFileItemName,
    required TResult Function(String id) download,
    required TResult Function(FileItem fileItem, Uint8List? data) addFile,
    required TResult Function(FileItem fileItem) deleteFileItem,
  }) {
    return download(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String folderId)? load,
    TResult? Function()? goBack,
    TResult? Function(String id, String name)? changeFileItemName,
    TResult? Function(String id)? download,
    TResult? Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult? Function(FileItem fileItem)? deleteFileItem,
  }) {
    return download?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String folderId)? load,
    TResult Function()? goBack,
    TResult Function(String id, String name)? changeFileItemName,
    TResult Function(String id)? download,
    TResult Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult Function(FileItem fileItem)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentEventLoad value) load,
    required TResult Function(AttachmentEventGoBack value) goBack,
    required TResult Function(AttachmentEventChangeFileItemName value)
        changeFileItemName,
    required TResult Function(AttachmentEventDownload value) download,
    required TResult Function(AttachmentEventAddFile value) addFile,
    required TResult Function(AttachmentEventDeleteFileItem value)
        deleteFileItem,
  }) {
    return download(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentEventLoad value)? load,
    TResult? Function(AttachmentEventGoBack value)? goBack,
    TResult? Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult? Function(AttachmentEventDownload value)? download,
    TResult? Function(AttachmentEventAddFile value)? addFile,
    TResult? Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
  }) {
    return download?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentEventLoad value)? load,
    TResult Function(AttachmentEventGoBack value)? goBack,
    TResult Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult Function(AttachmentEventDownload value)? download,
    TResult Function(AttachmentEventAddFile value)? addFile,
    TResult Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(this);
    }
    return orElse();
  }
}

abstract class AttachmentEventDownload implements AttachmentEvent {
  const factory AttachmentEventDownload({required final String id}) =
      _$AttachmentEventDownloadImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$AttachmentEventDownloadImplCopyWith<_$AttachmentEventDownloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttachmentEventAddFileImplCopyWith<$Res> {
  factory _$$AttachmentEventAddFileImplCopyWith(
          _$AttachmentEventAddFileImpl value,
          $Res Function(_$AttachmentEventAddFileImpl) then) =
      __$$AttachmentEventAddFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FileItem fileItem, Uint8List? data});

  $FileItemCopyWith<$Res> get fileItem;
}

/// @nodoc
class __$$AttachmentEventAddFileImplCopyWithImpl<$Res>
    extends _$AttachmentEventCopyWithImpl<$Res, _$AttachmentEventAddFileImpl>
    implements _$$AttachmentEventAddFileImplCopyWith<$Res> {
  __$$AttachmentEventAddFileImplCopyWithImpl(
      _$AttachmentEventAddFileImpl _value,
      $Res Function(_$AttachmentEventAddFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileItem = null,
    Object? data = freezed,
  }) {
    return _then(_$AttachmentEventAddFileImpl(
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

class _$AttachmentEventAddFileImpl implements AttachmentEventAddFile {
  const _$AttachmentEventAddFileImpl({required this.fileItem, this.data});

  @override
  final FileItem fileItem;
  @override
  final Uint8List? data;

  @override
  String toString() {
    return 'AttachmentEvent.addFile(fileItem: $fileItem, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentEventAddFileImpl &&
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
  _$$AttachmentEventAddFileImplCopyWith<_$AttachmentEventAddFileImpl>
      get copyWith => __$$AttachmentEventAddFileImplCopyWithImpl<
          _$AttachmentEventAddFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String folderId) load,
    required TResult Function() goBack,
    required TResult Function(String id, String name) changeFileItemName,
    required TResult Function(String id) download,
    required TResult Function(FileItem fileItem, Uint8List? data) addFile,
    required TResult Function(FileItem fileItem) deleteFileItem,
  }) {
    return addFile(fileItem, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String folderId)? load,
    TResult? Function()? goBack,
    TResult? Function(String id, String name)? changeFileItemName,
    TResult? Function(String id)? download,
    TResult? Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult? Function(FileItem fileItem)? deleteFileItem,
  }) {
    return addFile?.call(fileItem, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String folderId)? load,
    TResult Function()? goBack,
    TResult Function(String id, String name)? changeFileItemName,
    TResult Function(String id)? download,
    TResult Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult Function(FileItem fileItem)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (addFile != null) {
      return addFile(fileItem, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentEventLoad value) load,
    required TResult Function(AttachmentEventGoBack value) goBack,
    required TResult Function(AttachmentEventChangeFileItemName value)
        changeFileItemName,
    required TResult Function(AttachmentEventDownload value) download,
    required TResult Function(AttachmentEventAddFile value) addFile,
    required TResult Function(AttachmentEventDeleteFileItem value)
        deleteFileItem,
  }) {
    return addFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentEventLoad value)? load,
    TResult? Function(AttachmentEventGoBack value)? goBack,
    TResult? Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult? Function(AttachmentEventDownload value)? download,
    TResult? Function(AttachmentEventAddFile value)? addFile,
    TResult? Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
  }) {
    return addFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentEventLoad value)? load,
    TResult Function(AttachmentEventGoBack value)? goBack,
    TResult Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult Function(AttachmentEventDownload value)? download,
    TResult Function(AttachmentEventAddFile value)? addFile,
    TResult Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (addFile != null) {
      return addFile(this);
    }
    return orElse();
  }
}

abstract class AttachmentEventAddFile implements AttachmentEvent {
  const factory AttachmentEventAddFile(
      {required final FileItem fileItem,
      final Uint8List? data}) = _$AttachmentEventAddFileImpl;

  FileItem get fileItem;
  Uint8List? get data;
  @JsonKey(ignore: true)
  _$$AttachmentEventAddFileImplCopyWith<_$AttachmentEventAddFileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttachmentEventDeleteFileItemImplCopyWith<$Res> {
  factory _$$AttachmentEventDeleteFileItemImplCopyWith(
          _$AttachmentEventDeleteFileItemImpl value,
          $Res Function(_$AttachmentEventDeleteFileItemImpl) then) =
      __$$AttachmentEventDeleteFileItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FileItem fileItem});

  $FileItemCopyWith<$Res> get fileItem;
}

/// @nodoc
class __$$AttachmentEventDeleteFileItemImplCopyWithImpl<$Res>
    extends _$AttachmentEventCopyWithImpl<$Res,
        _$AttachmentEventDeleteFileItemImpl>
    implements _$$AttachmentEventDeleteFileItemImplCopyWith<$Res> {
  __$$AttachmentEventDeleteFileItemImplCopyWithImpl(
      _$AttachmentEventDeleteFileItemImpl _value,
      $Res Function(_$AttachmentEventDeleteFileItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileItem = null,
  }) {
    return _then(_$AttachmentEventDeleteFileItemImpl(
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

class _$AttachmentEventDeleteFileItemImpl
    implements AttachmentEventDeleteFileItem {
  const _$AttachmentEventDeleteFileItemImpl({required this.fileItem});

  @override
  final FileItem fileItem;

  @override
  String toString() {
    return 'AttachmentEvent.deleteFileItem(fileItem: $fileItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentEventDeleteFileItemImpl &&
            (identical(other.fileItem, fileItem) ||
                other.fileItem == fileItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentEventDeleteFileItemImplCopyWith<
          _$AttachmentEventDeleteFileItemImpl>
      get copyWith => __$$AttachmentEventDeleteFileItemImplCopyWithImpl<
          _$AttachmentEventDeleteFileItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String folderId) load,
    required TResult Function() goBack,
    required TResult Function(String id, String name) changeFileItemName,
    required TResult Function(String id) download,
    required TResult Function(FileItem fileItem, Uint8List? data) addFile,
    required TResult Function(FileItem fileItem) deleteFileItem,
  }) {
    return deleteFileItem(fileItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String folderId)? load,
    TResult? Function()? goBack,
    TResult? Function(String id, String name)? changeFileItemName,
    TResult? Function(String id)? download,
    TResult? Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult? Function(FileItem fileItem)? deleteFileItem,
  }) {
    return deleteFileItem?.call(fileItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String folderId)? load,
    TResult Function()? goBack,
    TResult Function(String id, String name)? changeFileItemName,
    TResult Function(String id)? download,
    TResult Function(FileItem fileItem, Uint8List? data)? addFile,
    TResult Function(FileItem fileItem)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (deleteFileItem != null) {
      return deleteFileItem(fileItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentEventLoad value) load,
    required TResult Function(AttachmentEventGoBack value) goBack,
    required TResult Function(AttachmentEventChangeFileItemName value)
        changeFileItemName,
    required TResult Function(AttachmentEventDownload value) download,
    required TResult Function(AttachmentEventAddFile value) addFile,
    required TResult Function(AttachmentEventDeleteFileItem value)
        deleteFileItem,
  }) {
    return deleteFileItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentEventLoad value)? load,
    TResult? Function(AttachmentEventGoBack value)? goBack,
    TResult? Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult? Function(AttachmentEventDownload value)? download,
    TResult? Function(AttachmentEventAddFile value)? addFile,
    TResult? Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
  }) {
    return deleteFileItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentEventLoad value)? load,
    TResult Function(AttachmentEventGoBack value)? goBack,
    TResult Function(AttachmentEventChangeFileItemName value)?
        changeFileItemName,
    TResult Function(AttachmentEventDownload value)? download,
    TResult Function(AttachmentEventAddFile value)? addFile,
    TResult Function(AttachmentEventDeleteFileItem value)? deleteFileItem,
    required TResult orElse(),
  }) {
    if (deleteFileItem != null) {
      return deleteFileItem(this);
    }
    return orElse();
  }
}

abstract class AttachmentEventDeleteFileItem implements AttachmentEvent {
  const factory AttachmentEventDeleteFileItem(
      {required final FileItem fileItem}) = _$AttachmentEventDeleteFileItemImpl;

  FileItem get fileItem;
  @JsonKey(ignore: true)
  _$$AttachmentEventDeleteFileItemImplCopyWith<
          _$AttachmentEventDeleteFileItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttachmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String folderId) loading,
    required TResult Function(String folderId, List<FileItem> filesItem) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String folderId)? loading,
    TResult? Function(String folderId, List<FileItem> filesItem)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String folderId)? loading,
    TResult Function(String folderId, List<FileItem> filesItem)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentStateInit value) init,
    required TResult Function(AttachmentStateLoading value) loading,
    required TResult Function(AttachmentStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentStateInit value)? init,
    TResult? Function(AttachmentStateLoading value)? loading,
    TResult? Function(AttachmentStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentStateInit value)? init,
    TResult Function(AttachmentStateLoading value)? loading,
    TResult Function(AttachmentStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentStateCopyWith<$Res> {
  factory $AttachmentStateCopyWith(
          AttachmentState value, $Res Function(AttachmentState) then) =
      _$AttachmentStateCopyWithImpl<$Res, AttachmentState>;
}

/// @nodoc
class _$AttachmentStateCopyWithImpl<$Res, $Val extends AttachmentState>
    implements $AttachmentStateCopyWith<$Res> {
  _$AttachmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AttachmentStateInitImplCopyWith<$Res> {
  factory _$$AttachmentStateInitImplCopyWith(_$AttachmentStateInitImpl value,
          $Res Function(_$AttachmentStateInitImpl) then) =
      __$$AttachmentStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttachmentStateInitImplCopyWithImpl<$Res>
    extends _$AttachmentStateCopyWithImpl<$Res, _$AttachmentStateInitImpl>
    implements _$$AttachmentStateInitImplCopyWith<$Res> {
  __$$AttachmentStateInitImplCopyWithImpl(_$AttachmentStateInitImpl _value,
      $Res Function(_$AttachmentStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AttachmentStateInitImpl implements AttachmentStateInit {
  const _$AttachmentStateInitImpl();

  @override
  String toString() {
    return 'AttachmentState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String folderId) loading,
    required TResult Function(String folderId, List<FileItem> filesItem) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String folderId)? loading,
    TResult? Function(String folderId, List<FileItem> filesItem)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String folderId)? loading,
    TResult Function(String folderId, List<FileItem> filesItem)? loaded,
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
    required TResult Function(AttachmentStateInit value) init,
    required TResult Function(AttachmentStateLoading value) loading,
    required TResult Function(AttachmentStateLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentStateInit value)? init,
    TResult? Function(AttachmentStateLoading value)? loading,
    TResult? Function(AttachmentStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentStateInit value)? init,
    TResult Function(AttachmentStateLoading value)? loading,
    TResult Function(AttachmentStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AttachmentStateInit implements AttachmentState {
  const factory AttachmentStateInit() = _$AttachmentStateInitImpl;
}

/// @nodoc
abstract class _$$AttachmentStateLoadingImplCopyWith<$Res> {
  factory _$$AttachmentStateLoadingImplCopyWith(
          _$AttachmentStateLoadingImpl value,
          $Res Function(_$AttachmentStateLoadingImpl) then) =
      __$$AttachmentStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String folderId});
}

/// @nodoc
class __$$AttachmentStateLoadingImplCopyWithImpl<$Res>
    extends _$AttachmentStateCopyWithImpl<$Res, _$AttachmentStateLoadingImpl>
    implements _$$AttachmentStateLoadingImplCopyWith<$Res> {
  __$$AttachmentStateLoadingImplCopyWithImpl(
      _$AttachmentStateLoadingImpl _value,
      $Res Function(_$AttachmentStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
  }) {
    return _then(_$AttachmentStateLoadingImpl(
      folderId: null == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AttachmentStateLoadingImpl implements AttachmentStateLoading {
  const _$AttachmentStateLoadingImpl({required this.folderId});

  @override
  final String folderId;

  @override
  String toString() {
    return 'AttachmentState.loading(folderId: $folderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentStateLoadingImpl &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, folderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentStateLoadingImplCopyWith<_$AttachmentStateLoadingImpl>
      get copyWith => __$$AttachmentStateLoadingImplCopyWithImpl<
          _$AttachmentStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String folderId) loading,
    required TResult Function(String folderId, List<FileItem> filesItem) loaded,
  }) {
    return loading(folderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String folderId)? loading,
    TResult? Function(String folderId, List<FileItem> filesItem)? loaded,
  }) {
    return loading?.call(folderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String folderId)? loading,
    TResult Function(String folderId, List<FileItem> filesItem)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(folderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentStateInit value) init,
    required TResult Function(AttachmentStateLoading value) loading,
    required TResult Function(AttachmentStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentStateInit value)? init,
    TResult? Function(AttachmentStateLoading value)? loading,
    TResult? Function(AttachmentStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentStateInit value)? init,
    TResult Function(AttachmentStateLoading value)? loading,
    TResult Function(AttachmentStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AttachmentStateLoading implements AttachmentState {
  const factory AttachmentStateLoading({required final String folderId}) =
      _$AttachmentStateLoadingImpl;

  String get folderId;
  @JsonKey(ignore: true)
  _$$AttachmentStateLoadingImplCopyWith<_$AttachmentStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttachmentStateLoadedImplCopyWith<$Res> {
  factory _$$AttachmentStateLoadedImplCopyWith(
          _$AttachmentStateLoadedImpl value,
          $Res Function(_$AttachmentStateLoadedImpl) then) =
      __$$AttachmentStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String folderId, List<FileItem> filesItem});
}

/// @nodoc
class __$$AttachmentStateLoadedImplCopyWithImpl<$Res>
    extends _$AttachmentStateCopyWithImpl<$Res, _$AttachmentStateLoadedImpl>
    implements _$$AttachmentStateLoadedImplCopyWith<$Res> {
  __$$AttachmentStateLoadedImplCopyWithImpl(_$AttachmentStateLoadedImpl _value,
      $Res Function(_$AttachmentStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
    Object? filesItem = null,
  }) {
    return _then(_$AttachmentStateLoadedImpl(
      folderId: null == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String,
      filesItem: null == filesItem
          ? _value._filesItem
          : filesItem // ignore: cast_nullable_to_non_nullable
              as List<FileItem>,
    ));
  }
}

/// @nodoc

class _$AttachmentStateLoadedImpl implements AttachmentStateLoaded {
  const _$AttachmentStateLoadedImpl(
      {required this.folderId, required final List<FileItem> filesItem})
      : _filesItem = filesItem;

  @override
  final String folderId;
  final List<FileItem> _filesItem;
  @override
  List<FileItem> get filesItem {
    if (_filesItem is EqualUnmodifiableListView) return _filesItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filesItem);
  }

  @override
  String toString() {
    return 'AttachmentState.loaded(folderId: $folderId, filesItem: $filesItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentStateLoadedImpl &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            const DeepCollectionEquality()
                .equals(other._filesItem, _filesItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, folderId, const DeepCollectionEquality().hash(_filesItem));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentStateLoadedImplCopyWith<_$AttachmentStateLoadedImpl>
      get copyWith => __$$AttachmentStateLoadedImplCopyWithImpl<
          _$AttachmentStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String folderId) loading,
    required TResult Function(String folderId, List<FileItem> filesItem) loaded,
  }) {
    return loaded(folderId, filesItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String folderId)? loading,
    TResult? Function(String folderId, List<FileItem> filesItem)? loaded,
  }) {
    return loaded?.call(folderId, filesItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String folderId)? loading,
    TResult Function(String folderId, List<FileItem> filesItem)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(folderId, filesItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttachmentStateInit value) init,
    required TResult Function(AttachmentStateLoading value) loading,
    required TResult Function(AttachmentStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttachmentStateInit value)? init,
    TResult? Function(AttachmentStateLoading value)? loading,
    TResult? Function(AttachmentStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttachmentStateInit value)? init,
    TResult Function(AttachmentStateLoading value)? loading,
    TResult Function(AttachmentStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AttachmentStateLoaded implements AttachmentState {
  const factory AttachmentStateLoaded(
      {required final String folderId,
      required final List<FileItem> filesItem}) = _$AttachmentStateLoadedImpl;

  String get folderId;
  List<FileItem> get filesItem;
  @JsonKey(ignore: true)
  _$$AttachmentStateLoadedImplCopyWith<_$AttachmentStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
