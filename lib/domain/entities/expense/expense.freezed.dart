// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseItem _$ExpenseItemFromJson(Map<String, dynamic> json) {
  return _ExpenseItem.fromJson(json);
}

/// @nodoc
mixin _$ExpenseItem {
  String get productService => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get timeCardId => throw _privateConstructorUsedError;
  String get expenseId => throw _privateConstructorUsedError;
  double get qtyHrs => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseItemCopyWith<ExpenseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseItemCopyWith<$Res> {
  factory $ExpenseItemCopyWith(
          ExpenseItem value, $Res Function(ExpenseItem) then) =
      _$ExpenseItemCopyWithImpl<$Res, ExpenseItem>;
  @useResult
  $Res call(
      {String productService,
      String description,
      String timeCardId,
      String expenseId,
      double qtyHrs,
      double rate,
      double amount});
}

/// @nodoc
class _$ExpenseItemCopyWithImpl<$Res, $Val extends ExpenseItem>
    implements $ExpenseItemCopyWith<$Res> {
  _$ExpenseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productService = null,
    Object? description = null,
    Object? timeCardId = null,
    Object? expenseId = null,
    Object? qtyHrs = null,
    Object? rate = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      productService: null == productService
          ? _value.productService
          : productService // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timeCardId: null == timeCardId
          ? _value.timeCardId
          : timeCardId // ignore: cast_nullable_to_non_nullable
              as String,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ExpenseItemImplCopyWith<$Res>
    implements $ExpenseItemCopyWith<$Res> {
  factory _$$ExpenseItemImplCopyWith(
          _$ExpenseItemImpl value, $Res Function(_$ExpenseItemImpl) then) =
      __$$ExpenseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productService,
      String description,
      String timeCardId,
      String expenseId,
      double qtyHrs,
      double rate,
      double amount});
}

/// @nodoc
class __$$ExpenseItemImplCopyWithImpl<$Res>
    extends _$ExpenseItemCopyWithImpl<$Res, _$ExpenseItemImpl>
    implements _$$ExpenseItemImplCopyWith<$Res> {
  __$$ExpenseItemImplCopyWithImpl(
      _$ExpenseItemImpl _value, $Res Function(_$ExpenseItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productService = null,
    Object? description = null,
    Object? timeCardId = null,
    Object? expenseId = null,
    Object? qtyHrs = null,
    Object? rate = null,
    Object? amount = null,
  }) {
    return _then(_$ExpenseItemImpl(
      productService: null == productService
          ? _value.productService
          : productService // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timeCardId: null == timeCardId
          ? _value.timeCardId
          : timeCardId // ignore: cast_nullable_to_non_nullable
              as String,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
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
class _$ExpenseItemImpl implements _ExpenseItem {
  _$ExpenseItemImpl(
      {this.productService = '',
      this.description = '',
      this.timeCardId = '',
      this.expenseId = '',
      this.qtyHrs = 0,
      this.rate = 0,
      this.amount = 0});

  factory _$ExpenseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseItemImplFromJson(json);

  @override
  @JsonKey()
  final String productService;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String timeCardId;
  @override
  @JsonKey()
  final String expenseId;
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
    return 'ExpenseItem(productService: $productService, description: $description, timeCardId: $timeCardId, expenseId: $expenseId, qtyHrs: $qtyHrs, rate: $rate, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseItemImpl &&
            (identical(other.productService, productService) ||
                other.productService == productService) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timeCardId, timeCardId) ||
                other.timeCardId == timeCardId) &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId) &&
            (identical(other.qtyHrs, qtyHrs) || other.qtyHrs == qtyHrs) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productService, description,
      timeCardId, expenseId, qtyHrs, rate, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseItemImplCopyWith<_$ExpenseItemImpl> get copyWith =>
      __$$ExpenseItemImplCopyWithImpl<_$ExpenseItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseItemImplToJson(
      this,
    );
  }
}

abstract class _ExpenseItem implements ExpenseItem {
  factory _ExpenseItem(
      {final String productService,
      final String description,
      final String timeCardId,
      final String expenseId,
      final double qtyHrs,
      final double rate,
      final double amount}) = _$ExpenseItemImpl;

  factory _ExpenseItem.fromJson(Map<String, dynamic> json) =
      _$ExpenseItemImpl.fromJson;

  @override
  String get productService;
  @override
  String get description;
  @override
  String get timeCardId;
  @override
  String get expenseId;
  @override
  double get qtyHrs;
  @override
  double get rate;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseItemImplCopyWith<_$ExpenseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return _Attachment.fromJson(json);
}

/// @nodoc
mixin _$Attachment {
  String get name => throw _privateConstructorUsedError;
  @FileExtensionConverter()
  FileExtensionEnums get fileExtension => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  Uint8List? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentCopyWith<Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res, Attachment>;
  @useResult
  $Res call(
      {String name,
      @FileExtensionConverter() FileExtensionEnums fileExtension,
      @JsonKey(includeFromJson: false) Uint8List? data});
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res, $Val extends Attachment>
    implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fileExtension = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fileExtension: null == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as FileExtensionEnums,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentImplCopyWith<$Res>
    implements $AttachmentCopyWith<$Res> {
  factory _$$AttachmentImplCopyWith(
          _$AttachmentImpl value, $Res Function(_$AttachmentImpl) then) =
      __$$AttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @FileExtensionConverter() FileExtensionEnums fileExtension,
      @JsonKey(includeFromJson: false) Uint8List? data});
}

/// @nodoc
class __$$AttachmentImplCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res, _$AttachmentImpl>
    implements _$$AttachmentImplCopyWith<$Res> {
  __$$AttachmentImplCopyWithImpl(
      _$AttachmentImpl _value, $Res Function(_$AttachmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fileExtension = null,
    Object? data = freezed,
  }) {
    return _then(_$AttachmentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fileExtension: null == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as FileExtensionEnums,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentImpl implements _Attachment {
  const _$AttachmentImpl(
      {required this.name,
      @FileExtensionConverter() required this.fileExtension,
      @JsonKey(includeFromJson: false) this.data});

  factory _$AttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentImplFromJson(json);

  @override
  final String name;
  @override
  @FileExtensionConverter()
  final FileExtensionEnums fileExtension;
  @override
  @JsonKey(includeFromJson: false)
  final Uint8List? data;

  @override
  String toString() {
    return 'Attachment(name: $name, fileExtension: $fileExtension, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fileExtension, fileExtension) ||
                other.fileExtension == fileExtension) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, fileExtension,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentImplCopyWith<_$AttachmentImpl> get copyWith =>
      __$$AttachmentImplCopyWithImpl<_$AttachmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentImplToJson(
      this,
    );
  }
}

abstract class _Attachment implements Attachment {
  const factory _Attachment(
      {required final String name,
      @FileExtensionConverter() required final FileExtensionEnums fileExtension,
      @JsonKey(includeFromJson: false)
      final Uint8List? data}) = _$AttachmentImpl;

  factory _Attachment.fromJson(Map<String, dynamic> json) =
      _$AttachmentImpl.fromJson;

  @override
  String get name;
  @override
  @FileExtensionConverter()
  FileExtensionEnums get fileExtension;
  @override
  @JsonKey(includeFromJson: false)
  Uint8List? get data;
  @override
  @JsonKey(ignore: true)
  _$$AttachmentImplCopyWith<_$AttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Expense _$ExpenseFromJson(Map<String, dynamic> json) {
  return _Expense.fromJson(json);
}

/// @nodoc
mixin _$Expense {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get issueDate => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  DateTime? get paymentDate => throw _privateConstructorUsedError;
  dynamic get categoryId => throw _privateConstructorUsedError;
  dynamic get categoryTitle => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get projectName => throw _privateConstructorUsedError;
  String get taskId => throw _privateConstructorUsedError;
  String get taskTitle => throw _privateConstructorUsedError;
  String get employeeId => throw _privateConstructorUsedError;
  String get creditCardId => throw _privateConstructorUsedError;
  String get creditCardNumber => throw _privateConstructorUsedError;
  @PaymentMethodConverter()
  PaymentMethodEnums get paymentMethod => throw _privateConstructorUsedError;
  String get paymentMethodCardId => throw _privateConstructorUsedError;
  String get paymentMethodCardNumber => throw _privateConstructorUsedError;
  @ExpenseStatusConverter()
  ExpenseStatusEnums get status => throw _privateConstructorUsedError;
  List<ExpenseItem> get items => throw _privateConstructorUsedError;
  List<Attachment> get attachments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseCopyWith<Expense> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCopyWith<$Res> {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) then) =
      _$ExpenseCopyWithImpl<$Res, Expense>;
  @useResult
  $Res call(
      {String id,
      String description,
      DateTime issueDate,
      DateTime? dueDate,
      DateTime? paymentDate,
      dynamic categoryId,
      dynamic categoryTitle,
      String projectId,
      String projectName,
      String taskId,
      String taskTitle,
      String employeeId,
      String creditCardId,
      String creditCardNumber,
      @PaymentMethodConverter() PaymentMethodEnums paymentMethod,
      String paymentMethodCardId,
      String paymentMethodCardNumber,
      @ExpenseStatusConverter() ExpenseStatusEnums status,
      List<ExpenseItem> items,
      List<Attachment> attachments});
}

/// @nodoc
class _$ExpenseCopyWithImpl<$Res, $Val extends Expense>
    implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? issueDate = null,
    Object? dueDate = freezed,
    Object? paymentDate = freezed,
    Object? categoryId = freezed,
    Object? categoryTitle = freezed,
    Object? projectId = null,
    Object? projectName = null,
    Object? taskId = null,
    Object? taskTitle = null,
    Object? employeeId = null,
    Object? creditCardId = null,
    Object? creditCardNumber = null,
    Object? paymentMethod = null,
    Object? paymentMethodCardId = null,
    Object? paymentMethodCardNumber = null,
    Object? status = null,
    Object? items = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categoryTitle: freezed == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as dynamic,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      taskTitle: null == taskTitle
          ? _value.taskTitle
          : taskTitle // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardId: null == creditCardId
          ? _value.creditCardId
          : creditCardId // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardNumber: null == creditCardNumber
          ? _value.creditCardNumber
          : creditCardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodEnums,
      paymentMethodCardId: null == paymentMethodCardId
          ? _value.paymentMethodCardId
          : paymentMethodCardId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodCardNumber: null == paymentMethodCardNumber
          ? _value.paymentMethodCardNumber
          : paymentMethodCardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatusEnums,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExpenseItem>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseImplCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$$ExpenseImplCopyWith(
          _$ExpenseImpl value, $Res Function(_$ExpenseImpl) then) =
      __$$ExpenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String description,
      DateTime issueDate,
      DateTime? dueDate,
      DateTime? paymentDate,
      dynamic categoryId,
      dynamic categoryTitle,
      String projectId,
      String projectName,
      String taskId,
      String taskTitle,
      String employeeId,
      String creditCardId,
      String creditCardNumber,
      @PaymentMethodConverter() PaymentMethodEnums paymentMethod,
      String paymentMethodCardId,
      String paymentMethodCardNumber,
      @ExpenseStatusConverter() ExpenseStatusEnums status,
      List<ExpenseItem> items,
      List<Attachment> attachments});
}

/// @nodoc
class __$$ExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseCopyWithImpl<$Res, _$ExpenseImpl>
    implements _$$ExpenseImplCopyWith<$Res> {
  __$$ExpenseImplCopyWithImpl(
      _$ExpenseImpl _value, $Res Function(_$ExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? issueDate = null,
    Object? dueDate = freezed,
    Object? paymentDate = freezed,
    Object? categoryId = freezed,
    Object? categoryTitle = freezed,
    Object? projectId = null,
    Object? projectName = null,
    Object? taskId = null,
    Object? taskTitle = null,
    Object? employeeId = null,
    Object? creditCardId = null,
    Object? creditCardNumber = null,
    Object? paymentMethod = null,
    Object? paymentMethodCardId = null,
    Object? paymentMethodCardNumber = null,
    Object? status = null,
    Object? items = null,
    Object? attachments = null,
  }) {
    return _then(_$ExpenseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoryId: freezed == categoryId ? _value.categoryId! : categoryId,
      categoryTitle:
          freezed == categoryTitle ? _value.categoryTitle! : categoryTitle,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      taskTitle: null == taskTitle
          ? _value.taskTitle
          : taskTitle // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardId: null == creditCardId
          ? _value.creditCardId
          : creditCardId // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardNumber: null == creditCardNumber
          ? _value.creditCardNumber
          : creditCardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodEnums,
      paymentMethodCardId: null == paymentMethodCardId
          ? _value.paymentMethodCardId
          : paymentMethodCardId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodCardNumber: null == paymentMethodCardNumber
          ? _value.paymentMethodCardNumber
          : paymentMethodCardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatusEnums,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExpenseItem>,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseImpl implements _Expense {
  const _$ExpenseImpl(
      {this.id = '',
      this.description = '',
      required this.issueDate,
      this.dueDate,
      this.paymentDate,
      this.categoryId = '',
      this.categoryTitle = '',
      this.projectId = '',
      this.projectName = '',
      this.taskId = '',
      this.taskTitle = '',
      this.employeeId = '',
      this.creditCardId = '',
      this.creditCardNumber = '',
      @PaymentMethodConverter() this.paymentMethod = PaymentMethodEnums.cash,
      this.paymentMethodCardId = '',
      this.paymentMethodCardNumber = '',
      @ExpenseStatusConverter() this.status = ExpenseStatusEnums.draft,
      final List<ExpenseItem> items = const [],
      final List<Attachment> attachments = const []})
      : _items = items,
        _attachments = attachments;

  factory _$ExpenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime issueDate;
  @override
  final DateTime? dueDate;
  @override
  final DateTime? paymentDate;
  @override
  @JsonKey()
  final dynamic categoryId;
  @override
  @JsonKey()
  final dynamic categoryTitle;
  @override
  @JsonKey()
  final String projectId;
  @override
  @JsonKey()
  final String projectName;
  @override
  @JsonKey()
  final String taskId;
  @override
  @JsonKey()
  final String taskTitle;
  @override
  @JsonKey()
  final String employeeId;
  @override
  @JsonKey()
  final String creditCardId;
  @override
  @JsonKey()
  final String creditCardNumber;
  @override
  @JsonKey()
  @PaymentMethodConverter()
  final PaymentMethodEnums paymentMethod;
  @override
  @JsonKey()
  final String paymentMethodCardId;
  @override
  @JsonKey()
  final String paymentMethodCardNumber;
  @override
  @JsonKey()
  @ExpenseStatusConverter()
  final ExpenseStatusEnums status;
  final List<ExpenseItem> _items;
  @override
  @JsonKey()
  List<ExpenseItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<Attachment> _attachments;
  @override
  @JsonKey()
  List<Attachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'Expense(id: $id, description: $description, issueDate: $issueDate, dueDate: $dueDate, paymentDate: $paymentDate, categoryId: $categoryId, categoryTitle: $categoryTitle, projectId: $projectId, projectName: $projectName, taskId: $taskId, taskTitle: $taskTitle, employeeId: $employeeId, creditCardId: $creditCardId, creditCardNumber: $creditCardNumber, paymentMethod: $paymentMethod, paymentMethodCardId: $paymentMethodCardId, paymentMethodCardNumber: $paymentMethodCardNumber, status: $status, items: $items, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality()
                .equals(other.categoryTitle, categoryTitle) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.taskTitle, taskTitle) ||
                other.taskTitle == taskTitle) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.creditCardId, creditCardId) ||
                other.creditCardId == creditCardId) &&
            (identical(other.creditCardNumber, creditCardNumber) ||
                other.creditCardNumber == creditCardNumber) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentMethodCardId, paymentMethodCardId) ||
                other.paymentMethodCardId == paymentMethodCardId) &&
            (identical(
                    other.paymentMethodCardNumber, paymentMethodCardNumber) ||
                other.paymentMethodCardNumber == paymentMethodCardNumber) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        description,
        issueDate,
        dueDate,
        paymentDate,
        const DeepCollectionEquality().hash(categoryId),
        const DeepCollectionEquality().hash(categoryTitle),
        projectId,
        projectName,
        taskId,
        taskTitle,
        employeeId,
        creditCardId,
        creditCardNumber,
        paymentMethod,
        paymentMethodCardId,
        paymentMethodCardNumber,
        status,
        const DeepCollectionEquality().hash(_items),
        const DeepCollectionEquality().hash(_attachments)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseImplCopyWith<_$ExpenseImpl> get copyWith =>
      __$$ExpenseImplCopyWithImpl<_$ExpenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseImplToJson(
      this,
    );
  }
}

abstract class _Expense implements Expense {
  const factory _Expense(
      {final String id,
      final String description,
      required final DateTime issueDate,
      final DateTime? dueDate,
      final DateTime? paymentDate,
      final dynamic categoryId,
      final dynamic categoryTitle,
      final String projectId,
      final String projectName,
      final String taskId,
      final String taskTitle,
      final String employeeId,
      final String creditCardId,
      final String creditCardNumber,
      @PaymentMethodConverter() final PaymentMethodEnums paymentMethod,
      final String paymentMethodCardId,
      final String paymentMethodCardNumber,
      @ExpenseStatusConverter() final ExpenseStatusEnums status,
      final List<ExpenseItem> items,
      final List<Attachment> attachments}) = _$ExpenseImpl;

  factory _Expense.fromJson(Map<String, dynamic> json) = _$ExpenseImpl.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  DateTime get issueDate;
  @override
  DateTime? get dueDate;
  @override
  DateTime? get paymentDate;
  @override
  dynamic get categoryId;
  @override
  dynamic get categoryTitle;
  @override
  String get projectId;
  @override
  String get projectName;
  @override
  String get taskId;
  @override
  String get taskTitle;
  @override
  String get employeeId;
  @override
  String get creditCardId;
  @override
  String get creditCardNumber;
  @override
  @PaymentMethodConverter()
  PaymentMethodEnums get paymentMethod;
  @override
  String get paymentMethodCardId;
  @override
  String get paymentMethodCardNumber;
  @override
  @ExpenseStatusConverter()
  ExpenseStatusEnums get status;
  @override
  List<ExpenseItem> get items;
  @override
  List<Attachment> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseImplCopyWith<_$ExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
