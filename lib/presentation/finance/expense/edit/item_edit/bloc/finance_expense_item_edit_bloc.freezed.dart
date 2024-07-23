// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_expense_item_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinanceExpenseItemEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseItem? item) load,
    required TResult Function(String productService) changeProductService,
    required TResult Function(String description) changeDescription,
    required TResult Function(double qtyHrs) changeQtyHrs,
    required TResult Function(double rate) changeRate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseItem? item)? load,
    TResult? Function(String productService)? changeProductService,
    TResult? Function(String description)? changeDescription,
    TResult? Function(double qtyHrs)? changeQtyHrs,
    TResult? Function(double rate)? changeRate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseItem? item)? load,
    TResult Function(String productService)? changeProductService,
    TResult Function(String description)? changeDescription,
    TResult Function(double qtyHrs)? changeQtyHrs,
    TResult Function(double rate)? changeRate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseItemEditEventLoad value) load,
    required TResult Function(
            FinanceExpenseItemEditEventChangeProductService value)
        changeProductService,
    required TResult Function(
            FinanceExpenseItemEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)
        changeQtyHrs,
    required TResult Function(FinanceExpenseItemEditEventChangeRate value)
        changeRate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult? Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult? Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult? Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceExpenseItemEditEventCopyWith<$Res> {
  factory $FinanceExpenseItemEditEventCopyWith(
          FinanceExpenseItemEditEvent value,
          $Res Function(FinanceExpenseItemEditEvent) then) =
      _$FinanceExpenseItemEditEventCopyWithImpl<$Res,
          FinanceExpenseItemEditEvent>;
}

/// @nodoc
class _$FinanceExpenseItemEditEventCopyWithImpl<$Res,
        $Val extends FinanceExpenseItemEditEvent>
    implements $FinanceExpenseItemEditEventCopyWith<$Res> {
  _$FinanceExpenseItemEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceExpenseItemEditEventLoadImplCopyWith<$Res> {
  factory _$$FinanceExpenseItemEditEventLoadImplCopyWith(
          _$FinanceExpenseItemEditEventLoadImpl value,
          $Res Function(_$FinanceExpenseItemEditEventLoadImpl) then) =
      __$$FinanceExpenseItemEditEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseItem? item});

  $ExpenseItemCopyWith<$Res>? get item;
}

/// @nodoc
class __$$FinanceExpenseItemEditEventLoadImplCopyWithImpl<$Res>
    extends _$FinanceExpenseItemEditEventCopyWithImpl<$Res,
        _$FinanceExpenseItemEditEventLoadImpl>
    implements _$$FinanceExpenseItemEditEventLoadImplCopyWith<$Res> {
  __$$FinanceExpenseItemEditEventLoadImplCopyWithImpl(
      _$FinanceExpenseItemEditEventLoadImpl _value,
      $Res Function(_$FinanceExpenseItemEditEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$FinanceExpenseItemEditEventLoadImpl(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ExpenseItem?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseItemCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ExpenseItemCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$FinanceExpenseItemEditEventLoadImpl
    implements FinanceExpenseItemEditEventLoad {
  const _$FinanceExpenseItemEditEventLoadImpl({this.item});

  @override
  final ExpenseItem? item;

  @override
  String toString() {
    return 'FinanceExpenseItemEditEvent.load(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseItemEditEventLoadImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseItemEditEventLoadImplCopyWith<
          _$FinanceExpenseItemEditEventLoadImpl>
      get copyWith => __$$FinanceExpenseItemEditEventLoadImplCopyWithImpl<
          _$FinanceExpenseItemEditEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseItem? item) load,
    required TResult Function(String productService) changeProductService,
    required TResult Function(String description) changeDescription,
    required TResult Function(double qtyHrs) changeQtyHrs,
    required TResult Function(double rate) changeRate,
  }) {
    return load(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseItem? item)? load,
    TResult? Function(String productService)? changeProductService,
    TResult? Function(String description)? changeDescription,
    TResult? Function(double qtyHrs)? changeQtyHrs,
    TResult? Function(double rate)? changeRate,
  }) {
    return load?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseItem? item)? load,
    TResult Function(String productService)? changeProductService,
    TResult Function(String description)? changeDescription,
    TResult Function(double qtyHrs)? changeQtyHrs,
    TResult Function(double rate)? changeRate,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseItemEditEventLoad value) load,
    required TResult Function(
            FinanceExpenseItemEditEventChangeProductService value)
        changeProductService,
    required TResult Function(
            FinanceExpenseItemEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)
        changeQtyHrs,
    required TResult Function(FinanceExpenseItemEditEventChangeRate value)
        changeRate,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult? Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult? Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult? Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseItemEditEventLoad
    implements FinanceExpenseItemEditEvent {
  const factory FinanceExpenseItemEditEventLoad({final ExpenseItem? item}) =
      _$FinanceExpenseItemEditEventLoadImpl;

  ExpenseItem? get item;
  @JsonKey(ignore: true)
  _$$FinanceExpenseItemEditEventLoadImplCopyWith<
          _$FinanceExpenseItemEditEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseItemEditEventChangeProductServiceImplCopyWith<
    $Res> {
  factory _$$FinanceExpenseItemEditEventChangeProductServiceImplCopyWith(
          _$FinanceExpenseItemEditEventChangeProductServiceImpl value,
          $Res Function(_$FinanceExpenseItemEditEventChangeProductServiceImpl)
              then) =
      __$$FinanceExpenseItemEditEventChangeProductServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productService});
}

/// @nodoc
class __$$FinanceExpenseItemEditEventChangeProductServiceImplCopyWithImpl<$Res>
    extends _$FinanceExpenseItemEditEventCopyWithImpl<$Res,
        _$FinanceExpenseItemEditEventChangeProductServiceImpl>
    implements
        _$$FinanceExpenseItemEditEventChangeProductServiceImplCopyWith<$Res> {
  __$$FinanceExpenseItemEditEventChangeProductServiceImplCopyWithImpl(
      _$FinanceExpenseItemEditEventChangeProductServiceImpl _value,
      $Res Function(_$FinanceExpenseItemEditEventChangeProductServiceImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productService = null,
  }) {
    return _then(_$FinanceExpenseItemEditEventChangeProductServiceImpl(
      productService: null == productService
          ? _value.productService
          : productService // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseItemEditEventChangeProductServiceImpl
    implements FinanceExpenseItemEditEventChangeProductService {
  const _$FinanceExpenseItemEditEventChangeProductServiceImpl(
      {required this.productService});

  @override
  final String productService;

  @override
  String toString() {
    return 'FinanceExpenseItemEditEvent.changeProductService(productService: $productService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseItemEditEventChangeProductServiceImpl &&
            (identical(other.productService, productService) ||
                other.productService == productService));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productService);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseItemEditEventChangeProductServiceImplCopyWith<
          _$FinanceExpenseItemEditEventChangeProductServiceImpl>
      get copyWith =>
          __$$FinanceExpenseItemEditEventChangeProductServiceImplCopyWithImpl<
                  _$FinanceExpenseItemEditEventChangeProductServiceImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseItem? item) load,
    required TResult Function(String productService) changeProductService,
    required TResult Function(String description) changeDescription,
    required TResult Function(double qtyHrs) changeQtyHrs,
    required TResult Function(double rate) changeRate,
  }) {
    return changeProductService(productService);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseItem? item)? load,
    TResult? Function(String productService)? changeProductService,
    TResult? Function(String description)? changeDescription,
    TResult? Function(double qtyHrs)? changeQtyHrs,
    TResult? Function(double rate)? changeRate,
  }) {
    return changeProductService?.call(productService);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseItem? item)? load,
    TResult Function(String productService)? changeProductService,
    TResult Function(String description)? changeDescription,
    TResult Function(double qtyHrs)? changeQtyHrs,
    TResult Function(double rate)? changeRate,
    required TResult orElse(),
  }) {
    if (changeProductService != null) {
      return changeProductService(productService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseItemEditEventLoad value) load,
    required TResult Function(
            FinanceExpenseItemEditEventChangeProductService value)
        changeProductService,
    required TResult Function(
            FinanceExpenseItemEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)
        changeQtyHrs,
    required TResult Function(FinanceExpenseItemEditEventChangeRate value)
        changeRate,
  }) {
    return changeProductService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult? Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult? Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult? Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
  }) {
    return changeProductService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
    required TResult orElse(),
  }) {
    if (changeProductService != null) {
      return changeProductService(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseItemEditEventChangeProductService
    implements FinanceExpenseItemEditEvent {
  const factory FinanceExpenseItemEditEventChangeProductService(
          {required final String productService}) =
      _$FinanceExpenseItemEditEventChangeProductServiceImpl;

  String get productService;
  @JsonKey(ignore: true)
  _$$FinanceExpenseItemEditEventChangeProductServiceImplCopyWith<
          _$FinanceExpenseItemEditEventChangeProductServiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseItemEditEventChangeDescriptionImplCopyWith<
    $Res> {
  factory _$$FinanceExpenseItemEditEventChangeDescriptionImplCopyWith(
          _$FinanceExpenseItemEditEventChangeDescriptionImpl value,
          $Res Function(_$FinanceExpenseItemEditEventChangeDescriptionImpl)
              then) =
      __$$FinanceExpenseItemEditEventChangeDescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$FinanceExpenseItemEditEventChangeDescriptionImplCopyWithImpl<$Res>
    extends _$FinanceExpenseItemEditEventCopyWithImpl<$Res,
        _$FinanceExpenseItemEditEventChangeDescriptionImpl>
    implements
        _$$FinanceExpenseItemEditEventChangeDescriptionImplCopyWith<$Res> {
  __$$FinanceExpenseItemEditEventChangeDescriptionImplCopyWithImpl(
      _$FinanceExpenseItemEditEventChangeDescriptionImpl _value,
      $Res Function(_$FinanceExpenseItemEditEventChangeDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$FinanceExpenseItemEditEventChangeDescriptionImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseItemEditEventChangeDescriptionImpl
    implements FinanceExpenseItemEditEventChangeDescription {
  const _$FinanceExpenseItemEditEventChangeDescriptionImpl(
      {required this.description});

  @override
  final String description;

  @override
  String toString() {
    return 'FinanceExpenseItemEditEvent.changeDescription(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseItemEditEventChangeDescriptionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseItemEditEventChangeDescriptionImplCopyWith<
          _$FinanceExpenseItemEditEventChangeDescriptionImpl>
      get copyWith =>
          __$$FinanceExpenseItemEditEventChangeDescriptionImplCopyWithImpl<
                  _$FinanceExpenseItemEditEventChangeDescriptionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseItem? item) load,
    required TResult Function(String productService) changeProductService,
    required TResult Function(String description) changeDescription,
    required TResult Function(double qtyHrs) changeQtyHrs,
    required TResult Function(double rate) changeRate,
  }) {
    return changeDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseItem? item)? load,
    TResult? Function(String productService)? changeProductService,
    TResult? Function(String description)? changeDescription,
    TResult? Function(double qtyHrs)? changeQtyHrs,
    TResult? Function(double rate)? changeRate,
  }) {
    return changeDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseItem? item)? load,
    TResult Function(String productService)? changeProductService,
    TResult Function(String description)? changeDescription,
    TResult Function(double qtyHrs)? changeQtyHrs,
    TResult Function(double rate)? changeRate,
    required TResult orElse(),
  }) {
    if (changeDescription != null) {
      return changeDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseItemEditEventLoad value) load,
    required TResult Function(
            FinanceExpenseItemEditEventChangeProductService value)
        changeProductService,
    required TResult Function(
            FinanceExpenseItemEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)
        changeQtyHrs,
    required TResult Function(FinanceExpenseItemEditEventChangeRate value)
        changeRate,
  }) {
    return changeDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult? Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult? Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult? Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
  }) {
    return changeDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
    required TResult orElse(),
  }) {
    if (changeDescription != null) {
      return changeDescription(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseItemEditEventChangeDescription
    implements FinanceExpenseItemEditEvent {
  const factory FinanceExpenseItemEditEventChangeDescription(
          {required final String description}) =
      _$FinanceExpenseItemEditEventChangeDescriptionImpl;

  String get description;
  @JsonKey(ignore: true)
  _$$FinanceExpenseItemEditEventChangeDescriptionImplCopyWith<
          _$FinanceExpenseItemEditEventChangeDescriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseItemEditEventChangeQtyHrsImplCopyWith<$Res> {
  factory _$$FinanceExpenseItemEditEventChangeQtyHrsImplCopyWith(
          _$FinanceExpenseItemEditEventChangeQtyHrsImpl value,
          $Res Function(_$FinanceExpenseItemEditEventChangeQtyHrsImpl) then) =
      __$$FinanceExpenseItemEditEventChangeQtyHrsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double qtyHrs});
}

/// @nodoc
class __$$FinanceExpenseItemEditEventChangeQtyHrsImplCopyWithImpl<$Res>
    extends _$FinanceExpenseItemEditEventCopyWithImpl<$Res,
        _$FinanceExpenseItemEditEventChangeQtyHrsImpl>
    implements _$$FinanceExpenseItemEditEventChangeQtyHrsImplCopyWith<$Res> {
  __$$FinanceExpenseItemEditEventChangeQtyHrsImplCopyWithImpl(
      _$FinanceExpenseItemEditEventChangeQtyHrsImpl _value,
      $Res Function(_$FinanceExpenseItemEditEventChangeQtyHrsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qtyHrs = null,
  }) {
    return _then(_$FinanceExpenseItemEditEventChangeQtyHrsImpl(
      qtyHrs: null == qtyHrs
          ? _value.qtyHrs
          : qtyHrs // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseItemEditEventChangeQtyHrsImpl
    implements FinanceExpenseItemEditEventChangeQtyHrs {
  const _$FinanceExpenseItemEditEventChangeQtyHrsImpl({required this.qtyHrs});

  @override
  final double qtyHrs;

  @override
  String toString() {
    return 'FinanceExpenseItemEditEvent.changeQtyHrs(qtyHrs: $qtyHrs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseItemEditEventChangeQtyHrsImpl &&
            (identical(other.qtyHrs, qtyHrs) || other.qtyHrs == qtyHrs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qtyHrs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseItemEditEventChangeQtyHrsImplCopyWith<
          _$FinanceExpenseItemEditEventChangeQtyHrsImpl>
      get copyWith =>
          __$$FinanceExpenseItemEditEventChangeQtyHrsImplCopyWithImpl<
              _$FinanceExpenseItemEditEventChangeQtyHrsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseItem? item) load,
    required TResult Function(String productService) changeProductService,
    required TResult Function(String description) changeDescription,
    required TResult Function(double qtyHrs) changeQtyHrs,
    required TResult Function(double rate) changeRate,
  }) {
    return changeQtyHrs(qtyHrs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseItem? item)? load,
    TResult? Function(String productService)? changeProductService,
    TResult? Function(String description)? changeDescription,
    TResult? Function(double qtyHrs)? changeQtyHrs,
    TResult? Function(double rate)? changeRate,
  }) {
    return changeQtyHrs?.call(qtyHrs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseItem? item)? load,
    TResult Function(String productService)? changeProductService,
    TResult Function(String description)? changeDescription,
    TResult Function(double qtyHrs)? changeQtyHrs,
    TResult Function(double rate)? changeRate,
    required TResult orElse(),
  }) {
    if (changeQtyHrs != null) {
      return changeQtyHrs(qtyHrs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseItemEditEventLoad value) load,
    required TResult Function(
            FinanceExpenseItemEditEventChangeProductService value)
        changeProductService,
    required TResult Function(
            FinanceExpenseItemEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)
        changeQtyHrs,
    required TResult Function(FinanceExpenseItemEditEventChangeRate value)
        changeRate,
  }) {
    return changeQtyHrs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult? Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult? Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult? Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
  }) {
    return changeQtyHrs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
    required TResult orElse(),
  }) {
    if (changeQtyHrs != null) {
      return changeQtyHrs(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseItemEditEventChangeQtyHrs
    implements FinanceExpenseItemEditEvent {
  const factory FinanceExpenseItemEditEventChangeQtyHrs(
          {required final double qtyHrs}) =
      _$FinanceExpenseItemEditEventChangeQtyHrsImpl;

  double get qtyHrs;
  @JsonKey(ignore: true)
  _$$FinanceExpenseItemEditEventChangeQtyHrsImplCopyWith<
          _$FinanceExpenseItemEditEventChangeQtyHrsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseItemEditEventChangeRateImplCopyWith<$Res> {
  factory _$$FinanceExpenseItemEditEventChangeRateImplCopyWith(
          _$FinanceExpenseItemEditEventChangeRateImpl value,
          $Res Function(_$FinanceExpenseItemEditEventChangeRateImpl) then) =
      __$$FinanceExpenseItemEditEventChangeRateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double rate});
}

/// @nodoc
class __$$FinanceExpenseItemEditEventChangeRateImplCopyWithImpl<$Res>
    extends _$FinanceExpenseItemEditEventCopyWithImpl<$Res,
        _$FinanceExpenseItemEditEventChangeRateImpl>
    implements _$$FinanceExpenseItemEditEventChangeRateImplCopyWith<$Res> {
  __$$FinanceExpenseItemEditEventChangeRateImplCopyWithImpl(
      _$FinanceExpenseItemEditEventChangeRateImpl _value,
      $Res Function(_$FinanceExpenseItemEditEventChangeRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
  }) {
    return _then(_$FinanceExpenseItemEditEventChangeRateImpl(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseItemEditEventChangeRateImpl
    implements FinanceExpenseItemEditEventChangeRate {
  const _$FinanceExpenseItemEditEventChangeRateImpl({required this.rate});

  @override
  final double rate;

  @override
  String toString() {
    return 'FinanceExpenseItemEditEvent.changeRate(rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseItemEditEventChangeRateImpl &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseItemEditEventChangeRateImplCopyWith<
          _$FinanceExpenseItemEditEventChangeRateImpl>
      get copyWith => __$$FinanceExpenseItemEditEventChangeRateImplCopyWithImpl<
          _$FinanceExpenseItemEditEventChangeRateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseItem? item) load,
    required TResult Function(String productService) changeProductService,
    required TResult Function(String description) changeDescription,
    required TResult Function(double qtyHrs) changeQtyHrs,
    required TResult Function(double rate) changeRate,
  }) {
    return changeRate(rate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseItem? item)? load,
    TResult? Function(String productService)? changeProductService,
    TResult? Function(String description)? changeDescription,
    TResult? Function(double qtyHrs)? changeQtyHrs,
    TResult? Function(double rate)? changeRate,
  }) {
    return changeRate?.call(rate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseItem? item)? load,
    TResult Function(String productService)? changeProductService,
    TResult Function(String description)? changeDescription,
    TResult Function(double qtyHrs)? changeQtyHrs,
    TResult Function(double rate)? changeRate,
    required TResult orElse(),
  }) {
    if (changeRate != null) {
      return changeRate(rate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseItemEditEventLoad value) load,
    required TResult Function(
            FinanceExpenseItemEditEventChangeProductService value)
        changeProductService,
    required TResult Function(
            FinanceExpenseItemEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)
        changeQtyHrs,
    required TResult Function(FinanceExpenseItemEditEventChangeRate value)
        changeRate,
  }) {
    return changeRate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult? Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult? Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult? Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
  }) {
    return changeRate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseItemEditEventLoad value)? load,
    TResult Function(FinanceExpenseItemEditEventChangeProductService value)?
        changeProductService,
    TResult Function(FinanceExpenseItemEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseItemEditEventChangeQtyHrs value)?
        changeQtyHrs,
    TResult Function(FinanceExpenseItemEditEventChangeRate value)? changeRate,
    required TResult orElse(),
  }) {
    if (changeRate != null) {
      return changeRate(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseItemEditEventChangeRate
    implements FinanceExpenseItemEditEvent {
  const factory FinanceExpenseItemEditEventChangeRate(
          {required final double rate}) =
      _$FinanceExpenseItemEditEventChangeRateImpl;

  double get rate;
  @JsonKey(ignore: true)
  _$$FinanceExpenseItemEditEventChangeRateImplCopyWith<
          _$FinanceExpenseItemEditEventChangeRateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FinanceExpenseItemEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(ExpenseItem item) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(ExpenseItem item)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(ExpenseItem item)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseItemEditStateInit value) init,
    required TResult Function(FinanceExpenseItemEditStateLoading value) loading,
    required TResult Function(FinanceExpenseItemEditStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseItemEditStateInit value)? init,
    TResult? Function(FinanceExpenseItemEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseItemEditStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseItemEditStateInit value)? init,
    TResult Function(FinanceExpenseItemEditStateLoading value)? loading,
    TResult Function(FinanceExpenseItemEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceExpenseItemEditStateCopyWith<$Res> {
  factory $FinanceExpenseItemEditStateCopyWith(
          FinanceExpenseItemEditState value,
          $Res Function(FinanceExpenseItemEditState) then) =
      _$FinanceExpenseItemEditStateCopyWithImpl<$Res,
          FinanceExpenseItemEditState>;
}

/// @nodoc
class _$FinanceExpenseItemEditStateCopyWithImpl<$Res,
        $Val extends FinanceExpenseItemEditState>
    implements $FinanceExpenseItemEditStateCopyWith<$Res> {
  _$FinanceExpenseItemEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceExpenseItemEditStateInitImplCopyWith<$Res> {
  factory _$$FinanceExpenseItemEditStateInitImplCopyWith(
          _$FinanceExpenseItemEditStateInitImpl value,
          $Res Function(_$FinanceExpenseItemEditStateInitImpl) then) =
      __$$FinanceExpenseItemEditStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceExpenseItemEditStateInitImplCopyWithImpl<$Res>
    extends _$FinanceExpenseItemEditStateCopyWithImpl<$Res,
        _$FinanceExpenseItemEditStateInitImpl>
    implements _$$FinanceExpenseItemEditStateInitImplCopyWith<$Res> {
  __$$FinanceExpenseItemEditStateInitImplCopyWithImpl(
      _$FinanceExpenseItemEditStateInitImpl _value,
      $Res Function(_$FinanceExpenseItemEditStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceExpenseItemEditStateInitImpl
    implements FinanceExpenseItemEditStateInit {
  const _$FinanceExpenseItemEditStateInitImpl();

  @override
  String toString() {
    return 'FinanceExpenseItemEditState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseItemEditStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(ExpenseItem item) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(ExpenseItem item)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(ExpenseItem item)? loaded,
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
    required TResult Function(FinanceExpenseItemEditStateInit value) init,
    required TResult Function(FinanceExpenseItemEditStateLoading value) loading,
    required TResult Function(FinanceExpenseItemEditStateLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseItemEditStateInit value)? init,
    TResult? Function(FinanceExpenseItemEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseItemEditStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseItemEditStateInit value)? init,
    TResult Function(FinanceExpenseItemEditStateLoading value)? loading,
    TResult Function(FinanceExpenseItemEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseItemEditStateInit
    implements FinanceExpenseItemEditState {
  const factory FinanceExpenseItemEditStateInit() =
      _$FinanceExpenseItemEditStateInitImpl;
}

/// @nodoc
abstract class _$$FinanceExpenseItemEditStateLoadingImplCopyWith<$Res> {
  factory _$$FinanceExpenseItemEditStateLoadingImplCopyWith(
          _$FinanceExpenseItemEditStateLoadingImpl value,
          $Res Function(_$FinanceExpenseItemEditStateLoadingImpl) then) =
      __$$FinanceExpenseItemEditStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceExpenseItemEditStateLoadingImplCopyWithImpl<$Res>
    extends _$FinanceExpenseItemEditStateCopyWithImpl<$Res,
        _$FinanceExpenseItemEditStateLoadingImpl>
    implements _$$FinanceExpenseItemEditStateLoadingImplCopyWith<$Res> {
  __$$FinanceExpenseItemEditStateLoadingImplCopyWithImpl(
      _$FinanceExpenseItemEditStateLoadingImpl _value,
      $Res Function(_$FinanceExpenseItemEditStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceExpenseItemEditStateLoadingImpl
    implements FinanceExpenseItemEditStateLoading {
  const _$FinanceExpenseItemEditStateLoadingImpl();

  @override
  String toString() {
    return 'FinanceExpenseItemEditState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseItemEditStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(ExpenseItem item) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(ExpenseItem item)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(ExpenseItem item)? loaded,
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
    required TResult Function(FinanceExpenseItemEditStateInit value) init,
    required TResult Function(FinanceExpenseItemEditStateLoading value) loading,
    required TResult Function(FinanceExpenseItemEditStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseItemEditStateInit value)? init,
    TResult? Function(FinanceExpenseItemEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseItemEditStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseItemEditStateInit value)? init,
    TResult Function(FinanceExpenseItemEditStateLoading value)? loading,
    TResult Function(FinanceExpenseItemEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseItemEditStateLoading
    implements FinanceExpenseItemEditState {
  const factory FinanceExpenseItemEditStateLoading() =
      _$FinanceExpenseItemEditStateLoadingImpl;
}

/// @nodoc
abstract class _$$FinanceExpenseItemEditStateLoadedImplCopyWith<$Res> {
  factory _$$FinanceExpenseItemEditStateLoadedImplCopyWith(
          _$FinanceExpenseItemEditStateLoadedImpl value,
          $Res Function(_$FinanceExpenseItemEditStateLoadedImpl) then) =
      __$$FinanceExpenseItemEditStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseItem item});

  $ExpenseItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$FinanceExpenseItemEditStateLoadedImplCopyWithImpl<$Res>
    extends _$FinanceExpenseItemEditStateCopyWithImpl<$Res,
        _$FinanceExpenseItemEditStateLoadedImpl>
    implements _$$FinanceExpenseItemEditStateLoadedImplCopyWith<$Res> {
  __$$FinanceExpenseItemEditStateLoadedImplCopyWithImpl(
      _$FinanceExpenseItemEditStateLoadedImpl _value,
      $Res Function(_$FinanceExpenseItemEditStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$FinanceExpenseItemEditStateLoadedImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ExpenseItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseItemCopyWith<$Res> get item {
    return $ExpenseItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$FinanceExpenseItemEditStateLoadedImpl
    implements FinanceExpenseItemEditStateLoaded {
  const _$FinanceExpenseItemEditStateLoadedImpl({required this.item});

  @override
  final ExpenseItem item;

  @override
  String toString() {
    return 'FinanceExpenseItemEditState.loaded(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseItemEditStateLoadedImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseItemEditStateLoadedImplCopyWith<
          _$FinanceExpenseItemEditStateLoadedImpl>
      get copyWith => __$$FinanceExpenseItemEditStateLoadedImplCopyWithImpl<
          _$FinanceExpenseItemEditStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(ExpenseItem item) loaded,
  }) {
    return loaded(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(ExpenseItem item)? loaded,
  }) {
    return loaded?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(ExpenseItem item)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseItemEditStateInit value) init,
    required TResult Function(FinanceExpenseItemEditStateLoading value) loading,
    required TResult Function(FinanceExpenseItemEditStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseItemEditStateInit value)? init,
    TResult? Function(FinanceExpenseItemEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseItemEditStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseItemEditStateInit value)? init,
    TResult Function(FinanceExpenseItemEditStateLoading value)? loading,
    TResult Function(FinanceExpenseItemEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseItemEditStateLoaded
    implements FinanceExpenseItemEditState {
  const factory FinanceExpenseItemEditStateLoaded(
          {required final ExpenseItem item}) =
      _$FinanceExpenseItemEditStateLoadedImpl;

  ExpenseItem get item;
  @JsonKey(ignore: true)
  _$$FinanceExpenseItemEditStateLoadedImplCopyWith<
          _$FinanceExpenseItemEditStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
