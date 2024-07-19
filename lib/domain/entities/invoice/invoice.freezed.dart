// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) {
  return _InvoiceItem.fromJson(json);
}

/// @nodoc
mixin _$InvoiceItem {
  String get projectId => throw _privateConstructorUsedError;
  String get taskId => throw _privateConstructorUsedError;
  String get activityId => throw _privateConstructorUsedError;
  String get productService => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get qtyHrs => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceItemCopyWith<InvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceItemCopyWith<$Res> {
  factory $InvoiceItemCopyWith(
          InvoiceItem value, $Res Function(InvoiceItem) then) =
      _$InvoiceItemCopyWithImpl<$Res, InvoiceItem>;
  @useResult
  $Res call(
      {String projectId,
      String taskId,
      String activityId,
      String productService,
      String description,
      double qtyHrs,
      double rate,
      double amount});
}

/// @nodoc
class _$InvoiceItemCopyWithImpl<$Res, $Val extends InvoiceItem>
    implements $InvoiceItemCopyWith<$Res> {
  _$InvoiceItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? taskId = null,
    Object? activityId = null,
    Object? productService = null,
    Object? description = null,
    Object? qtyHrs = null,
    Object? rate = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      productService: null == productService
          ? _value.productService
          : productService // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      qtyHrs: null == qtyHrs
          ? _value.qtyHrs
          : qtyHrs // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceItemImplCopyWith<$Res>
    implements $InvoiceItemCopyWith<$Res> {
  factory _$$InvoiceItemImplCopyWith(
          _$InvoiceItemImpl value, $Res Function(_$InvoiceItemImpl) then) =
      __$$InvoiceItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectId,
      String taskId,
      String activityId,
      String productService,
      String description,
      double qtyHrs,
      double rate,
      double amount});
}

/// @nodoc
class __$$InvoiceItemImplCopyWithImpl<$Res>
    extends _$InvoiceItemCopyWithImpl<$Res, _$InvoiceItemImpl>
    implements _$$InvoiceItemImplCopyWith<$Res> {
  __$$InvoiceItemImplCopyWithImpl(
      _$InvoiceItemImpl _value, $Res Function(_$InvoiceItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? taskId = null,
    Object? activityId = null,
    Object? productService = null,
    Object? description = null,
    Object? qtyHrs = null,
    Object? rate = null,
    Object? amount = null,
  }) {
    return _then(_$InvoiceItemImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      productService: null == productService
          ? _value.productService
          : productService // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      qtyHrs: null == qtyHrs
          ? _value.qtyHrs
          : qtyHrs // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceItemImpl implements _InvoiceItem {
  _$InvoiceItemImpl(
      {this.projectId = '',
      this.taskId = '',
      this.activityId = '',
      this.productService = '',
      this.description = '',
      this.qtyHrs = 0,
      this.rate = 0,
      this.amount = 0});

  factory _$InvoiceItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceItemImplFromJson(json);

  @override
  @JsonKey()
  final String projectId;
  @override
  @JsonKey()
  final String taskId;
  @override
  @JsonKey()
  final String activityId;
  @override
  @JsonKey()
  final String productService;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final double qtyHrs;
  @override
  @JsonKey()
  final double rate;
  @override
  @JsonKey()
  final double amount;

  @override
  String toString() {
    return 'InvoiceItem(projectId: $projectId, taskId: $taskId, activityId: $activityId, productService: $productService, description: $description, qtyHrs: $qtyHrs, rate: $rate, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceItemImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.productService, productService) ||
                other.productService == productService) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.qtyHrs, qtyHrs) || other.qtyHrs == qtyHrs) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, projectId, taskId, activityId,
      productService, description, qtyHrs, rate, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceItemImplCopyWith<_$InvoiceItemImpl> get copyWith =>
      __$$InvoiceItemImplCopyWithImpl<_$InvoiceItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceItemImplToJson(
      this,
    );
  }
}

abstract class _InvoiceItem implements InvoiceItem {
  factory _InvoiceItem(
      {final String projectId,
      final String taskId,
      final String activityId,
      final String productService,
      final String description,
      final double qtyHrs,
      final double rate,
      final double amount}) = _$InvoiceItemImpl;

  factory _InvoiceItem.fromJson(Map<String, dynamic> json) =
      _$InvoiceItemImpl.fromJson;

  @override
  String get projectId;
  @override
  String get taskId;
  @override
  String get activityId;
  @override
  String get productService;
  @override
  String get description;
  @override
  double get qtyHrs;
  @override
  double get rate;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceItemImplCopyWith<_$InvoiceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  String get id => throw _privateConstructorUsedError;
  DateTime? get issueDate => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get clientFirstName => throw _privateConstructorUsedError;
  String get clientlastName => throw _privateConstructorUsedError;
  String get clientAddress => throw _privateConstructorUsedError;
  String get clientAddress2 => throw _privateConstructorUsedError;
  String get clientCity => throw _privateConstructorUsedError;
  String get clientState => throw _privateConstructorUsedError;
  String get clientZipCode => throw _privateConstructorUsedError;
  String get customerMessage => throw _privateConstructorUsedError;
  @InvoiceStatusConverter()
  InvoiceStatusEnums get status => throw _privateConstructorUsedError;
  List<InvoiceItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call(
      {String id,
      DateTime? issueDate,
      DateTime? dueDate,
      String clientId,
      String clientFirstName,
      String clientlastName,
      String clientAddress,
      String clientAddress2,
      String clientCity,
      String clientState,
      String clientZipCode,
      String customerMessage,
      @InvoiceStatusConverter() InvoiceStatusEnums status,
      List<InvoiceItem> items});
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? issueDate = freezed,
    Object? dueDate = freezed,
    Object? clientId = null,
    Object? clientFirstName = null,
    Object? clientlastName = null,
    Object? clientAddress = null,
    Object? clientAddress2 = null,
    Object? clientCity = null,
    Object? clientState = null,
    Object? clientZipCode = null,
    Object? customerMessage = null,
    Object? status = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientFirstName: null == clientFirstName
          ? _value.clientFirstName
          : clientFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      clientlastName: null == clientlastName
          ? _value.clientlastName
          : clientlastName // ignore: cast_nullable_to_non_nullable
              as String,
      clientAddress: null == clientAddress
          ? _value.clientAddress
          : clientAddress // ignore: cast_nullable_to_non_nullable
              as String,
      clientAddress2: null == clientAddress2
          ? _value.clientAddress2
          : clientAddress2 // ignore: cast_nullable_to_non_nullable
              as String,
      clientCity: null == clientCity
          ? _value.clientCity
          : clientCity // ignore: cast_nullable_to_non_nullable
              as String,
      clientState: null == clientState
          ? _value.clientState
          : clientState // ignore: cast_nullable_to_non_nullable
              as String,
      clientZipCode: null == clientZipCode
          ? _value.clientZipCode
          : clientZipCode // ignore: cast_nullable_to_non_nullable
              as String,
      customerMessage: null == customerMessage
          ? _value.customerMessage
          : customerMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatusEnums,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? issueDate,
      DateTime? dueDate,
      String clientId,
      String clientFirstName,
      String clientlastName,
      String clientAddress,
      String clientAddress2,
      String clientCity,
      String clientState,
      String clientZipCode,
      String customerMessage,
      @InvoiceStatusConverter() InvoiceStatusEnums status,
      List<InvoiceItem> items});
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? issueDate = freezed,
    Object? dueDate = freezed,
    Object? clientId = null,
    Object? clientFirstName = null,
    Object? clientlastName = null,
    Object? clientAddress = null,
    Object? clientAddress2 = null,
    Object? clientCity = null,
    Object? clientState = null,
    Object? clientZipCode = null,
    Object? customerMessage = null,
    Object? status = null,
    Object? items = null,
  }) {
    return _then(_$InvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientFirstName: null == clientFirstName
          ? _value.clientFirstName
          : clientFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      clientlastName: null == clientlastName
          ? _value.clientlastName
          : clientlastName // ignore: cast_nullable_to_non_nullable
              as String,
      clientAddress: null == clientAddress
          ? _value.clientAddress
          : clientAddress // ignore: cast_nullable_to_non_nullable
              as String,
      clientAddress2: null == clientAddress2
          ? _value.clientAddress2
          : clientAddress2 // ignore: cast_nullable_to_non_nullable
              as String,
      clientCity: null == clientCity
          ? _value.clientCity
          : clientCity // ignore: cast_nullable_to_non_nullable
              as String,
      clientState: null == clientState
          ? _value.clientState
          : clientState // ignore: cast_nullable_to_non_nullable
              as String,
      clientZipCode: null == clientZipCode
          ? _value.clientZipCode
          : clientZipCode // ignore: cast_nullable_to_non_nullable
              as String,
      customerMessage: null == customerMessage
          ? _value.customerMessage
          : customerMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatusEnums,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceImpl implements _Invoice {
  const _$InvoiceImpl(
      {this.id = '',
      this.issueDate,
      this.dueDate,
      this.clientId = '',
      this.clientFirstName = '',
      this.clientlastName = '',
      this.clientAddress = '',
      this.clientAddress2 = '',
      this.clientCity = '',
      this.clientState = '',
      this.clientZipCode = '',
      this.customerMessage = '',
      @InvoiceStatusConverter() this.status = InvoiceStatusEnums.draft,
      final List<InvoiceItem> items = const []})
      : _items = items;

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final DateTime? issueDate;
  @override
  final DateTime? dueDate;
  @override
  @JsonKey()
  final String clientId;
  @override
  @JsonKey()
  final String clientFirstName;
  @override
  @JsonKey()
  final String clientlastName;
  @override
  @JsonKey()
  final String clientAddress;
  @override
  @JsonKey()
  final String clientAddress2;
  @override
  @JsonKey()
  final String clientCity;
  @override
  @JsonKey()
  final String clientState;
  @override
  @JsonKey()
  final String clientZipCode;
  @override
  @JsonKey()
  final String customerMessage;
  @override
  @JsonKey()
  @InvoiceStatusConverter()
  final InvoiceStatusEnums status;
  final List<InvoiceItem> _items;
  @override
  @JsonKey()
  List<InvoiceItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Invoice(id: $id, issueDate: $issueDate, dueDate: $dueDate, clientId: $clientId, clientFirstName: $clientFirstName, clientlastName: $clientlastName, clientAddress: $clientAddress, clientAddress2: $clientAddress2, clientCity: $clientCity, clientState: $clientState, clientZipCode: $clientZipCode, customerMessage: $customerMessage, status: $status, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientFirstName, clientFirstName) ||
                other.clientFirstName == clientFirstName) &&
            (identical(other.clientlastName, clientlastName) ||
                other.clientlastName == clientlastName) &&
            (identical(other.clientAddress, clientAddress) ||
                other.clientAddress == clientAddress) &&
            (identical(other.clientAddress2, clientAddress2) ||
                other.clientAddress2 == clientAddress2) &&
            (identical(other.clientCity, clientCity) ||
                other.clientCity == clientCity) &&
            (identical(other.clientState, clientState) ||
                other.clientState == clientState) &&
            (identical(other.clientZipCode, clientZipCode) ||
                other.clientZipCode == clientZipCode) &&
            (identical(other.customerMessage, customerMessage) ||
                other.customerMessage == customerMessage) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      issueDate,
      dueDate,
      clientId,
      clientFirstName,
      clientlastName,
      clientAddress,
      clientAddress2,
      clientCity,
      clientState,
      clientZipCode,
      customerMessage,
      status,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceImplToJson(
      this,
    );
  }
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      {final String id,
      final DateTime? issueDate,
      final DateTime? dueDate,
      final String clientId,
      final String clientFirstName,
      final String clientlastName,
      final String clientAddress,
      final String clientAddress2,
      final String clientCity,
      final String clientState,
      final String clientZipCode,
      final String customerMessage,
      @InvoiceStatusConverter() final InvoiceStatusEnums status,
      final List<InvoiceItem> items}) = _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  String get id;
  @override
  DateTime? get issueDate;
  @override
  DateTime? get dueDate;
  @override
  String get clientId;
  @override
  String get clientFirstName;
  @override
  String get clientlastName;
  @override
  String get clientAddress;
  @override
  String get clientAddress2;
  @override
  String get clientCity;
  @override
  String get clientState;
  @override
  String get clientZipCode;
  @override
  String get customerMessage;
  @override
  @InvoiceStatusConverter()
  InvoiceStatusEnums get status;
  @override
  List<InvoiceItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
