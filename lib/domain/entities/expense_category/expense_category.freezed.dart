// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseCategory _$ExpenseCategoryFromJson(Map<String, dynamic> json) {
  return _ExpenseCategory.fromJson(json);
}

/// @nodoc
mixin _$ExpenseCategory {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  dynamic get system => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseCategoryCopyWith<ExpenseCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCategoryCopyWith<$Res> {
  factory $ExpenseCategoryCopyWith(
          ExpenseCategory value, $Res Function(ExpenseCategory) then) =
      _$ExpenseCategoryCopyWithImpl<$Res, ExpenseCategory>;
  @useResult
  $Res call({String id, String title, dynamic system});
}

/// @nodoc
class _$ExpenseCategoryCopyWithImpl<$Res, $Val extends ExpenseCategory>
    implements $ExpenseCategoryCopyWith<$Res> {
  _$ExpenseCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? system = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseCategoryImplCopyWith<$Res>
    implements $ExpenseCategoryCopyWith<$Res> {
  factory _$$ExpenseCategoryImplCopyWith(_$ExpenseCategoryImpl value,
          $Res Function(_$ExpenseCategoryImpl) then) =
      __$$ExpenseCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, dynamic system});
}

/// @nodoc
class __$$ExpenseCategoryImplCopyWithImpl<$Res>
    extends _$ExpenseCategoryCopyWithImpl<$Res, _$ExpenseCategoryImpl>
    implements _$$ExpenseCategoryImplCopyWith<$Res> {
  __$$ExpenseCategoryImplCopyWithImpl(
      _$ExpenseCategoryImpl _value, $Res Function(_$ExpenseCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? system = freezed,
  }) {
    return _then(_$ExpenseCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      system: freezed == system ? _value.system! : system,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseCategoryImpl implements _ExpenseCategory {
  _$ExpenseCategoryImpl({this.id = '', this.title = '', this.system = false});

  factory _$ExpenseCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseCategoryImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final dynamic system;

  @override
  String toString() {
    return 'ExpenseCategory(id: $id, title: $title, system: $system)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.system, system));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(system));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseCategoryImplCopyWith<_$ExpenseCategoryImpl> get copyWith =>
      __$$ExpenseCategoryImplCopyWithImpl<_$ExpenseCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseCategoryImplToJson(
      this,
    );
  }
}

abstract class _ExpenseCategory implements ExpenseCategory {
  factory _ExpenseCategory(
      {final String id,
      final String title,
      final dynamic system}) = _$ExpenseCategoryImpl;

  factory _ExpenseCategory.fromJson(Map<String, dynamic> json) =
      _$ExpenseCategoryImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  dynamic get system;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseCategoryImplCopyWith<_$ExpenseCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
