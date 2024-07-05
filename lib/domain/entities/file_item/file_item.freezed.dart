// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileItem _$FileItemFromJson(Map<String, dynamic> json) {
  return _FileItem.fromJson(json);
}

/// @nodoc
mixin _$FileItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @FileExtensionConverter()
  FileExtensionEnums get fileExtension => throw _privateConstructorUsedError;
  dynamic get folderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileItemCopyWith<FileItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileItemCopyWith<$Res> {
  factory $FileItemCopyWith(FileItem value, $Res Function(FileItem) then) =
      _$FileItemCopyWithImpl<$Res, FileItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      @FileExtensionConverter() FileExtensionEnums fileExtension,
      dynamic folderId});
}

/// @nodoc
class _$FileItemCopyWithImpl<$Res, $Val extends FileItem>
    implements $FileItemCopyWith<$Res> {
  _$FileItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fileExtension = null,
    Object? folderId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fileExtension: null == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as FileExtensionEnums,
      folderId: freezed == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileItemImplCopyWith<$Res>
    implements $FileItemCopyWith<$Res> {
  factory _$$FileItemImplCopyWith(
          _$FileItemImpl value, $Res Function(_$FileItemImpl) then) =
      __$$FileItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @FileExtensionConverter() FileExtensionEnums fileExtension,
      dynamic folderId});
}

/// @nodoc
class __$$FileItemImplCopyWithImpl<$Res>
    extends _$FileItemCopyWithImpl<$Res, _$FileItemImpl>
    implements _$$FileItemImplCopyWith<$Res> {
  __$$FileItemImplCopyWithImpl(
      _$FileItemImpl _value, $Res Function(_$FileItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fileExtension = null,
    Object? folderId = freezed,
  }) {
    return _then(_$FileItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fileExtension: null == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as FileExtensionEnums,
      folderId: freezed == folderId ? _value.folderId! : folderId,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileItemImpl implements _FileItem {
  const _$FileItemImpl(
      {this.id = '',
      required this.name,
      @FileExtensionConverter() this.fileExtension = FileExtensionEnums.folder,
      this.folderId = ''});

  factory _$FileItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileItemImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  @FileExtensionConverter()
  final FileExtensionEnums fileExtension;
  @override
  @JsonKey()
  final dynamic folderId;

  @override
  String toString() {
    return 'FileItem(id: $id, name: $name, fileExtension: $fileExtension, folderId: $folderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fileExtension, fileExtension) ||
                other.fileExtension == fileExtension) &&
            const DeepCollectionEquality().equals(other.folderId, folderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, fileExtension,
      const DeepCollectionEquality().hash(folderId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileItemImplCopyWith<_$FileItemImpl> get copyWith =>
      __$$FileItemImplCopyWithImpl<_$FileItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileItemImplToJson(
      this,
    );
  }
}

abstract class _FileItem implements FileItem {
  const factory _FileItem(
      {final String id,
      required final String name,
      @FileExtensionConverter() final FileExtensionEnums fileExtension,
      final dynamic folderId}) = _$FileItemImpl;

  factory _FileItem.fromJson(Map<String, dynamic> json) =
      _$FileItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @FileExtensionConverter()
  FileExtensionEnums get fileExtension;
  @override
  dynamic get folderId;
  @override
  @JsonKey(ignore: true)
  _$$FileItemImplCopyWith<_$FileItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
