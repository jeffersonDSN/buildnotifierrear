// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_expense_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinanceExpenseEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime dueDate) changeDueDate,
    required TResult Function(String description) changeDescription,
    required TResult Function(String id, String title) changeCategory,
    required TResult Function(PaymentMethodEnums paymentMethod)
        changePaymentMethod,
    required TResult Function(String id, String number)
        changePaymentMethodCreditCard,
    required TResult Function(ExpenseItem item) addExpenseItem,
    required TResult Function(VoidCallback callBack) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime dueDate)? changeDueDate,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String id, String title)? changeCategory,
    TResult? Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult? Function(String id, String number)? changePaymentMethodCreditCard,
    TResult? Function(ExpenseItem item)? addExpenseItem,
    TResult? Function(VoidCallback callBack)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime dueDate)? changeDueDate,
    TResult Function(String description)? changeDescription,
    TResult Function(String id, String title)? changeCategory,
    TResult Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult Function(String id, String number)? changePaymentMethodCreditCard,
    TResult Function(ExpenseItem item)? addExpenseItem,
    TResult Function(VoidCallback callBack)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseEditEventLoad value) load,
    required TResult Function(FinanceExpenseEditEventChangeDueDate value)
        changeDueDate,
    required TResult Function(FinanceExpenseEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseEditEventChangeCategory value)
        changeCategory,
    required TResult Function(FinanceExpenseEditEventChangePaymentMethod value)
        changePaymentMethod,
    required TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)
        changePaymentMethodCreditCard,
    required TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)
        addExpenseItem,
    required TResult Function(FinanceExpenseEditEventChangeSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditEventLoad value)? load,
    TResult? Function(FinanceExpenseEditEventChangeDueDate value)?
        changeDueDate,
    TResult? Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult? Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult? Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult? Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult? Function(FinanceExpenseEditEventChangeSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditEventLoad value)? load,
    TResult Function(FinanceExpenseEditEventChangeDueDate value)? changeDueDate,
    TResult Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult Function(FinanceExpenseEditEventChangeSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceExpenseEditEventCopyWith<$Res> {
  factory $FinanceExpenseEditEventCopyWith(FinanceExpenseEditEvent value,
          $Res Function(FinanceExpenseEditEvent) then) =
      _$FinanceExpenseEditEventCopyWithImpl<$Res, FinanceExpenseEditEvent>;
}

/// @nodoc
class _$FinanceExpenseEditEventCopyWithImpl<$Res,
        $Val extends FinanceExpenseEditEvent>
    implements $FinanceExpenseEditEventCopyWith<$Res> {
  _$FinanceExpenseEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceExpenseEditEventLoadImplCopyWith<$Res> {
  factory _$$FinanceExpenseEditEventLoadImplCopyWith(
          _$FinanceExpenseEditEventLoadImpl value,
          $Res Function(_$FinanceExpenseEditEventLoadImpl) then) =
      __$$FinanceExpenseEditEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType crudType});

  $CrudTypeCopyWith<$Res> get crudType;
}

/// @nodoc
class __$$FinanceExpenseEditEventLoadImplCopyWithImpl<$Res>
    extends _$FinanceExpenseEditEventCopyWithImpl<$Res,
        _$FinanceExpenseEditEventLoadImpl>
    implements _$$FinanceExpenseEditEventLoadImplCopyWith<$Res> {
  __$$FinanceExpenseEditEventLoadImplCopyWithImpl(
      _$FinanceExpenseEditEventLoadImpl _value,
      $Res Function(_$FinanceExpenseEditEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crudType = null,
  }) {
    return _then(_$FinanceExpenseEditEventLoadImpl(
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

class _$FinanceExpenseEditEventLoadImpl implements FinanceExpenseEditEventLoad {
  const _$FinanceExpenseEditEventLoadImpl({required this.crudType});

  @override
  final CrudType crudType;

  @override
  String toString() {
    return 'FinanceExpenseEditEvent.load(crudType: $crudType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseEditEventLoadImpl &&
            (identical(other.crudType, crudType) ||
                other.crudType == crudType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crudType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseEditEventLoadImplCopyWith<_$FinanceExpenseEditEventLoadImpl>
      get copyWith => __$$FinanceExpenseEditEventLoadImplCopyWithImpl<
          _$FinanceExpenseEditEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime dueDate) changeDueDate,
    required TResult Function(String description) changeDescription,
    required TResult Function(String id, String title) changeCategory,
    required TResult Function(PaymentMethodEnums paymentMethod)
        changePaymentMethod,
    required TResult Function(String id, String number)
        changePaymentMethodCreditCard,
    required TResult Function(ExpenseItem item) addExpenseItem,
    required TResult Function(VoidCallback callBack) save,
  }) {
    return load(crudType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime dueDate)? changeDueDate,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String id, String title)? changeCategory,
    TResult? Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult? Function(String id, String number)? changePaymentMethodCreditCard,
    TResult? Function(ExpenseItem item)? addExpenseItem,
    TResult? Function(VoidCallback callBack)? save,
  }) {
    return load?.call(crudType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime dueDate)? changeDueDate,
    TResult Function(String description)? changeDescription,
    TResult Function(String id, String title)? changeCategory,
    TResult Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult Function(String id, String number)? changePaymentMethodCreditCard,
    TResult Function(ExpenseItem item)? addExpenseItem,
    TResult Function(VoidCallback callBack)? save,
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
    required TResult Function(FinanceExpenseEditEventLoad value) load,
    required TResult Function(FinanceExpenseEditEventChangeDueDate value)
        changeDueDate,
    required TResult Function(FinanceExpenseEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseEditEventChangeCategory value)
        changeCategory,
    required TResult Function(FinanceExpenseEditEventChangePaymentMethod value)
        changePaymentMethod,
    required TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)
        changePaymentMethodCreditCard,
    required TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)
        addExpenseItem,
    required TResult Function(FinanceExpenseEditEventChangeSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditEventLoad value)? load,
    TResult? Function(FinanceExpenseEditEventChangeDueDate value)?
        changeDueDate,
    TResult? Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult? Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult? Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult? Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult? Function(FinanceExpenseEditEventChangeSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditEventLoad value)? load,
    TResult Function(FinanceExpenseEditEventChangeDueDate value)? changeDueDate,
    TResult Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult Function(FinanceExpenseEditEventChangeSave value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseEditEventLoad implements FinanceExpenseEditEvent {
  const factory FinanceExpenseEditEventLoad(
      {required final CrudType crudType}) = _$FinanceExpenseEditEventLoadImpl;

  CrudType get crudType;
  @JsonKey(ignore: true)
  _$$FinanceExpenseEditEventLoadImplCopyWith<_$FinanceExpenseEditEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseEditEventChangeDueDateImplCopyWith<$Res> {
  factory _$$FinanceExpenseEditEventChangeDueDateImplCopyWith(
          _$FinanceExpenseEditEventChangeDueDateImpl value,
          $Res Function(_$FinanceExpenseEditEventChangeDueDateImpl) then) =
      __$$FinanceExpenseEditEventChangeDueDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dueDate});
}

/// @nodoc
class __$$FinanceExpenseEditEventChangeDueDateImplCopyWithImpl<$Res>
    extends _$FinanceExpenseEditEventCopyWithImpl<$Res,
        _$FinanceExpenseEditEventChangeDueDateImpl>
    implements _$$FinanceExpenseEditEventChangeDueDateImplCopyWith<$Res> {
  __$$FinanceExpenseEditEventChangeDueDateImplCopyWithImpl(
      _$FinanceExpenseEditEventChangeDueDateImpl _value,
      $Res Function(_$FinanceExpenseEditEventChangeDueDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dueDate = null,
  }) {
    return _then(_$FinanceExpenseEditEventChangeDueDateImpl(
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseEditEventChangeDueDateImpl
    implements FinanceExpenseEditEventChangeDueDate {
  const _$FinanceExpenseEditEventChangeDueDateImpl({required this.dueDate});

  @override
  final DateTime dueDate;

  @override
  String toString() {
    return 'FinanceExpenseEditEvent.changeDueDate(dueDate: $dueDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseEditEventChangeDueDateImpl &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dueDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseEditEventChangeDueDateImplCopyWith<
          _$FinanceExpenseEditEventChangeDueDateImpl>
      get copyWith => __$$FinanceExpenseEditEventChangeDueDateImplCopyWithImpl<
          _$FinanceExpenseEditEventChangeDueDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime dueDate) changeDueDate,
    required TResult Function(String description) changeDescription,
    required TResult Function(String id, String title) changeCategory,
    required TResult Function(PaymentMethodEnums paymentMethod)
        changePaymentMethod,
    required TResult Function(String id, String number)
        changePaymentMethodCreditCard,
    required TResult Function(ExpenseItem item) addExpenseItem,
    required TResult Function(VoidCallback callBack) save,
  }) {
    return changeDueDate(dueDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime dueDate)? changeDueDate,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String id, String title)? changeCategory,
    TResult? Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult? Function(String id, String number)? changePaymentMethodCreditCard,
    TResult? Function(ExpenseItem item)? addExpenseItem,
    TResult? Function(VoidCallback callBack)? save,
  }) {
    return changeDueDate?.call(dueDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime dueDate)? changeDueDate,
    TResult Function(String description)? changeDescription,
    TResult Function(String id, String title)? changeCategory,
    TResult Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult Function(String id, String number)? changePaymentMethodCreditCard,
    TResult Function(ExpenseItem item)? addExpenseItem,
    TResult Function(VoidCallback callBack)? save,
    required TResult orElse(),
  }) {
    if (changeDueDate != null) {
      return changeDueDate(dueDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseEditEventLoad value) load,
    required TResult Function(FinanceExpenseEditEventChangeDueDate value)
        changeDueDate,
    required TResult Function(FinanceExpenseEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseEditEventChangeCategory value)
        changeCategory,
    required TResult Function(FinanceExpenseEditEventChangePaymentMethod value)
        changePaymentMethod,
    required TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)
        changePaymentMethodCreditCard,
    required TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)
        addExpenseItem,
    required TResult Function(FinanceExpenseEditEventChangeSave value) save,
  }) {
    return changeDueDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditEventLoad value)? load,
    TResult? Function(FinanceExpenseEditEventChangeDueDate value)?
        changeDueDate,
    TResult? Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult? Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult? Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult? Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult? Function(FinanceExpenseEditEventChangeSave value)? save,
  }) {
    return changeDueDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditEventLoad value)? load,
    TResult Function(FinanceExpenseEditEventChangeDueDate value)? changeDueDate,
    TResult Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult Function(FinanceExpenseEditEventChangeSave value)? save,
    required TResult orElse(),
  }) {
    if (changeDueDate != null) {
      return changeDueDate(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseEditEventChangeDueDate
    implements FinanceExpenseEditEvent {
  const factory FinanceExpenseEditEventChangeDueDate(
          {required final DateTime dueDate}) =
      _$FinanceExpenseEditEventChangeDueDateImpl;

  DateTime get dueDate;
  @JsonKey(ignore: true)
  _$$FinanceExpenseEditEventChangeDueDateImplCopyWith<
          _$FinanceExpenseEditEventChangeDueDateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseEditEventChangeDescriptionImplCopyWith<$Res> {
  factory _$$FinanceExpenseEditEventChangeDescriptionImplCopyWith(
          _$FinanceExpenseEditEventChangeDescriptionImpl value,
          $Res Function(_$FinanceExpenseEditEventChangeDescriptionImpl) then) =
      __$$FinanceExpenseEditEventChangeDescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$FinanceExpenseEditEventChangeDescriptionImplCopyWithImpl<$Res>
    extends _$FinanceExpenseEditEventCopyWithImpl<$Res,
        _$FinanceExpenseEditEventChangeDescriptionImpl>
    implements _$$FinanceExpenseEditEventChangeDescriptionImplCopyWith<$Res> {
  __$$FinanceExpenseEditEventChangeDescriptionImplCopyWithImpl(
      _$FinanceExpenseEditEventChangeDescriptionImpl _value,
      $Res Function(_$FinanceExpenseEditEventChangeDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$FinanceExpenseEditEventChangeDescriptionImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseEditEventChangeDescriptionImpl
    implements FinanceExpenseEditEventChangeDescription {
  const _$FinanceExpenseEditEventChangeDescriptionImpl(
      {required this.description});

  @override
  final String description;

  @override
  String toString() {
    return 'FinanceExpenseEditEvent.changeDescription(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseEditEventChangeDescriptionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseEditEventChangeDescriptionImplCopyWith<
          _$FinanceExpenseEditEventChangeDescriptionImpl>
      get copyWith =>
          __$$FinanceExpenseEditEventChangeDescriptionImplCopyWithImpl<
              _$FinanceExpenseEditEventChangeDescriptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime dueDate) changeDueDate,
    required TResult Function(String description) changeDescription,
    required TResult Function(String id, String title) changeCategory,
    required TResult Function(PaymentMethodEnums paymentMethod)
        changePaymentMethod,
    required TResult Function(String id, String number)
        changePaymentMethodCreditCard,
    required TResult Function(ExpenseItem item) addExpenseItem,
    required TResult Function(VoidCallback callBack) save,
  }) {
    return changeDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime dueDate)? changeDueDate,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String id, String title)? changeCategory,
    TResult? Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult? Function(String id, String number)? changePaymentMethodCreditCard,
    TResult? Function(ExpenseItem item)? addExpenseItem,
    TResult? Function(VoidCallback callBack)? save,
  }) {
    return changeDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime dueDate)? changeDueDate,
    TResult Function(String description)? changeDescription,
    TResult Function(String id, String title)? changeCategory,
    TResult Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult Function(String id, String number)? changePaymentMethodCreditCard,
    TResult Function(ExpenseItem item)? addExpenseItem,
    TResult Function(VoidCallback callBack)? save,
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
    required TResult Function(FinanceExpenseEditEventLoad value) load,
    required TResult Function(FinanceExpenseEditEventChangeDueDate value)
        changeDueDate,
    required TResult Function(FinanceExpenseEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseEditEventChangeCategory value)
        changeCategory,
    required TResult Function(FinanceExpenseEditEventChangePaymentMethod value)
        changePaymentMethod,
    required TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)
        changePaymentMethodCreditCard,
    required TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)
        addExpenseItem,
    required TResult Function(FinanceExpenseEditEventChangeSave value) save,
  }) {
    return changeDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditEventLoad value)? load,
    TResult? Function(FinanceExpenseEditEventChangeDueDate value)?
        changeDueDate,
    TResult? Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult? Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult? Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult? Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult? Function(FinanceExpenseEditEventChangeSave value)? save,
  }) {
    return changeDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditEventLoad value)? load,
    TResult Function(FinanceExpenseEditEventChangeDueDate value)? changeDueDate,
    TResult Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult Function(FinanceExpenseEditEventChangeSave value)? save,
    required TResult orElse(),
  }) {
    if (changeDescription != null) {
      return changeDescription(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseEditEventChangeDescription
    implements FinanceExpenseEditEvent {
  const factory FinanceExpenseEditEventChangeDescription(
          {required final String description}) =
      _$FinanceExpenseEditEventChangeDescriptionImpl;

  String get description;
  @JsonKey(ignore: true)
  _$$FinanceExpenseEditEventChangeDescriptionImplCopyWith<
          _$FinanceExpenseEditEventChangeDescriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseEditEventChangeCategoryImplCopyWith<$Res> {
  factory _$$FinanceExpenseEditEventChangeCategoryImplCopyWith(
          _$FinanceExpenseEditEventChangeCategoryImpl value,
          $Res Function(_$FinanceExpenseEditEventChangeCategoryImpl) then) =
      __$$FinanceExpenseEditEventChangeCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$FinanceExpenseEditEventChangeCategoryImplCopyWithImpl<$Res>
    extends _$FinanceExpenseEditEventCopyWithImpl<$Res,
        _$FinanceExpenseEditEventChangeCategoryImpl>
    implements _$$FinanceExpenseEditEventChangeCategoryImplCopyWith<$Res> {
  __$$FinanceExpenseEditEventChangeCategoryImplCopyWithImpl(
      _$FinanceExpenseEditEventChangeCategoryImpl _value,
      $Res Function(_$FinanceExpenseEditEventChangeCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$FinanceExpenseEditEventChangeCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseEditEventChangeCategoryImpl
    implements FinanceExpenseEditEventChangeCategory {
  const _$FinanceExpenseEditEventChangeCategoryImpl(
      {required this.id, required this.title});

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'FinanceExpenseEditEvent.changeCategory(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseEditEventChangeCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseEditEventChangeCategoryImplCopyWith<
          _$FinanceExpenseEditEventChangeCategoryImpl>
      get copyWith => __$$FinanceExpenseEditEventChangeCategoryImplCopyWithImpl<
          _$FinanceExpenseEditEventChangeCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime dueDate) changeDueDate,
    required TResult Function(String description) changeDescription,
    required TResult Function(String id, String title) changeCategory,
    required TResult Function(PaymentMethodEnums paymentMethod)
        changePaymentMethod,
    required TResult Function(String id, String number)
        changePaymentMethodCreditCard,
    required TResult Function(ExpenseItem item) addExpenseItem,
    required TResult Function(VoidCallback callBack) save,
  }) {
    return changeCategory(id, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime dueDate)? changeDueDate,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String id, String title)? changeCategory,
    TResult? Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult? Function(String id, String number)? changePaymentMethodCreditCard,
    TResult? Function(ExpenseItem item)? addExpenseItem,
    TResult? Function(VoidCallback callBack)? save,
  }) {
    return changeCategory?.call(id, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime dueDate)? changeDueDate,
    TResult Function(String description)? changeDescription,
    TResult Function(String id, String title)? changeCategory,
    TResult Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult Function(String id, String number)? changePaymentMethodCreditCard,
    TResult Function(ExpenseItem item)? addExpenseItem,
    TResult Function(VoidCallback callBack)? save,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(id, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseEditEventLoad value) load,
    required TResult Function(FinanceExpenseEditEventChangeDueDate value)
        changeDueDate,
    required TResult Function(FinanceExpenseEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseEditEventChangeCategory value)
        changeCategory,
    required TResult Function(FinanceExpenseEditEventChangePaymentMethod value)
        changePaymentMethod,
    required TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)
        changePaymentMethodCreditCard,
    required TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)
        addExpenseItem,
    required TResult Function(FinanceExpenseEditEventChangeSave value) save,
  }) {
    return changeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditEventLoad value)? load,
    TResult? Function(FinanceExpenseEditEventChangeDueDate value)?
        changeDueDate,
    TResult? Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult? Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult? Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult? Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult? Function(FinanceExpenseEditEventChangeSave value)? save,
  }) {
    return changeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditEventLoad value)? load,
    TResult Function(FinanceExpenseEditEventChangeDueDate value)? changeDueDate,
    TResult Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult Function(FinanceExpenseEditEventChangeSave value)? save,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseEditEventChangeCategory
    implements FinanceExpenseEditEvent {
  const factory FinanceExpenseEditEventChangeCategory(
          {required final String id, required final String title}) =
      _$FinanceExpenseEditEventChangeCategoryImpl;

  String get id;
  String get title;
  @JsonKey(ignore: true)
  _$$FinanceExpenseEditEventChangeCategoryImplCopyWith<
          _$FinanceExpenseEditEventChangeCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseEditEventChangePaymentMethodImplCopyWith<$Res> {
  factory _$$FinanceExpenseEditEventChangePaymentMethodImplCopyWith(
          _$FinanceExpenseEditEventChangePaymentMethodImpl value,
          $Res Function(_$FinanceExpenseEditEventChangePaymentMethodImpl)
              then) =
      __$$FinanceExpenseEditEventChangePaymentMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethodEnums paymentMethod});
}

/// @nodoc
class __$$FinanceExpenseEditEventChangePaymentMethodImplCopyWithImpl<$Res>
    extends _$FinanceExpenseEditEventCopyWithImpl<$Res,
        _$FinanceExpenseEditEventChangePaymentMethodImpl>
    implements _$$FinanceExpenseEditEventChangePaymentMethodImplCopyWith<$Res> {
  __$$FinanceExpenseEditEventChangePaymentMethodImplCopyWithImpl(
      _$FinanceExpenseEditEventChangePaymentMethodImpl _value,
      $Res Function(_$FinanceExpenseEditEventChangePaymentMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = null,
  }) {
    return _then(_$FinanceExpenseEditEventChangePaymentMethodImpl(
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodEnums,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseEditEventChangePaymentMethodImpl
    implements FinanceExpenseEditEventChangePaymentMethod {
  const _$FinanceExpenseEditEventChangePaymentMethodImpl(
      {required this.paymentMethod});

  @override
  final PaymentMethodEnums paymentMethod;

  @override
  String toString() {
    return 'FinanceExpenseEditEvent.changePaymentMethod(paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseEditEventChangePaymentMethodImpl &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseEditEventChangePaymentMethodImplCopyWith<
          _$FinanceExpenseEditEventChangePaymentMethodImpl>
      get copyWith =>
          __$$FinanceExpenseEditEventChangePaymentMethodImplCopyWithImpl<
                  _$FinanceExpenseEditEventChangePaymentMethodImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime dueDate) changeDueDate,
    required TResult Function(String description) changeDescription,
    required TResult Function(String id, String title) changeCategory,
    required TResult Function(PaymentMethodEnums paymentMethod)
        changePaymentMethod,
    required TResult Function(String id, String number)
        changePaymentMethodCreditCard,
    required TResult Function(ExpenseItem item) addExpenseItem,
    required TResult Function(VoidCallback callBack) save,
  }) {
    return changePaymentMethod(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime dueDate)? changeDueDate,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String id, String title)? changeCategory,
    TResult? Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult? Function(String id, String number)? changePaymentMethodCreditCard,
    TResult? Function(ExpenseItem item)? addExpenseItem,
    TResult? Function(VoidCallback callBack)? save,
  }) {
    return changePaymentMethod?.call(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime dueDate)? changeDueDate,
    TResult Function(String description)? changeDescription,
    TResult Function(String id, String title)? changeCategory,
    TResult Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult Function(String id, String number)? changePaymentMethodCreditCard,
    TResult Function(ExpenseItem item)? addExpenseItem,
    TResult Function(VoidCallback callBack)? save,
    required TResult orElse(),
  }) {
    if (changePaymentMethod != null) {
      return changePaymentMethod(paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseEditEventLoad value) load,
    required TResult Function(FinanceExpenseEditEventChangeDueDate value)
        changeDueDate,
    required TResult Function(FinanceExpenseEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseEditEventChangeCategory value)
        changeCategory,
    required TResult Function(FinanceExpenseEditEventChangePaymentMethod value)
        changePaymentMethod,
    required TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)
        changePaymentMethodCreditCard,
    required TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)
        addExpenseItem,
    required TResult Function(FinanceExpenseEditEventChangeSave value) save,
  }) {
    return changePaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditEventLoad value)? load,
    TResult? Function(FinanceExpenseEditEventChangeDueDate value)?
        changeDueDate,
    TResult? Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult? Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult? Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult? Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult? Function(FinanceExpenseEditEventChangeSave value)? save,
  }) {
    return changePaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditEventLoad value)? load,
    TResult Function(FinanceExpenseEditEventChangeDueDate value)? changeDueDate,
    TResult Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult Function(FinanceExpenseEditEventChangeSave value)? save,
    required TResult orElse(),
  }) {
    if (changePaymentMethod != null) {
      return changePaymentMethod(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseEditEventChangePaymentMethod
    implements FinanceExpenseEditEvent {
  const factory FinanceExpenseEditEventChangePaymentMethod(
          {required final PaymentMethodEnums paymentMethod}) =
      _$FinanceExpenseEditEventChangePaymentMethodImpl;

  PaymentMethodEnums get paymentMethod;
  @JsonKey(ignore: true)
  _$$FinanceExpenseEditEventChangePaymentMethodImplCopyWith<
          _$FinanceExpenseEditEventChangePaymentMethodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseEditEventChangePaymentMethodCreditCardImplCopyWith<
    $Res> {
  factory _$$FinanceExpenseEditEventChangePaymentMethodCreditCardImplCopyWith(
          _$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl value,
          $Res Function(
                  _$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl)
              then) =
      __$$FinanceExpenseEditEventChangePaymentMethodCreditCardImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({String id, String number});
}

/// @nodoc
class __$$FinanceExpenseEditEventChangePaymentMethodCreditCardImplCopyWithImpl<
        $Res>
    extends _$FinanceExpenseEditEventCopyWithImpl<$Res,
        _$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl>
    implements
        _$$FinanceExpenseEditEventChangePaymentMethodCreditCardImplCopyWith<
            $Res> {
  __$$FinanceExpenseEditEventChangePaymentMethodCreditCardImplCopyWithImpl(
      _$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl _value,
      $Res Function(_$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
  }) {
    return _then(_$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl
    implements FinanceExpenseEditEventChangePaymentMethodCreditCard {
  const _$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl(
      {required this.id, required this.number});

  @override
  final String id;
  @override
  final String number;

  @override
  String toString() {
    return 'FinanceExpenseEditEvent.changePaymentMethodCreditCard(id: $id, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseEditEventChangePaymentMethodCreditCardImplCopyWith<
          _$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl>
      get copyWith =>
          __$$FinanceExpenseEditEventChangePaymentMethodCreditCardImplCopyWithImpl<
                  _$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime dueDate) changeDueDate,
    required TResult Function(String description) changeDescription,
    required TResult Function(String id, String title) changeCategory,
    required TResult Function(PaymentMethodEnums paymentMethod)
        changePaymentMethod,
    required TResult Function(String id, String number)
        changePaymentMethodCreditCard,
    required TResult Function(ExpenseItem item) addExpenseItem,
    required TResult Function(VoidCallback callBack) save,
  }) {
    return changePaymentMethodCreditCard(id, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime dueDate)? changeDueDate,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String id, String title)? changeCategory,
    TResult? Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult? Function(String id, String number)? changePaymentMethodCreditCard,
    TResult? Function(ExpenseItem item)? addExpenseItem,
    TResult? Function(VoidCallback callBack)? save,
  }) {
    return changePaymentMethodCreditCard?.call(id, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime dueDate)? changeDueDate,
    TResult Function(String description)? changeDescription,
    TResult Function(String id, String title)? changeCategory,
    TResult Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult Function(String id, String number)? changePaymentMethodCreditCard,
    TResult Function(ExpenseItem item)? addExpenseItem,
    TResult Function(VoidCallback callBack)? save,
    required TResult orElse(),
  }) {
    if (changePaymentMethodCreditCard != null) {
      return changePaymentMethodCreditCard(id, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseEditEventLoad value) load,
    required TResult Function(FinanceExpenseEditEventChangeDueDate value)
        changeDueDate,
    required TResult Function(FinanceExpenseEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseEditEventChangeCategory value)
        changeCategory,
    required TResult Function(FinanceExpenseEditEventChangePaymentMethod value)
        changePaymentMethod,
    required TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)
        changePaymentMethodCreditCard,
    required TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)
        addExpenseItem,
    required TResult Function(FinanceExpenseEditEventChangeSave value) save,
  }) {
    return changePaymentMethodCreditCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditEventLoad value)? load,
    TResult? Function(FinanceExpenseEditEventChangeDueDate value)?
        changeDueDate,
    TResult? Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult? Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult? Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult? Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult? Function(FinanceExpenseEditEventChangeSave value)? save,
  }) {
    return changePaymentMethodCreditCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditEventLoad value)? load,
    TResult Function(FinanceExpenseEditEventChangeDueDate value)? changeDueDate,
    TResult Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult Function(FinanceExpenseEditEventChangeSave value)? save,
    required TResult orElse(),
  }) {
    if (changePaymentMethodCreditCard != null) {
      return changePaymentMethodCreditCard(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseEditEventChangePaymentMethodCreditCard
    implements FinanceExpenseEditEvent {
  const factory FinanceExpenseEditEventChangePaymentMethodCreditCard(
          {required final String id, required final String number}) =
      _$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl;

  String get id;
  String get number;
  @JsonKey(ignore: true)
  _$$FinanceExpenseEditEventChangePaymentMethodCreditCardImplCopyWith<
          _$FinanceExpenseEditEventChangePaymentMethodCreditCardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseEditEventChangeAddExpenseItemImplCopyWith<
    $Res> {
  factory _$$FinanceExpenseEditEventChangeAddExpenseItemImplCopyWith(
          _$FinanceExpenseEditEventChangeAddExpenseItemImpl value,
          $Res Function(_$FinanceExpenseEditEventChangeAddExpenseItemImpl)
              then) =
      __$$FinanceExpenseEditEventChangeAddExpenseItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseItem item});

  $ExpenseItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$FinanceExpenseEditEventChangeAddExpenseItemImplCopyWithImpl<$Res>
    extends _$FinanceExpenseEditEventCopyWithImpl<$Res,
        _$FinanceExpenseEditEventChangeAddExpenseItemImpl>
    implements
        _$$FinanceExpenseEditEventChangeAddExpenseItemImplCopyWith<$Res> {
  __$$FinanceExpenseEditEventChangeAddExpenseItemImplCopyWithImpl(
      _$FinanceExpenseEditEventChangeAddExpenseItemImpl _value,
      $Res Function(_$FinanceExpenseEditEventChangeAddExpenseItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$FinanceExpenseEditEventChangeAddExpenseItemImpl(
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

class _$FinanceExpenseEditEventChangeAddExpenseItemImpl
    implements FinanceExpenseEditEventChangeAddExpenseItem {
  const _$FinanceExpenseEditEventChangeAddExpenseItemImpl({required this.item});

  @override
  final ExpenseItem item;

  @override
  String toString() {
    return 'FinanceExpenseEditEvent.addExpenseItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseEditEventChangeAddExpenseItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseEditEventChangeAddExpenseItemImplCopyWith<
          _$FinanceExpenseEditEventChangeAddExpenseItemImpl>
      get copyWith =>
          __$$FinanceExpenseEditEventChangeAddExpenseItemImplCopyWithImpl<
                  _$FinanceExpenseEditEventChangeAddExpenseItemImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime dueDate) changeDueDate,
    required TResult Function(String description) changeDescription,
    required TResult Function(String id, String title) changeCategory,
    required TResult Function(PaymentMethodEnums paymentMethod)
        changePaymentMethod,
    required TResult Function(String id, String number)
        changePaymentMethodCreditCard,
    required TResult Function(ExpenseItem item) addExpenseItem,
    required TResult Function(VoidCallback callBack) save,
  }) {
    return addExpenseItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime dueDate)? changeDueDate,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String id, String title)? changeCategory,
    TResult? Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult? Function(String id, String number)? changePaymentMethodCreditCard,
    TResult? Function(ExpenseItem item)? addExpenseItem,
    TResult? Function(VoidCallback callBack)? save,
  }) {
    return addExpenseItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime dueDate)? changeDueDate,
    TResult Function(String description)? changeDescription,
    TResult Function(String id, String title)? changeCategory,
    TResult Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult Function(String id, String number)? changePaymentMethodCreditCard,
    TResult Function(ExpenseItem item)? addExpenseItem,
    TResult Function(VoidCallback callBack)? save,
    required TResult orElse(),
  }) {
    if (addExpenseItem != null) {
      return addExpenseItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseEditEventLoad value) load,
    required TResult Function(FinanceExpenseEditEventChangeDueDate value)
        changeDueDate,
    required TResult Function(FinanceExpenseEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseEditEventChangeCategory value)
        changeCategory,
    required TResult Function(FinanceExpenseEditEventChangePaymentMethod value)
        changePaymentMethod,
    required TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)
        changePaymentMethodCreditCard,
    required TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)
        addExpenseItem,
    required TResult Function(FinanceExpenseEditEventChangeSave value) save,
  }) {
    return addExpenseItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditEventLoad value)? load,
    TResult? Function(FinanceExpenseEditEventChangeDueDate value)?
        changeDueDate,
    TResult? Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult? Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult? Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult? Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult? Function(FinanceExpenseEditEventChangeSave value)? save,
  }) {
    return addExpenseItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditEventLoad value)? load,
    TResult Function(FinanceExpenseEditEventChangeDueDate value)? changeDueDate,
    TResult Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult Function(FinanceExpenseEditEventChangeSave value)? save,
    required TResult orElse(),
  }) {
    if (addExpenseItem != null) {
      return addExpenseItem(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseEditEventChangeAddExpenseItem
    implements FinanceExpenseEditEvent {
  const factory FinanceExpenseEditEventChangeAddExpenseItem(
          {required final ExpenseItem item}) =
      _$FinanceExpenseEditEventChangeAddExpenseItemImpl;

  ExpenseItem get item;
  @JsonKey(ignore: true)
  _$$FinanceExpenseEditEventChangeAddExpenseItemImplCopyWith<
          _$FinanceExpenseEditEventChangeAddExpenseItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseEditEventChangeSaveImplCopyWith<$Res> {
  factory _$$FinanceExpenseEditEventChangeSaveImplCopyWith(
          _$FinanceExpenseEditEventChangeSaveImpl value,
          $Res Function(_$FinanceExpenseEditEventChangeSaveImpl) then) =
      __$$FinanceExpenseEditEventChangeSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback callBack});
}

/// @nodoc
class __$$FinanceExpenseEditEventChangeSaveImplCopyWithImpl<$Res>
    extends _$FinanceExpenseEditEventCopyWithImpl<$Res,
        _$FinanceExpenseEditEventChangeSaveImpl>
    implements _$$FinanceExpenseEditEventChangeSaveImplCopyWith<$Res> {
  __$$FinanceExpenseEditEventChangeSaveImplCopyWithImpl(
      _$FinanceExpenseEditEventChangeSaveImpl _value,
      $Res Function(_$FinanceExpenseEditEventChangeSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callBack = null,
  }) {
    return _then(_$FinanceExpenseEditEventChangeSaveImpl(
      null == callBack
          ? _value.callBack
          : callBack // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseEditEventChangeSaveImpl
    implements FinanceExpenseEditEventChangeSave {
  const _$FinanceExpenseEditEventChangeSaveImpl(this.callBack);

  @override
  final VoidCallback callBack;

  @override
  String toString() {
    return 'FinanceExpenseEditEvent.save(callBack: $callBack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseEditEventChangeSaveImpl &&
            (identical(other.callBack, callBack) ||
                other.callBack == callBack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callBack);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseEditEventChangeSaveImplCopyWith<
          _$FinanceExpenseEditEventChangeSaveImpl>
      get copyWith => __$$FinanceExpenseEditEventChangeSaveImplCopyWithImpl<
          _$FinanceExpenseEditEventChangeSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(DateTime dueDate) changeDueDate,
    required TResult Function(String description) changeDescription,
    required TResult Function(String id, String title) changeCategory,
    required TResult Function(PaymentMethodEnums paymentMethod)
        changePaymentMethod,
    required TResult Function(String id, String number)
        changePaymentMethodCreditCard,
    required TResult Function(ExpenseItem item) addExpenseItem,
    required TResult Function(VoidCallback callBack) save,
  }) {
    return save(callBack);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(DateTime dueDate)? changeDueDate,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String id, String title)? changeCategory,
    TResult? Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult? Function(String id, String number)? changePaymentMethodCreditCard,
    TResult? Function(ExpenseItem item)? addExpenseItem,
    TResult? Function(VoidCallback callBack)? save,
  }) {
    return save?.call(callBack);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(DateTime dueDate)? changeDueDate,
    TResult Function(String description)? changeDescription,
    TResult Function(String id, String title)? changeCategory,
    TResult Function(PaymentMethodEnums paymentMethod)? changePaymentMethod,
    TResult Function(String id, String number)? changePaymentMethodCreditCard,
    TResult Function(ExpenseItem item)? addExpenseItem,
    TResult Function(VoidCallback callBack)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(callBack);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseEditEventLoad value) load,
    required TResult Function(FinanceExpenseEditEventChangeDueDate value)
        changeDueDate,
    required TResult Function(FinanceExpenseEditEventChangeDescription value)
        changeDescription,
    required TResult Function(FinanceExpenseEditEventChangeCategory value)
        changeCategory,
    required TResult Function(FinanceExpenseEditEventChangePaymentMethod value)
        changePaymentMethod,
    required TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)
        changePaymentMethodCreditCard,
    required TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)
        addExpenseItem,
    required TResult Function(FinanceExpenseEditEventChangeSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditEventLoad value)? load,
    TResult? Function(FinanceExpenseEditEventChangeDueDate value)?
        changeDueDate,
    TResult? Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult? Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult? Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult? Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult? Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult? Function(FinanceExpenseEditEventChangeSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditEventLoad value)? load,
    TResult Function(FinanceExpenseEditEventChangeDueDate value)? changeDueDate,
    TResult Function(FinanceExpenseEditEventChangeDescription value)?
        changeDescription,
    TResult Function(FinanceExpenseEditEventChangeCategory value)?
        changeCategory,
    TResult Function(FinanceExpenseEditEventChangePaymentMethod value)?
        changePaymentMethod,
    TResult Function(
            FinanceExpenseEditEventChangePaymentMethodCreditCard value)?
        changePaymentMethodCreditCard,
    TResult Function(FinanceExpenseEditEventChangeAddExpenseItem value)?
        addExpenseItem,
    TResult Function(FinanceExpenseEditEventChangeSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseEditEventChangeSave
    implements FinanceExpenseEditEvent {
  const factory FinanceExpenseEditEventChangeSave(final VoidCallback callBack) =
      _$FinanceExpenseEditEventChangeSaveImpl;

  VoidCallback get callBack;
  @JsonKey(ignore: true)
  _$$FinanceExpenseEditEventChangeSaveImplCopyWith<
          _$FinanceExpenseEditEventChangeSaveImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FinanceExpenseEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseEditStateInit value) init,
    required TResult Function(FinanceExpenseEditStateLoading value) loading,
    required TResult Function(FinanceExpenseEditStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditStateInit value)? init,
    TResult? Function(FinanceExpenseEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseEditStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditStateInit value)? init,
    TResult Function(FinanceExpenseEditStateLoading value)? loading,
    TResult Function(FinanceExpenseEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceExpenseEditStateCopyWith<$Res> {
  factory $FinanceExpenseEditStateCopyWith(FinanceExpenseEditState value,
          $Res Function(FinanceExpenseEditState) then) =
      _$FinanceExpenseEditStateCopyWithImpl<$Res, FinanceExpenseEditState>;
}

/// @nodoc
class _$FinanceExpenseEditStateCopyWithImpl<$Res,
        $Val extends FinanceExpenseEditState>
    implements $FinanceExpenseEditStateCopyWith<$Res> {
  _$FinanceExpenseEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceExpenseEditStateInitImplCopyWith<$Res> {
  factory _$$FinanceExpenseEditStateInitImplCopyWith(
          _$FinanceExpenseEditStateInitImpl value,
          $Res Function(_$FinanceExpenseEditStateInitImpl) then) =
      __$$FinanceExpenseEditStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceExpenseEditStateInitImplCopyWithImpl<$Res>
    extends _$FinanceExpenseEditStateCopyWithImpl<$Res,
        _$FinanceExpenseEditStateInitImpl>
    implements _$$FinanceExpenseEditStateInitImplCopyWith<$Res> {
  __$$FinanceExpenseEditStateInitImplCopyWithImpl(
      _$FinanceExpenseEditStateInitImpl _value,
      $Res Function(_$FinanceExpenseEditStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceExpenseEditStateInitImpl implements FinanceExpenseEditStateInit {
  const _$FinanceExpenseEditStateInitImpl();

  @override
  String toString() {
    return 'FinanceExpenseEditState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseEditStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)
        loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)?
        loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)?
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
    required TResult Function(FinanceExpenseEditStateInit value) init,
    required TResult Function(FinanceExpenseEditStateLoading value) loading,
    required TResult Function(FinanceExpenseEditStateLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditStateInit value)? init,
    TResult? Function(FinanceExpenseEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseEditStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditStateInit value)? init,
    TResult Function(FinanceExpenseEditStateLoading value)? loading,
    TResult Function(FinanceExpenseEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseEditStateInit implements FinanceExpenseEditState {
  const factory FinanceExpenseEditStateInit() =
      _$FinanceExpenseEditStateInitImpl;
}

/// @nodoc
abstract class _$$FinanceExpenseEditStateLoadingImplCopyWith<$Res> {
  factory _$$FinanceExpenseEditStateLoadingImplCopyWith(
          _$FinanceExpenseEditStateLoadingImpl value,
          $Res Function(_$FinanceExpenseEditStateLoadingImpl) then) =
      __$$FinanceExpenseEditStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType crudType});

  $CrudTypeCopyWith<$Res> get crudType;
}

/// @nodoc
class __$$FinanceExpenseEditStateLoadingImplCopyWithImpl<$Res>
    extends _$FinanceExpenseEditStateCopyWithImpl<$Res,
        _$FinanceExpenseEditStateLoadingImpl>
    implements _$$FinanceExpenseEditStateLoadingImplCopyWith<$Res> {
  __$$FinanceExpenseEditStateLoadingImplCopyWithImpl(
      _$FinanceExpenseEditStateLoadingImpl _value,
      $Res Function(_$FinanceExpenseEditStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crudType = null,
  }) {
    return _then(_$FinanceExpenseEditStateLoadingImpl(
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

class _$FinanceExpenseEditStateLoadingImpl
    implements FinanceExpenseEditStateLoading {
  const _$FinanceExpenseEditStateLoadingImpl({required this.crudType});

  @override
  final CrudType crudType;

  @override
  String toString() {
    return 'FinanceExpenseEditState.loading(crudType: $crudType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseEditStateLoadingImpl &&
            (identical(other.crudType, crudType) ||
                other.crudType == crudType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crudType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseEditStateLoadingImplCopyWith<
          _$FinanceExpenseEditStateLoadingImpl>
      get copyWith => __$$FinanceExpenseEditStateLoadingImplCopyWithImpl<
          _$FinanceExpenseEditStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)
        loaded,
  }) {
    return loading(crudType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)?
        loaded,
  }) {
    return loading?.call(crudType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)?
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
    required TResult Function(FinanceExpenseEditStateInit value) init,
    required TResult Function(FinanceExpenseEditStateLoading value) loading,
    required TResult Function(FinanceExpenseEditStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditStateInit value)? init,
    TResult? Function(FinanceExpenseEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseEditStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditStateInit value)? init,
    TResult Function(FinanceExpenseEditStateLoading value)? loading,
    TResult Function(FinanceExpenseEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseEditStateLoading
    implements FinanceExpenseEditState {
  const factory FinanceExpenseEditStateLoading(
          {required final CrudType crudType}) =
      _$FinanceExpenseEditStateLoadingImpl;

  CrudType get crudType;
  @JsonKey(ignore: true)
  _$$FinanceExpenseEditStateLoadingImplCopyWith<
          _$FinanceExpenseEditStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseEditStateLoadedImplCopyWith<$Res> {
  factory _$$FinanceExpenseEditStateLoadedImplCopyWith(
          _$FinanceExpenseEditStateLoadedImpl value,
          $Res Function(_$FinanceExpenseEditStateLoadedImpl) then) =
      __$$FinanceExpenseEditStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CrudType crudType,
      Expense expense,
      List<ExpenseCategory> categories,
      List<PaymentCard> cards});

  $CrudTypeCopyWith<$Res> get crudType;
  $ExpenseCopyWith<$Res> get expense;
}

/// @nodoc
class __$$FinanceExpenseEditStateLoadedImplCopyWithImpl<$Res>
    extends _$FinanceExpenseEditStateCopyWithImpl<$Res,
        _$FinanceExpenseEditStateLoadedImpl>
    implements _$$FinanceExpenseEditStateLoadedImplCopyWith<$Res> {
  __$$FinanceExpenseEditStateLoadedImplCopyWithImpl(
      _$FinanceExpenseEditStateLoadedImpl _value,
      $Res Function(_$FinanceExpenseEditStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crudType = null,
    Object? expense = null,
    Object? categories = null,
    Object? cards = null,
  }) {
    return _then(_$FinanceExpenseEditStateLoadedImpl(
      crudType: null == crudType
          ? _value.crudType
          : crudType // ignore: cast_nullable_to_non_nullable
              as CrudType,
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as Expense,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategory>,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<PaymentCard>,
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
  $ExpenseCopyWith<$Res> get expense {
    return $ExpenseCopyWith<$Res>(_value.expense, (value) {
      return _then(_value.copyWith(expense: value));
    });
  }
}

/// @nodoc

class _$FinanceExpenseEditStateLoadedImpl
    implements FinanceExpenseEditStateLoaded {
  const _$FinanceExpenseEditStateLoadedImpl(
      {required this.crudType,
      required this.expense,
      required final List<ExpenseCategory> categories,
      required final List<PaymentCard> cards})
      : _categories = categories,
        _cards = cards;

  @override
  final CrudType crudType;
  @override
  final Expense expense;
  final List<ExpenseCategory> _categories;
  @override
  List<ExpenseCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<PaymentCard> _cards;
  @override
  List<PaymentCard> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'FinanceExpenseEditState.loaded(crudType: $crudType, expense: $expense, categories: $categories, cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseEditStateLoadedImpl &&
            (identical(other.crudType, crudType) ||
                other.crudType == crudType) &&
            (identical(other.expense, expense) || other.expense == expense) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      crudType,
      expense,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseEditStateLoadedImplCopyWith<
          _$FinanceExpenseEditStateLoadedImpl>
      get copyWith => __$$FinanceExpenseEditStateLoadedImplCopyWithImpl<
          _$FinanceExpenseEditStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)
        loaded,
  }) {
    return loaded(crudType, expense, categories, cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)?
        loaded,
  }) {
    return loaded?.call(crudType, expense, categories, cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, Expense expense,
            List<ExpenseCategory> categories, List<PaymentCard> cards)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(crudType, expense, categories, cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseEditStateInit value) init,
    required TResult Function(FinanceExpenseEditStateLoading value) loading,
    required TResult Function(FinanceExpenseEditStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseEditStateInit value)? init,
    TResult? Function(FinanceExpenseEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseEditStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseEditStateInit value)? init,
    TResult Function(FinanceExpenseEditStateLoading value)? loading,
    TResult Function(FinanceExpenseEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseEditStateLoaded
    implements FinanceExpenseEditState {
  const factory FinanceExpenseEditStateLoaded(
          {required final CrudType crudType,
          required final Expense expense,
          required final List<ExpenseCategory> categories,
          required final List<PaymentCard> cards}) =
      _$FinanceExpenseEditStateLoadedImpl;

  CrudType get crudType;
  Expense get expense;
  List<ExpenseCategory> get categories;
  List<PaymentCard> get cards;
  @JsonKey(ignore: true)
  _$$FinanceExpenseEditStateLoadedImplCopyWith<
          _$FinanceExpenseEditStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
