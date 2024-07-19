// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_invoice_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinanceInvoiceEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(String clientId) changeClient,
    required TResult Function(List<InvoiceItem> items) addItems,
    required TResult Function(String message) changeCustomerMessage,
    required TResult Function(VoidCallback callback) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(String clientId)? changeClient,
    TResult? Function(List<InvoiceItem> items)? addItems,
    TResult? Function(String message)? changeCustomerMessage,
    TResult? Function(VoidCallback callback)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime date)? changeDate,
    TResult Function(String clientId)? changeClient,
    TResult Function(List<InvoiceItem> items)? addItems,
    TResult Function(String message)? changeCustomerMessage,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditEventLoad value) load,
    required TResult Function(FinanceInvoiceEditEventChangeDate value)
        changeDate,
    required TResult Function(FinanceInvoiceEditEventChangeClient value)
        changeClient,
    required TResult Function(FinanceInvoiceEditEventAddItems value) addItems,
    required TResult Function(
            FinanceInvoiceEditEventChangeCustomerMessage value)
        changeCustomerMessage,
    required TResult Function(FinanceInvoiceEditEventSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditEventLoad value)? load,
    TResult? Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult? Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult? Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult? Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult? Function(FinanceInvoiceEditEventSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditEventLoad value)? load,
    TResult Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult Function(FinanceInvoiceEditEventSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceInvoiceEditEventCopyWith<$Res> {
  factory $FinanceInvoiceEditEventCopyWith(FinanceInvoiceEditEvent value,
          $Res Function(FinanceInvoiceEditEvent) then) =
      _$FinanceInvoiceEditEventCopyWithImpl<$Res, FinanceInvoiceEditEvent>;
}

/// @nodoc
class _$FinanceInvoiceEditEventCopyWithImpl<$Res,
        $Val extends FinanceInvoiceEditEvent>
    implements $FinanceInvoiceEditEventCopyWith<$Res> {
  _$FinanceInvoiceEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditEventLoadImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditEventLoadImplCopyWith(
          _$FinanceInvoiceEditEventLoadImpl value,
          $Res Function(_$FinanceInvoiceEditEventLoadImpl) then) =
      __$$FinanceInvoiceEditEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType crudType});

  $CrudTypeCopyWith<$Res> get crudType;
}

/// @nodoc
class __$$FinanceInvoiceEditEventLoadImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditEventCopyWithImpl<$Res,
        _$FinanceInvoiceEditEventLoadImpl>
    implements _$$FinanceInvoiceEditEventLoadImplCopyWith<$Res> {
  __$$FinanceInvoiceEditEventLoadImplCopyWithImpl(
      _$FinanceInvoiceEditEventLoadImpl _value,
      $Res Function(_$FinanceInvoiceEditEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crudType = null,
  }) {
    return _then(_$FinanceInvoiceEditEventLoadImpl(
      crudType: null == crudType
          ? _value.crudType
          : crudType // ignore: cast_nullable_to_non_nullable
              as CrudType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CrudTypeCopyWith<$Res> get crudType {
    return $CrudTypeCopyWith<$Res>(_value.crudType, (value) {
      return _then(_value.copyWith(crudType: value));
    });
  }
}

/// @nodoc

class _$FinanceInvoiceEditEventLoadImpl implements FinanceInvoiceEditEventLoad {
  const _$FinanceInvoiceEditEventLoadImpl({required this.crudType});

  @override
  final CrudType crudType;

  @override
  String toString() {
    return 'FinanceInvoiceEditEvent.load(crudType: $crudType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditEventLoadImpl &&
            (identical(other.crudType, crudType) ||
                other.crudType == crudType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crudType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditEventLoadImplCopyWith<_$FinanceInvoiceEditEventLoadImpl>
      get copyWith => __$$FinanceInvoiceEditEventLoadImplCopyWithImpl<
          _$FinanceInvoiceEditEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(String clientId) changeClient,
    required TResult Function(List<InvoiceItem> items) addItems,
    required TResult Function(String message) changeCustomerMessage,
    required TResult Function(VoidCallback callback) save,
  }) {
    return load(crudType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(String clientId)? changeClient,
    TResult? Function(List<InvoiceItem> items)? addItems,
    TResult? Function(String message)? changeCustomerMessage,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return load?.call(crudType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime date)? changeDate,
    TResult Function(String clientId)? changeClient,
    TResult Function(List<InvoiceItem> items)? addItems,
    TResult Function(String message)? changeCustomerMessage,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(crudType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditEventLoad value) load,
    required TResult Function(FinanceInvoiceEditEventChangeDate value)
        changeDate,
    required TResult Function(FinanceInvoiceEditEventChangeClient value)
        changeClient,
    required TResult Function(FinanceInvoiceEditEventAddItems value) addItems,
    required TResult Function(
            FinanceInvoiceEditEventChangeCustomerMessage value)
        changeCustomerMessage,
    required TResult Function(FinanceInvoiceEditEventSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditEventLoad value)? load,
    TResult? Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult? Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult? Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult? Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult? Function(FinanceInvoiceEditEventSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditEventLoad value)? load,
    TResult Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult Function(FinanceInvoiceEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditEventLoad implements FinanceInvoiceEditEvent {
  const factory FinanceInvoiceEditEventLoad(
      {required final CrudType crudType}) = _$FinanceInvoiceEditEventLoadImpl;

  CrudType get crudType;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditEventLoadImplCopyWith<_$FinanceInvoiceEditEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditEventChangeDateImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditEventChangeDateImplCopyWith(
          _$FinanceInvoiceEditEventChangeDateImpl value,
          $Res Function(_$FinanceInvoiceEditEventChangeDateImpl) then) =
      __$$FinanceInvoiceEditEventChangeDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$FinanceInvoiceEditEventChangeDateImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditEventCopyWithImpl<$Res,
        _$FinanceInvoiceEditEventChangeDateImpl>
    implements _$$FinanceInvoiceEditEventChangeDateImplCopyWith<$Res> {
  __$$FinanceInvoiceEditEventChangeDateImplCopyWithImpl(
      _$FinanceInvoiceEditEventChangeDateImpl _value,
      $Res Function(_$FinanceInvoiceEditEventChangeDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$FinanceInvoiceEditEventChangeDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FinanceInvoiceEditEventChangeDateImpl
    implements FinanceInvoiceEditEventChangeDate {
  const _$FinanceInvoiceEditEventChangeDateImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'FinanceInvoiceEditEvent.changeDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditEventChangeDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditEventChangeDateImplCopyWith<
          _$FinanceInvoiceEditEventChangeDateImpl>
      get copyWith => __$$FinanceInvoiceEditEventChangeDateImplCopyWithImpl<
          _$FinanceInvoiceEditEventChangeDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(String clientId) changeClient,
    required TResult Function(List<InvoiceItem> items) addItems,
    required TResult Function(String message) changeCustomerMessage,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(String clientId)? changeClient,
    TResult? Function(List<InvoiceItem> items)? addItems,
    TResult? Function(String message)? changeCustomerMessage,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime date)? changeDate,
    TResult Function(String clientId)? changeClient,
    TResult Function(List<InvoiceItem> items)? addItems,
    TResult Function(String message)? changeCustomerMessage,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditEventLoad value) load,
    required TResult Function(FinanceInvoiceEditEventChangeDate value)
        changeDate,
    required TResult Function(FinanceInvoiceEditEventChangeClient value)
        changeClient,
    required TResult Function(FinanceInvoiceEditEventAddItems value) addItems,
    required TResult Function(
            FinanceInvoiceEditEventChangeCustomerMessage value)
        changeCustomerMessage,
    required TResult Function(FinanceInvoiceEditEventSave value) save,
  }) {
    return changeDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditEventLoad value)? load,
    TResult? Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult? Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult? Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult? Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult? Function(FinanceInvoiceEditEventSave value)? save,
  }) {
    return changeDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditEventLoad value)? load,
    TResult Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult Function(FinanceInvoiceEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditEventChangeDate
    implements FinanceInvoiceEditEvent {
  const factory FinanceInvoiceEditEventChangeDate(
      {required final DateTime date}) = _$FinanceInvoiceEditEventChangeDateImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditEventChangeDateImplCopyWith<
          _$FinanceInvoiceEditEventChangeDateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditEventChangeClientImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditEventChangeClientImplCopyWith(
          _$FinanceInvoiceEditEventChangeClientImpl value,
          $Res Function(_$FinanceInvoiceEditEventChangeClientImpl) then) =
      __$$FinanceInvoiceEditEventChangeClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientId});
}

/// @nodoc
class __$$FinanceInvoiceEditEventChangeClientImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditEventCopyWithImpl<$Res,
        _$FinanceInvoiceEditEventChangeClientImpl>
    implements _$$FinanceInvoiceEditEventChangeClientImplCopyWith<$Res> {
  __$$FinanceInvoiceEditEventChangeClientImplCopyWithImpl(
      _$FinanceInvoiceEditEventChangeClientImpl _value,
      $Res Function(_$FinanceInvoiceEditEventChangeClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
  }) {
    return _then(_$FinanceInvoiceEditEventChangeClientImpl(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceInvoiceEditEventChangeClientImpl
    implements FinanceInvoiceEditEventChangeClient {
  const _$FinanceInvoiceEditEventChangeClientImpl({required this.clientId});

  @override
  final String clientId;

  @override
  String toString() {
    return 'FinanceInvoiceEditEvent.changeClient(clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditEventChangeClientImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditEventChangeClientImplCopyWith<
          _$FinanceInvoiceEditEventChangeClientImpl>
      get copyWith => __$$FinanceInvoiceEditEventChangeClientImplCopyWithImpl<
          _$FinanceInvoiceEditEventChangeClientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(String clientId) changeClient,
    required TResult Function(List<InvoiceItem> items) addItems,
    required TResult Function(String message) changeCustomerMessage,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeClient(clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(String clientId)? changeClient,
    TResult? Function(List<InvoiceItem> items)? addItems,
    TResult? Function(String message)? changeCustomerMessage,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeClient?.call(clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime date)? changeDate,
    TResult Function(String clientId)? changeClient,
    TResult Function(List<InvoiceItem> items)? addItems,
    TResult Function(String message)? changeCustomerMessage,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeClient != null) {
      return changeClient(clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditEventLoad value) load,
    required TResult Function(FinanceInvoiceEditEventChangeDate value)
        changeDate,
    required TResult Function(FinanceInvoiceEditEventChangeClient value)
        changeClient,
    required TResult Function(FinanceInvoiceEditEventAddItems value) addItems,
    required TResult Function(
            FinanceInvoiceEditEventChangeCustomerMessage value)
        changeCustomerMessage,
    required TResult Function(FinanceInvoiceEditEventSave value) save,
  }) {
    return changeClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditEventLoad value)? load,
    TResult? Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult? Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult? Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult? Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult? Function(FinanceInvoiceEditEventSave value)? save,
  }) {
    return changeClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditEventLoad value)? load,
    TResult Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult Function(FinanceInvoiceEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeClient != null) {
      return changeClient(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditEventChangeClient
    implements FinanceInvoiceEditEvent {
  const factory FinanceInvoiceEditEventChangeClient(
          {required final String clientId}) =
      _$FinanceInvoiceEditEventChangeClientImpl;

  String get clientId;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditEventChangeClientImplCopyWith<
          _$FinanceInvoiceEditEventChangeClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditEventAddItemsImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditEventAddItemsImplCopyWith(
          _$FinanceInvoiceEditEventAddItemsImpl value,
          $Res Function(_$FinanceInvoiceEditEventAddItemsImpl) then) =
      __$$FinanceInvoiceEditEventAddItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InvoiceItem> items});
}

/// @nodoc
class __$$FinanceInvoiceEditEventAddItemsImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditEventCopyWithImpl<$Res,
        _$FinanceInvoiceEditEventAddItemsImpl>
    implements _$$FinanceInvoiceEditEventAddItemsImplCopyWith<$Res> {
  __$$FinanceInvoiceEditEventAddItemsImplCopyWithImpl(
      _$FinanceInvoiceEditEventAddItemsImpl _value,
      $Res Function(_$FinanceInvoiceEditEventAddItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$FinanceInvoiceEditEventAddItemsImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
    ));
  }
}

/// @nodoc

class _$FinanceInvoiceEditEventAddItemsImpl
    implements FinanceInvoiceEditEventAddItems {
  const _$FinanceInvoiceEditEventAddItemsImpl(
      {required final List<InvoiceItem> items})
      : _items = items;

  final List<InvoiceItem> _items;
  @override
  List<InvoiceItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'FinanceInvoiceEditEvent.addItems(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditEventAddItemsImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditEventAddItemsImplCopyWith<
          _$FinanceInvoiceEditEventAddItemsImpl>
      get copyWith => __$$FinanceInvoiceEditEventAddItemsImplCopyWithImpl<
          _$FinanceInvoiceEditEventAddItemsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(String clientId) changeClient,
    required TResult Function(List<InvoiceItem> items) addItems,
    required TResult Function(String message) changeCustomerMessage,
    required TResult Function(VoidCallback callback) save,
  }) {
    return addItems(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(String clientId)? changeClient,
    TResult? Function(List<InvoiceItem> items)? addItems,
    TResult? Function(String message)? changeCustomerMessage,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return addItems?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime date)? changeDate,
    TResult Function(String clientId)? changeClient,
    TResult Function(List<InvoiceItem> items)? addItems,
    TResult Function(String message)? changeCustomerMessage,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (addItems != null) {
      return addItems(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditEventLoad value) load,
    required TResult Function(FinanceInvoiceEditEventChangeDate value)
        changeDate,
    required TResult Function(FinanceInvoiceEditEventChangeClient value)
        changeClient,
    required TResult Function(FinanceInvoiceEditEventAddItems value) addItems,
    required TResult Function(
            FinanceInvoiceEditEventChangeCustomerMessage value)
        changeCustomerMessage,
    required TResult Function(FinanceInvoiceEditEventSave value) save,
  }) {
    return addItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditEventLoad value)? load,
    TResult? Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult? Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult? Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult? Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult? Function(FinanceInvoiceEditEventSave value)? save,
  }) {
    return addItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditEventLoad value)? load,
    TResult Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult Function(FinanceInvoiceEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (addItems != null) {
      return addItems(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditEventAddItems
    implements FinanceInvoiceEditEvent {
  const factory FinanceInvoiceEditEventAddItems(
          {required final List<InvoiceItem> items}) =
      _$FinanceInvoiceEditEventAddItemsImpl;

  List<InvoiceItem> get items;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditEventAddItemsImplCopyWith<
          _$FinanceInvoiceEditEventAddItemsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditEventChangeCustomerMessageImplCopyWith<
    $Res> {
  factory _$$FinanceInvoiceEditEventChangeCustomerMessageImplCopyWith(
          _$FinanceInvoiceEditEventChangeCustomerMessageImpl value,
          $Res Function(_$FinanceInvoiceEditEventChangeCustomerMessageImpl)
              then) =
      __$$FinanceInvoiceEditEventChangeCustomerMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FinanceInvoiceEditEventChangeCustomerMessageImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditEventCopyWithImpl<$Res,
        _$FinanceInvoiceEditEventChangeCustomerMessageImpl>
    implements
        _$$FinanceInvoiceEditEventChangeCustomerMessageImplCopyWith<$Res> {
  __$$FinanceInvoiceEditEventChangeCustomerMessageImplCopyWithImpl(
      _$FinanceInvoiceEditEventChangeCustomerMessageImpl _value,
      $Res Function(_$FinanceInvoiceEditEventChangeCustomerMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FinanceInvoiceEditEventChangeCustomerMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceInvoiceEditEventChangeCustomerMessageImpl
    implements FinanceInvoiceEditEventChangeCustomerMessage {
  const _$FinanceInvoiceEditEventChangeCustomerMessageImpl(
      {required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FinanceInvoiceEditEvent.changeCustomerMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditEventChangeCustomerMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditEventChangeCustomerMessageImplCopyWith<
          _$FinanceInvoiceEditEventChangeCustomerMessageImpl>
      get copyWith =>
          __$$FinanceInvoiceEditEventChangeCustomerMessageImplCopyWithImpl<
                  _$FinanceInvoiceEditEventChangeCustomerMessageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(String clientId) changeClient,
    required TResult Function(List<InvoiceItem> items) addItems,
    required TResult Function(String message) changeCustomerMessage,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeCustomerMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(String clientId)? changeClient,
    TResult? Function(List<InvoiceItem> items)? addItems,
    TResult? Function(String message)? changeCustomerMessage,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeCustomerMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime date)? changeDate,
    TResult Function(String clientId)? changeClient,
    TResult Function(List<InvoiceItem> items)? addItems,
    TResult Function(String message)? changeCustomerMessage,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeCustomerMessage != null) {
      return changeCustomerMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditEventLoad value) load,
    required TResult Function(FinanceInvoiceEditEventChangeDate value)
        changeDate,
    required TResult Function(FinanceInvoiceEditEventChangeClient value)
        changeClient,
    required TResult Function(FinanceInvoiceEditEventAddItems value) addItems,
    required TResult Function(
            FinanceInvoiceEditEventChangeCustomerMessage value)
        changeCustomerMessage,
    required TResult Function(FinanceInvoiceEditEventSave value) save,
  }) {
    return changeCustomerMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditEventLoad value)? load,
    TResult? Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult? Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult? Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult? Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult? Function(FinanceInvoiceEditEventSave value)? save,
  }) {
    return changeCustomerMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditEventLoad value)? load,
    TResult Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult Function(FinanceInvoiceEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeCustomerMessage != null) {
      return changeCustomerMessage(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditEventChangeCustomerMessage
    implements FinanceInvoiceEditEvent {
  const factory FinanceInvoiceEditEventChangeCustomerMessage(
          {required final String message}) =
      _$FinanceInvoiceEditEventChangeCustomerMessageImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditEventChangeCustomerMessageImplCopyWith<
          _$FinanceInvoiceEditEventChangeCustomerMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditEventSaveImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditEventSaveImplCopyWith(
          _$FinanceInvoiceEditEventSaveImpl value,
          $Res Function(_$FinanceInvoiceEditEventSaveImpl) then) =
      __$$FinanceInvoiceEditEventSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback callback});
}

/// @nodoc
class __$$FinanceInvoiceEditEventSaveImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditEventCopyWithImpl<$Res,
        _$FinanceInvoiceEditEventSaveImpl>
    implements _$$FinanceInvoiceEditEventSaveImplCopyWith<$Res> {
  __$$FinanceInvoiceEditEventSaveImplCopyWithImpl(
      _$FinanceInvoiceEditEventSaveImpl _value,
      $Res Function(_$FinanceInvoiceEditEventSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$FinanceInvoiceEditEventSaveImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$FinanceInvoiceEditEventSaveImpl implements FinanceInvoiceEditEventSave {
  const _$FinanceInvoiceEditEventSaveImpl({required this.callback});

  @override
  final VoidCallback callback;

  @override
  String toString() {
    return 'FinanceInvoiceEditEvent.save(callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditEventSaveImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditEventSaveImplCopyWith<_$FinanceInvoiceEditEventSaveImpl>
      get copyWith => __$$FinanceInvoiceEditEventSaveImplCopyWithImpl<
          _$FinanceInvoiceEditEventSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(String clientId) changeClient,
    required TResult Function(List<InvoiceItem> items) addItems,
    required TResult Function(String message) changeCustomerMessage,
    required TResult Function(VoidCallback callback) save,
  }) {
    return save(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(String clientId)? changeClient,
    TResult? Function(List<InvoiceItem> items)? addItems,
    TResult? Function(String message)? changeCustomerMessage,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return save?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime date)? changeDate,
    TResult Function(String clientId)? changeClient,
    TResult Function(List<InvoiceItem> items)? addItems,
    TResult Function(String message)? changeCustomerMessage,
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
    required TResult Function(FinanceInvoiceEditEventLoad value) load,
    required TResult Function(FinanceInvoiceEditEventChangeDate value)
        changeDate,
    required TResult Function(FinanceInvoiceEditEventChangeClient value)
        changeClient,
    required TResult Function(FinanceInvoiceEditEventAddItems value) addItems,
    required TResult Function(
            FinanceInvoiceEditEventChangeCustomerMessage value)
        changeCustomerMessage,
    required TResult Function(FinanceInvoiceEditEventSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditEventLoad value)? load,
    TResult? Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult? Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult? Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult? Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult? Function(FinanceInvoiceEditEventSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditEventLoad value)? load,
    TResult Function(FinanceInvoiceEditEventChangeDate value)? changeDate,
    TResult Function(FinanceInvoiceEditEventChangeClient value)? changeClient,
    TResult Function(FinanceInvoiceEditEventAddItems value)? addItems,
    TResult Function(FinanceInvoiceEditEventChangeCustomerMessage value)?
        changeCustomerMessage,
    TResult Function(FinanceInvoiceEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditEventSave implements FinanceInvoiceEditEvent {
  const factory FinanceInvoiceEditEventSave(
          {required final VoidCallback callback}) =
      _$FinanceInvoiceEditEventSaveImpl;

  VoidCallback get callback;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditEventSaveImplCopyWith<_$FinanceInvoiceEditEventSaveImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FinanceInvoiceEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(
            CrudType crudType, Invoice invoice, List<Client> clients)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, Invoice invoice, List<Client> clients)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, Invoice invoice, List<Client> clients)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditStateInit value) init,
    required TResult Function(FinanceInvoiceEditStateLoading value) loading,
    required TResult Function(FinanceInvoiceEditStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditStateInit value)? init,
    TResult? Function(FinanceInvoiceEditStateLoading value)? loading,
    TResult? Function(FinanceInvoiceEditStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditStateInit value)? init,
    TResult Function(FinanceInvoiceEditStateLoading value)? loading,
    TResult Function(FinanceInvoiceEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceInvoiceEditStateCopyWith<$Res> {
  factory $FinanceInvoiceEditStateCopyWith(FinanceInvoiceEditState value,
          $Res Function(FinanceInvoiceEditState) then) =
      _$FinanceInvoiceEditStateCopyWithImpl<$Res, FinanceInvoiceEditState>;
}

/// @nodoc
class _$FinanceInvoiceEditStateCopyWithImpl<$Res,
        $Val extends FinanceInvoiceEditState>
    implements $FinanceInvoiceEditStateCopyWith<$Res> {
  _$FinanceInvoiceEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditStateInitImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditStateInitImplCopyWith(
          _$FinanceInvoiceEditStateInitImpl value,
          $Res Function(_$FinanceInvoiceEditStateInitImpl) then) =
      __$$FinanceInvoiceEditStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceInvoiceEditStateInitImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditStateCopyWithImpl<$Res,
        _$FinanceInvoiceEditStateInitImpl>
    implements _$$FinanceInvoiceEditStateInitImplCopyWith<$Res> {
  __$$FinanceInvoiceEditStateInitImplCopyWithImpl(
      _$FinanceInvoiceEditStateInitImpl _value,
      $Res Function(_$FinanceInvoiceEditStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceInvoiceEditStateInitImpl implements FinanceInvoiceEditStateInit {
  const _$FinanceInvoiceEditStateInitImpl();

  @override
  String toString() {
    return 'FinanceInvoiceEditState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(
            CrudType crudType, Invoice invoice, List<Client> clients)
        loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, Invoice invoice, List<Client> clients)?
        loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, Invoice invoice, List<Client> clients)?
        loaded,
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
    required TResult Function(FinanceInvoiceEditStateInit value) init,
    required TResult Function(FinanceInvoiceEditStateLoading value) loading,
    required TResult Function(FinanceInvoiceEditStateLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditStateInit value)? init,
    TResult? Function(FinanceInvoiceEditStateLoading value)? loading,
    TResult? Function(FinanceInvoiceEditStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditStateInit value)? init,
    TResult Function(FinanceInvoiceEditStateLoading value)? loading,
    TResult Function(FinanceInvoiceEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditStateInit implements FinanceInvoiceEditState {
  const factory FinanceInvoiceEditStateInit() =
      _$FinanceInvoiceEditStateInitImpl;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditStateLoadingImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditStateLoadingImplCopyWith(
          _$FinanceInvoiceEditStateLoadingImpl value,
          $Res Function(_$FinanceInvoiceEditStateLoadingImpl) then) =
      __$$FinanceInvoiceEditStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType crudType});

  $CrudTypeCopyWith<$Res> get crudType;
}

/// @nodoc
class __$$FinanceInvoiceEditStateLoadingImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditStateCopyWithImpl<$Res,
        _$FinanceInvoiceEditStateLoadingImpl>
    implements _$$FinanceInvoiceEditStateLoadingImplCopyWith<$Res> {
  __$$FinanceInvoiceEditStateLoadingImplCopyWithImpl(
      _$FinanceInvoiceEditStateLoadingImpl _value,
      $Res Function(_$FinanceInvoiceEditStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crudType = null,
  }) {
    return _then(_$FinanceInvoiceEditStateLoadingImpl(
      crudType: null == crudType
          ? _value.crudType
          : crudType // ignore: cast_nullable_to_non_nullable
              as CrudType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CrudTypeCopyWith<$Res> get crudType {
    return $CrudTypeCopyWith<$Res>(_value.crudType, (value) {
      return _then(_value.copyWith(crudType: value));
    });
  }
}

/// @nodoc

class _$FinanceInvoiceEditStateLoadingImpl
    implements FinanceInvoiceEditStateLoading {
  const _$FinanceInvoiceEditStateLoadingImpl({required this.crudType});

  @override
  final CrudType crudType;

  @override
  String toString() {
    return 'FinanceInvoiceEditState.loading(crudType: $crudType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditStateLoadingImpl &&
            (identical(other.crudType, crudType) ||
                other.crudType == crudType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crudType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditStateLoadingImplCopyWith<
          _$FinanceInvoiceEditStateLoadingImpl>
      get copyWith => __$$FinanceInvoiceEditStateLoadingImplCopyWithImpl<
          _$FinanceInvoiceEditStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(
            CrudType crudType, Invoice invoice, List<Client> clients)
        loaded,
  }) {
    return loading(crudType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, Invoice invoice, List<Client> clients)?
        loaded,
  }) {
    return loading?.call(crudType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, Invoice invoice, List<Client> clients)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(crudType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditStateInit value) init,
    required TResult Function(FinanceInvoiceEditStateLoading value) loading,
    required TResult Function(FinanceInvoiceEditStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditStateInit value)? init,
    TResult? Function(FinanceInvoiceEditStateLoading value)? loading,
    TResult? Function(FinanceInvoiceEditStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditStateInit value)? init,
    TResult Function(FinanceInvoiceEditStateLoading value)? loading,
    TResult Function(FinanceInvoiceEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditStateLoading
    implements FinanceInvoiceEditState {
  const factory FinanceInvoiceEditStateLoading(
          {required final CrudType crudType}) =
      _$FinanceInvoiceEditStateLoadingImpl;

  CrudType get crudType;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditStateLoadingImplCopyWith<
          _$FinanceInvoiceEditStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditStateLoadedImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditStateLoadedImplCopyWith(
          _$FinanceInvoiceEditStateLoadedImpl value,
          $Res Function(_$FinanceInvoiceEditStateLoadedImpl) then) =
      __$$FinanceInvoiceEditStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType crudType, Invoice invoice, List<Client> clients});

  $CrudTypeCopyWith<$Res> get crudType;
  $InvoiceCopyWith<$Res> get invoice;
}

/// @nodoc
class __$$FinanceInvoiceEditStateLoadedImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditStateCopyWithImpl<$Res,
        _$FinanceInvoiceEditStateLoadedImpl>
    implements _$$FinanceInvoiceEditStateLoadedImplCopyWith<$Res> {
  __$$FinanceInvoiceEditStateLoadedImplCopyWithImpl(
      _$FinanceInvoiceEditStateLoadedImpl _value,
      $Res Function(_$FinanceInvoiceEditStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crudType = null,
    Object? invoice = null,
    Object? clients = null,
  }) {
    return _then(_$FinanceInvoiceEditStateLoadedImpl(
      crudType: null == crudType
          ? _value.crudType
          : crudType // ignore: cast_nullable_to_non_nullable
              as CrudType,
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice,
      clients: null == clients
          ? _value._clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<Client>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CrudTypeCopyWith<$Res> get crudType {
    return $CrudTypeCopyWith<$Res>(_value.crudType, (value) {
      return _then(_value.copyWith(crudType: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<$Res> get invoice {
    return $InvoiceCopyWith<$Res>(_value.invoice, (value) {
      return _then(_value.copyWith(invoice: value));
    });
  }
}

/// @nodoc

class _$FinanceInvoiceEditStateLoadedImpl
    implements FinanceInvoiceEditStateLoaded {
  const _$FinanceInvoiceEditStateLoadedImpl(
      {required this.crudType,
      required this.invoice,
      required final List<Client> clients})
      : _clients = clients;

  @override
  final CrudType crudType;
  @override
  final Invoice invoice;
  final List<Client> _clients;
  @override
  List<Client> get clients {
    if (_clients is EqualUnmodifiableListView) return _clients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clients);
  }

  @override
  String toString() {
    return 'FinanceInvoiceEditState.loaded(crudType: $crudType, invoice: $invoice, clients: $clients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditStateLoadedImpl &&
            (identical(other.crudType, crudType) ||
                other.crudType == crudType) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            const DeepCollectionEquality().equals(other._clients, _clients));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crudType, invoice,
      const DeepCollectionEquality().hash(_clients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditStateLoadedImplCopyWith<
          _$FinanceInvoiceEditStateLoadedImpl>
      get copyWith => __$$FinanceInvoiceEditStateLoadedImplCopyWithImpl<
          _$FinanceInvoiceEditStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(
            CrudType crudType, Invoice invoice, List<Client> clients)
        loaded,
  }) {
    return loaded(crudType, invoice, clients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, Invoice invoice, List<Client> clients)?
        loaded,
  }) {
    return loaded?.call(crudType, invoice, clients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, Invoice invoice, List<Client> clients)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(crudType, invoice, clients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditStateInit value) init,
    required TResult Function(FinanceInvoiceEditStateLoading value) loading,
    required TResult Function(FinanceInvoiceEditStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditStateInit value)? init,
    TResult? Function(FinanceInvoiceEditStateLoading value)? loading,
    TResult? Function(FinanceInvoiceEditStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditStateInit value)? init,
    TResult Function(FinanceInvoiceEditStateLoading value)? loading,
    TResult Function(FinanceInvoiceEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditStateLoaded
    implements FinanceInvoiceEditState {
  const factory FinanceInvoiceEditStateLoaded(
          {required final CrudType crudType,
          required final Invoice invoice,
          required final List<Client> clients}) =
      _$FinanceInvoiceEditStateLoadedImpl;

  CrudType get crudType;
  Invoice get invoice;
  List<Client> get clients;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditStateLoadedImplCopyWith<
          _$FinanceInvoiceEditStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
