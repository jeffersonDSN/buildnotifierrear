// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_expense_card_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinanceExpenseCardEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(String bankName) changeBankName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String name) changeName,
    required TResult Function(int dueDay) changeDueDay,
    required TResult Function(ValueChanged<PaymentCard> callBack) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(String bankName)? changeBankName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String name)? changeName,
    TResult? Function(int dueDay)? changeDueDay,
    TResult? Function(ValueChanged<PaymentCard> callBack)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(String bankName)? changeBankName,
    TResult Function(String number)? changeNumber,
    TResult Function(String name)? changeName,
    TResult Function(int dueDay)? changeDueDay,
    TResult Function(ValueChanged<PaymentCard> callBack)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCardEditEventLoad value) load,
    required TResult Function(FinanceExpenseCardEditEventChangeBankName value)
        changeBankName,
    required TResult Function(FinanceExpenseCardEditEventChangeNumber value)
        changeNumber,
    required TResult Function(FinanceExpenseCardEditEventChangeName value)
        changeName,
    required TResult Function(FinanceExpenseCardEditEventChangDueDay value)
        changeDueDay,
    required TResult Function(FinanceExpenseCardEditEventSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult? Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult? Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult? Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult? Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult? Function(FinanceExpenseCardEditEventSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult Function(FinanceExpenseCardEditEventSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceExpenseCardEditEventCopyWith<$Res> {
  factory $FinanceExpenseCardEditEventCopyWith(
          FinanceExpenseCardEditEvent value,
          $Res Function(FinanceExpenseCardEditEvent) then) =
      _$FinanceExpenseCardEditEventCopyWithImpl<$Res,
          FinanceExpenseCardEditEvent>;
}

/// @nodoc
class _$FinanceExpenseCardEditEventCopyWithImpl<$Res,
        $Val extends FinanceExpenseCardEditEvent>
    implements $FinanceExpenseCardEditEventCopyWith<$Res> {
  _$FinanceExpenseCardEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceExpenseCardEditEventLoadImplCopyWith<$Res> {
  factory _$$FinanceExpenseCardEditEventLoadImplCopyWith(
          _$FinanceExpenseCardEditEventLoadImpl value,
          $Res Function(_$FinanceExpenseCardEditEventLoadImpl) then) =
      __$$FinanceExpenseCardEditEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType crudType});

  $CrudTypeCopyWith<$Res> get crudType;
}

/// @nodoc
class __$$FinanceExpenseCardEditEventLoadImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCardEditEventCopyWithImpl<$Res,
        _$FinanceExpenseCardEditEventLoadImpl>
    implements _$$FinanceExpenseCardEditEventLoadImplCopyWith<$Res> {
  __$$FinanceExpenseCardEditEventLoadImplCopyWithImpl(
      _$FinanceExpenseCardEditEventLoadImpl _value,
      $Res Function(_$FinanceExpenseCardEditEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crudType = null,
  }) {
    return _then(_$FinanceExpenseCardEditEventLoadImpl(
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

class _$FinanceExpenseCardEditEventLoadImpl
    implements FinanceExpenseCardEditEventLoad {
  const _$FinanceExpenseCardEditEventLoadImpl({required this.crudType});

  @override
  final CrudType crudType;

  @override
  String toString() {
    return 'FinanceExpenseCardEditEvent.load(crudType: $crudType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCardEditEventLoadImpl &&
            (identical(other.crudType, crudType) ||
                other.crudType == crudType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crudType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseCardEditEventLoadImplCopyWith<
          _$FinanceExpenseCardEditEventLoadImpl>
      get copyWith => __$$FinanceExpenseCardEditEventLoadImplCopyWithImpl<
          _$FinanceExpenseCardEditEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(String bankName) changeBankName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String name) changeName,
    required TResult Function(int dueDay) changeDueDay,
    required TResult Function(ValueChanged<PaymentCard> callBack) save,
  }) {
    return load(crudType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(String bankName)? changeBankName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String name)? changeName,
    TResult? Function(int dueDay)? changeDueDay,
    TResult? Function(ValueChanged<PaymentCard> callBack)? save,
  }) {
    return load?.call(crudType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(String bankName)? changeBankName,
    TResult Function(String number)? changeNumber,
    TResult Function(String name)? changeName,
    TResult Function(int dueDay)? changeDueDay,
    TResult Function(ValueChanged<PaymentCard> callBack)? save,
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
    required TResult Function(FinanceExpenseCardEditEventLoad value) load,
    required TResult Function(FinanceExpenseCardEditEventChangeBankName value)
        changeBankName,
    required TResult Function(FinanceExpenseCardEditEventChangeNumber value)
        changeNumber,
    required TResult Function(FinanceExpenseCardEditEventChangeName value)
        changeName,
    required TResult Function(FinanceExpenseCardEditEventChangDueDay value)
        changeDueDay,
    required TResult Function(FinanceExpenseCardEditEventSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult? Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult? Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult? Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult? Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult? Function(FinanceExpenseCardEditEventSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult Function(FinanceExpenseCardEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCardEditEventLoad
    implements FinanceExpenseCardEditEvent {
  const factory FinanceExpenseCardEditEventLoad(
          {required final CrudType crudType}) =
      _$FinanceExpenseCardEditEventLoadImpl;

  CrudType get crudType;
  @JsonKey(ignore: true)
  _$$FinanceExpenseCardEditEventLoadImplCopyWith<
          _$FinanceExpenseCardEditEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseCardEditEventChangeBankNameImplCopyWith<$Res> {
  factory _$$FinanceExpenseCardEditEventChangeBankNameImplCopyWith(
          _$FinanceExpenseCardEditEventChangeBankNameImpl value,
          $Res Function(_$FinanceExpenseCardEditEventChangeBankNameImpl) then) =
      __$$FinanceExpenseCardEditEventChangeBankNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bankName});
}

/// @nodoc
class __$$FinanceExpenseCardEditEventChangeBankNameImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCardEditEventCopyWithImpl<$Res,
        _$FinanceExpenseCardEditEventChangeBankNameImpl>
    implements _$$FinanceExpenseCardEditEventChangeBankNameImplCopyWith<$Res> {
  __$$FinanceExpenseCardEditEventChangeBankNameImplCopyWithImpl(
      _$FinanceExpenseCardEditEventChangeBankNameImpl _value,
      $Res Function(_$FinanceExpenseCardEditEventChangeBankNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
  }) {
    return _then(_$FinanceExpenseCardEditEventChangeBankNameImpl(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseCardEditEventChangeBankNameImpl
    implements FinanceExpenseCardEditEventChangeBankName {
  const _$FinanceExpenseCardEditEventChangeBankNameImpl(
      {required this.bankName});

  @override
  final String bankName;

  @override
  String toString() {
    return 'FinanceExpenseCardEditEvent.changeBankName(bankName: $bankName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCardEditEventChangeBankNameImpl &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bankName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseCardEditEventChangeBankNameImplCopyWith<
          _$FinanceExpenseCardEditEventChangeBankNameImpl>
      get copyWith =>
          __$$FinanceExpenseCardEditEventChangeBankNameImplCopyWithImpl<
                  _$FinanceExpenseCardEditEventChangeBankNameImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(String bankName) changeBankName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String name) changeName,
    required TResult Function(int dueDay) changeDueDay,
    required TResult Function(ValueChanged<PaymentCard> callBack) save,
  }) {
    return changeBankName(bankName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(String bankName)? changeBankName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String name)? changeName,
    TResult? Function(int dueDay)? changeDueDay,
    TResult? Function(ValueChanged<PaymentCard> callBack)? save,
  }) {
    return changeBankName?.call(bankName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(String bankName)? changeBankName,
    TResult Function(String number)? changeNumber,
    TResult Function(String name)? changeName,
    TResult Function(int dueDay)? changeDueDay,
    TResult Function(ValueChanged<PaymentCard> callBack)? save,
    required TResult orElse(),
  }) {
    if (changeBankName != null) {
      return changeBankName(bankName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCardEditEventLoad value) load,
    required TResult Function(FinanceExpenseCardEditEventChangeBankName value)
        changeBankName,
    required TResult Function(FinanceExpenseCardEditEventChangeNumber value)
        changeNumber,
    required TResult Function(FinanceExpenseCardEditEventChangeName value)
        changeName,
    required TResult Function(FinanceExpenseCardEditEventChangDueDay value)
        changeDueDay,
    required TResult Function(FinanceExpenseCardEditEventSave value) save,
  }) {
    return changeBankName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult? Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult? Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult? Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult? Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult? Function(FinanceExpenseCardEditEventSave value)? save,
  }) {
    return changeBankName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult Function(FinanceExpenseCardEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeBankName != null) {
      return changeBankName(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCardEditEventChangeBankName
    implements FinanceExpenseCardEditEvent {
  const factory FinanceExpenseCardEditEventChangeBankName(
          {required final String bankName}) =
      _$FinanceExpenseCardEditEventChangeBankNameImpl;

  String get bankName;
  @JsonKey(ignore: true)
  _$$FinanceExpenseCardEditEventChangeBankNameImplCopyWith<
          _$FinanceExpenseCardEditEventChangeBankNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseCardEditEventChangeNumberImplCopyWith<$Res> {
  factory _$$FinanceExpenseCardEditEventChangeNumberImplCopyWith(
          _$FinanceExpenseCardEditEventChangeNumberImpl value,
          $Res Function(_$FinanceExpenseCardEditEventChangeNumberImpl) then) =
      __$$FinanceExpenseCardEditEventChangeNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String number});
}

/// @nodoc
class __$$FinanceExpenseCardEditEventChangeNumberImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCardEditEventCopyWithImpl<$Res,
        _$FinanceExpenseCardEditEventChangeNumberImpl>
    implements _$$FinanceExpenseCardEditEventChangeNumberImplCopyWith<$Res> {
  __$$FinanceExpenseCardEditEventChangeNumberImplCopyWithImpl(
      _$FinanceExpenseCardEditEventChangeNumberImpl _value,
      $Res Function(_$FinanceExpenseCardEditEventChangeNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$FinanceExpenseCardEditEventChangeNumberImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseCardEditEventChangeNumberImpl
    implements FinanceExpenseCardEditEventChangeNumber {
  const _$FinanceExpenseCardEditEventChangeNumberImpl({required this.number});

  @override
  final String number;

  @override
  String toString() {
    return 'FinanceExpenseCardEditEvent.changeNumber(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCardEditEventChangeNumberImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseCardEditEventChangeNumberImplCopyWith<
          _$FinanceExpenseCardEditEventChangeNumberImpl>
      get copyWith =>
          __$$FinanceExpenseCardEditEventChangeNumberImplCopyWithImpl<
              _$FinanceExpenseCardEditEventChangeNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(String bankName) changeBankName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String name) changeName,
    required TResult Function(int dueDay) changeDueDay,
    required TResult Function(ValueChanged<PaymentCard> callBack) save,
  }) {
    return changeNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(String bankName)? changeBankName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String name)? changeName,
    TResult? Function(int dueDay)? changeDueDay,
    TResult? Function(ValueChanged<PaymentCard> callBack)? save,
  }) {
    return changeNumber?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(String bankName)? changeBankName,
    TResult Function(String number)? changeNumber,
    TResult Function(String name)? changeName,
    TResult Function(int dueDay)? changeDueDay,
    TResult Function(ValueChanged<PaymentCard> callBack)? save,
    required TResult orElse(),
  }) {
    if (changeNumber != null) {
      return changeNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCardEditEventLoad value) load,
    required TResult Function(FinanceExpenseCardEditEventChangeBankName value)
        changeBankName,
    required TResult Function(FinanceExpenseCardEditEventChangeNumber value)
        changeNumber,
    required TResult Function(FinanceExpenseCardEditEventChangeName value)
        changeName,
    required TResult Function(FinanceExpenseCardEditEventChangDueDay value)
        changeDueDay,
    required TResult Function(FinanceExpenseCardEditEventSave value) save,
  }) {
    return changeNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult? Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult? Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult? Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult? Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult? Function(FinanceExpenseCardEditEventSave value)? save,
  }) {
    return changeNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult Function(FinanceExpenseCardEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeNumber != null) {
      return changeNumber(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCardEditEventChangeNumber
    implements FinanceExpenseCardEditEvent {
  const factory FinanceExpenseCardEditEventChangeNumber(
          {required final String number}) =
      _$FinanceExpenseCardEditEventChangeNumberImpl;

  String get number;
  @JsonKey(ignore: true)
  _$$FinanceExpenseCardEditEventChangeNumberImplCopyWith<
          _$FinanceExpenseCardEditEventChangeNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseCardEditEventChangeNameImplCopyWith<$Res> {
  factory _$$FinanceExpenseCardEditEventChangeNameImplCopyWith(
          _$FinanceExpenseCardEditEventChangeNameImpl value,
          $Res Function(_$FinanceExpenseCardEditEventChangeNameImpl) then) =
      __$$FinanceExpenseCardEditEventChangeNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$FinanceExpenseCardEditEventChangeNameImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCardEditEventCopyWithImpl<$Res,
        _$FinanceExpenseCardEditEventChangeNameImpl>
    implements _$$FinanceExpenseCardEditEventChangeNameImplCopyWith<$Res> {
  __$$FinanceExpenseCardEditEventChangeNameImplCopyWithImpl(
      _$FinanceExpenseCardEditEventChangeNameImpl _value,
      $Res Function(_$FinanceExpenseCardEditEventChangeNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$FinanceExpenseCardEditEventChangeNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseCardEditEventChangeNameImpl
    implements FinanceExpenseCardEditEventChangeName {
  const _$FinanceExpenseCardEditEventChangeNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'FinanceExpenseCardEditEvent.changeName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCardEditEventChangeNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseCardEditEventChangeNameImplCopyWith<
          _$FinanceExpenseCardEditEventChangeNameImpl>
      get copyWith => __$$FinanceExpenseCardEditEventChangeNameImplCopyWithImpl<
          _$FinanceExpenseCardEditEventChangeNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(String bankName) changeBankName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String name) changeName,
    required TResult Function(int dueDay) changeDueDay,
    required TResult Function(ValueChanged<PaymentCard> callBack) save,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(String bankName)? changeBankName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String name)? changeName,
    TResult? Function(int dueDay)? changeDueDay,
    TResult? Function(ValueChanged<PaymentCard> callBack)? save,
  }) {
    return changeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(String bankName)? changeBankName,
    TResult Function(String number)? changeNumber,
    TResult Function(String name)? changeName,
    TResult Function(int dueDay)? changeDueDay,
    TResult Function(ValueChanged<PaymentCard> callBack)? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCardEditEventLoad value) load,
    required TResult Function(FinanceExpenseCardEditEventChangeBankName value)
        changeBankName,
    required TResult Function(FinanceExpenseCardEditEventChangeNumber value)
        changeNumber,
    required TResult Function(FinanceExpenseCardEditEventChangeName value)
        changeName,
    required TResult Function(FinanceExpenseCardEditEventChangDueDay value)
        changeDueDay,
    required TResult Function(FinanceExpenseCardEditEventSave value) save,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult? Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult? Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult? Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult? Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult? Function(FinanceExpenseCardEditEventSave value)? save,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult Function(FinanceExpenseCardEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCardEditEventChangeName
    implements FinanceExpenseCardEditEvent {
  const factory FinanceExpenseCardEditEventChangeName(
          {required final String name}) =
      _$FinanceExpenseCardEditEventChangeNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$FinanceExpenseCardEditEventChangeNameImplCopyWith<
          _$FinanceExpenseCardEditEventChangeNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseCardEditEventChangDueDayImplCopyWith<$Res> {
  factory _$$FinanceExpenseCardEditEventChangDueDayImplCopyWith(
          _$FinanceExpenseCardEditEventChangDueDayImpl value,
          $Res Function(_$FinanceExpenseCardEditEventChangDueDayImpl) then) =
      __$$FinanceExpenseCardEditEventChangDueDayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int dueDay});
}

/// @nodoc
class __$$FinanceExpenseCardEditEventChangDueDayImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCardEditEventCopyWithImpl<$Res,
        _$FinanceExpenseCardEditEventChangDueDayImpl>
    implements _$$FinanceExpenseCardEditEventChangDueDayImplCopyWith<$Res> {
  __$$FinanceExpenseCardEditEventChangDueDayImplCopyWithImpl(
      _$FinanceExpenseCardEditEventChangDueDayImpl _value,
      $Res Function(_$FinanceExpenseCardEditEventChangDueDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dueDay = null,
  }) {
    return _then(_$FinanceExpenseCardEditEventChangDueDayImpl(
      dueDay: null == dueDay
          ? _value.dueDay
          : dueDay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseCardEditEventChangDueDayImpl
    implements FinanceExpenseCardEditEventChangDueDay {
  const _$FinanceExpenseCardEditEventChangDueDayImpl({required this.dueDay});

  @override
  final int dueDay;

  @override
  String toString() {
    return 'FinanceExpenseCardEditEvent.changeDueDay(dueDay: $dueDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCardEditEventChangDueDayImpl &&
            (identical(other.dueDay, dueDay) || other.dueDay == dueDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dueDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseCardEditEventChangDueDayImplCopyWith<
          _$FinanceExpenseCardEditEventChangDueDayImpl>
      get copyWith =>
          __$$FinanceExpenseCardEditEventChangDueDayImplCopyWithImpl<
              _$FinanceExpenseCardEditEventChangDueDayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(String bankName) changeBankName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String name) changeName,
    required TResult Function(int dueDay) changeDueDay,
    required TResult Function(ValueChanged<PaymentCard> callBack) save,
  }) {
    return changeDueDay(dueDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(String bankName)? changeBankName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String name)? changeName,
    TResult? Function(int dueDay)? changeDueDay,
    TResult? Function(ValueChanged<PaymentCard> callBack)? save,
  }) {
    return changeDueDay?.call(dueDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(String bankName)? changeBankName,
    TResult Function(String number)? changeNumber,
    TResult Function(String name)? changeName,
    TResult Function(int dueDay)? changeDueDay,
    TResult Function(ValueChanged<PaymentCard> callBack)? save,
    required TResult orElse(),
  }) {
    if (changeDueDay != null) {
      return changeDueDay(dueDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCardEditEventLoad value) load,
    required TResult Function(FinanceExpenseCardEditEventChangeBankName value)
        changeBankName,
    required TResult Function(FinanceExpenseCardEditEventChangeNumber value)
        changeNumber,
    required TResult Function(FinanceExpenseCardEditEventChangeName value)
        changeName,
    required TResult Function(FinanceExpenseCardEditEventChangDueDay value)
        changeDueDay,
    required TResult Function(FinanceExpenseCardEditEventSave value) save,
  }) {
    return changeDueDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult? Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult? Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult? Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult? Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult? Function(FinanceExpenseCardEditEventSave value)? save,
  }) {
    return changeDueDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult Function(FinanceExpenseCardEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeDueDay != null) {
      return changeDueDay(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCardEditEventChangDueDay
    implements FinanceExpenseCardEditEvent {
  const factory FinanceExpenseCardEditEventChangDueDay(
          {required final int dueDay}) =
      _$FinanceExpenseCardEditEventChangDueDayImpl;

  int get dueDay;
  @JsonKey(ignore: true)
  _$$FinanceExpenseCardEditEventChangDueDayImplCopyWith<
          _$FinanceExpenseCardEditEventChangDueDayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseCardEditEventSaveImplCopyWith<$Res> {
  factory _$$FinanceExpenseCardEditEventSaveImplCopyWith(
          _$FinanceExpenseCardEditEventSaveImpl value,
          $Res Function(_$FinanceExpenseCardEditEventSaveImpl) then) =
      __$$FinanceExpenseCardEditEventSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ValueChanged<PaymentCard> callBack});
}

/// @nodoc
class __$$FinanceExpenseCardEditEventSaveImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCardEditEventCopyWithImpl<$Res,
        _$FinanceExpenseCardEditEventSaveImpl>
    implements _$$FinanceExpenseCardEditEventSaveImplCopyWith<$Res> {
  __$$FinanceExpenseCardEditEventSaveImplCopyWithImpl(
      _$FinanceExpenseCardEditEventSaveImpl _value,
      $Res Function(_$FinanceExpenseCardEditEventSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callBack = null,
  }) {
    return _then(_$FinanceExpenseCardEditEventSaveImpl(
      callBack: null == callBack
          ? _value.callBack
          : callBack // ignore: cast_nullable_to_non_nullable
              as ValueChanged<PaymentCard>,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseCardEditEventSaveImpl
    implements FinanceExpenseCardEditEventSave {
  const _$FinanceExpenseCardEditEventSaveImpl({required this.callBack});

  @override
  final ValueChanged<PaymentCard> callBack;

  @override
  String toString() {
    return 'FinanceExpenseCardEditEvent.save(callBack: $callBack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCardEditEventSaveImpl &&
            (identical(other.callBack, callBack) ||
                other.callBack == callBack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callBack);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseCardEditEventSaveImplCopyWith<
          _$FinanceExpenseCardEditEventSaveImpl>
      get copyWith => __$$FinanceExpenseCardEditEventSaveImplCopyWithImpl<
          _$FinanceExpenseCardEditEventSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType crudType) load,
    required TResult Function(String bankName) changeBankName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String name) changeName,
    required TResult Function(int dueDay) changeDueDay,
    required TResult Function(ValueChanged<PaymentCard> callBack) save,
  }) {
    return save(callBack);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType crudType)? load,
    TResult? Function(String bankName)? changeBankName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String name)? changeName,
    TResult? Function(int dueDay)? changeDueDay,
    TResult? Function(ValueChanged<PaymentCard> callBack)? save,
  }) {
    return save?.call(callBack);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType crudType)? load,
    TResult Function(String bankName)? changeBankName,
    TResult Function(String number)? changeNumber,
    TResult Function(String name)? changeName,
    TResult Function(int dueDay)? changeDueDay,
    TResult Function(ValueChanged<PaymentCard> callBack)? save,
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
    required TResult Function(FinanceExpenseCardEditEventLoad value) load,
    required TResult Function(FinanceExpenseCardEditEventChangeBankName value)
        changeBankName,
    required TResult Function(FinanceExpenseCardEditEventChangeNumber value)
        changeNumber,
    required TResult Function(FinanceExpenseCardEditEventChangeName value)
        changeName,
    required TResult Function(FinanceExpenseCardEditEventChangDueDay value)
        changeDueDay,
    required TResult Function(FinanceExpenseCardEditEventSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult? Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult? Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult? Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult? Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult? Function(FinanceExpenseCardEditEventSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCardEditEventLoad value)? load,
    TResult Function(FinanceExpenseCardEditEventChangeBankName value)?
        changeBankName,
    TResult Function(FinanceExpenseCardEditEventChangeNumber value)?
        changeNumber,
    TResult Function(FinanceExpenseCardEditEventChangeName value)? changeName,
    TResult Function(FinanceExpenseCardEditEventChangDueDay value)?
        changeDueDay,
    TResult Function(FinanceExpenseCardEditEventSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCardEditEventSave
    implements FinanceExpenseCardEditEvent {
  const factory FinanceExpenseCardEditEventSave(
          {required final ValueChanged<PaymentCard> callBack}) =
      _$FinanceExpenseCardEditEventSaveImpl;

  ValueChanged<PaymentCard> get callBack;
  @JsonKey(ignore: true)
  _$$FinanceExpenseCardEditEventSaveImplCopyWith<
          _$FinanceExpenseCardEditEventSaveImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FinanceExpenseCardEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(CrudType crudType, PaymentCard card) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, PaymentCard card)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, PaymentCard card)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCardEditStateInit value) init,
    required TResult Function(FinanceExpenseCardEditStateLoading value) loading,
    required TResult Function(FinanceExpenseCardEditStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCardEditStateInit value)? init,
    TResult? Function(FinanceExpenseCardEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseCardEditStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCardEditStateInit value)? init,
    TResult Function(FinanceExpenseCardEditStateLoading value)? loading,
    TResult Function(FinanceExpenseCardEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceExpenseCardEditStateCopyWith<$Res> {
  factory $FinanceExpenseCardEditStateCopyWith(
          FinanceExpenseCardEditState value,
          $Res Function(FinanceExpenseCardEditState) then) =
      _$FinanceExpenseCardEditStateCopyWithImpl<$Res,
          FinanceExpenseCardEditState>;
}

/// @nodoc
class _$FinanceExpenseCardEditStateCopyWithImpl<$Res,
        $Val extends FinanceExpenseCardEditState>
    implements $FinanceExpenseCardEditStateCopyWith<$Res> {
  _$FinanceExpenseCardEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceExpenseCardEditStateInitImplCopyWith<$Res> {
  factory _$$FinanceExpenseCardEditStateInitImplCopyWith(
          _$FinanceExpenseCardEditStateInitImpl value,
          $Res Function(_$FinanceExpenseCardEditStateInitImpl) then) =
      __$$FinanceExpenseCardEditStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceExpenseCardEditStateInitImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCardEditStateCopyWithImpl<$Res,
        _$FinanceExpenseCardEditStateInitImpl>
    implements _$$FinanceExpenseCardEditStateInitImplCopyWith<$Res> {
  __$$FinanceExpenseCardEditStateInitImplCopyWithImpl(
      _$FinanceExpenseCardEditStateInitImpl _value,
      $Res Function(_$FinanceExpenseCardEditStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceExpenseCardEditStateInitImpl
    implements FinanceExpenseCardEditStateInit {
  const _$FinanceExpenseCardEditStateInitImpl();

  @override
  String toString() {
    return 'FinanceExpenseCardEditState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCardEditStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(CrudType crudType, PaymentCard card) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, PaymentCard card)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, PaymentCard card)? loaded,
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
    required TResult Function(FinanceExpenseCardEditStateInit value) init,
    required TResult Function(FinanceExpenseCardEditStateLoading value) loading,
    required TResult Function(FinanceExpenseCardEditStateLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCardEditStateInit value)? init,
    TResult? Function(FinanceExpenseCardEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseCardEditStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCardEditStateInit value)? init,
    TResult Function(FinanceExpenseCardEditStateLoading value)? loading,
    TResult Function(FinanceExpenseCardEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCardEditStateInit
    implements FinanceExpenseCardEditState {
  const factory FinanceExpenseCardEditStateInit() =
      _$FinanceExpenseCardEditStateInitImpl;
}

/// @nodoc
abstract class _$$FinanceExpenseCardEditStateLoadingImplCopyWith<$Res> {
  factory _$$FinanceExpenseCardEditStateLoadingImplCopyWith(
          _$FinanceExpenseCardEditStateLoadingImpl value,
          $Res Function(_$FinanceExpenseCardEditStateLoadingImpl) then) =
      __$$FinanceExpenseCardEditStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType crudType});

  $CrudTypeCopyWith<$Res> get crudType;
}

/// @nodoc
class __$$FinanceExpenseCardEditStateLoadingImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCardEditStateCopyWithImpl<$Res,
        _$FinanceExpenseCardEditStateLoadingImpl>
    implements _$$FinanceExpenseCardEditStateLoadingImplCopyWith<$Res> {
  __$$FinanceExpenseCardEditStateLoadingImplCopyWithImpl(
      _$FinanceExpenseCardEditStateLoadingImpl _value,
      $Res Function(_$FinanceExpenseCardEditStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crudType = null,
  }) {
    return _then(_$FinanceExpenseCardEditStateLoadingImpl(
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

class _$FinanceExpenseCardEditStateLoadingImpl
    implements FinanceExpenseCardEditStateLoading {
  const _$FinanceExpenseCardEditStateLoadingImpl({required this.crudType});

  @override
  final CrudType crudType;

  @override
  String toString() {
    return 'FinanceExpenseCardEditState.loading(crudType: $crudType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCardEditStateLoadingImpl &&
            (identical(other.crudType, crudType) ||
                other.crudType == crudType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crudType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseCardEditStateLoadingImplCopyWith<
          _$FinanceExpenseCardEditStateLoadingImpl>
      get copyWith => __$$FinanceExpenseCardEditStateLoadingImplCopyWithImpl<
          _$FinanceExpenseCardEditStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(CrudType crudType, PaymentCard card) loaded,
  }) {
    return loading(crudType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, PaymentCard card)? loaded,
  }) {
    return loading?.call(crudType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, PaymentCard card)? loaded,
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
    required TResult Function(FinanceExpenseCardEditStateInit value) init,
    required TResult Function(FinanceExpenseCardEditStateLoading value) loading,
    required TResult Function(FinanceExpenseCardEditStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCardEditStateInit value)? init,
    TResult? Function(FinanceExpenseCardEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseCardEditStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCardEditStateInit value)? init,
    TResult Function(FinanceExpenseCardEditStateLoading value)? loading,
    TResult Function(FinanceExpenseCardEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCardEditStateLoading
    implements FinanceExpenseCardEditState {
  const factory FinanceExpenseCardEditStateLoading(
          {required final CrudType crudType}) =
      _$FinanceExpenseCardEditStateLoadingImpl;

  CrudType get crudType;
  @JsonKey(ignore: true)
  _$$FinanceExpenseCardEditStateLoadingImplCopyWith<
          _$FinanceExpenseCardEditStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseCardEditStateLoadedImplCopyWith<$Res> {
  factory _$$FinanceExpenseCardEditStateLoadedImplCopyWith(
          _$FinanceExpenseCardEditStateLoadedImpl value,
          $Res Function(_$FinanceExpenseCardEditStateLoadedImpl) then) =
      __$$FinanceExpenseCardEditStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType crudType, PaymentCard card});

  $CrudTypeCopyWith<$Res> get crudType;
  $PaymentCardCopyWith<$Res> get card;
}

/// @nodoc
class __$$FinanceExpenseCardEditStateLoadedImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCardEditStateCopyWithImpl<$Res,
        _$FinanceExpenseCardEditStateLoadedImpl>
    implements _$$FinanceExpenseCardEditStateLoadedImplCopyWith<$Res> {
  __$$FinanceExpenseCardEditStateLoadedImplCopyWithImpl(
      _$FinanceExpenseCardEditStateLoadedImpl _value,
      $Res Function(_$FinanceExpenseCardEditStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crudType = null,
    Object? card = null,
  }) {
    return _then(_$FinanceExpenseCardEditStateLoadedImpl(
      crudType: null == crudType
          ? _value.crudType
          : crudType // ignore: cast_nullable_to_non_nullable
              as CrudType,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as PaymentCard,
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
  $PaymentCardCopyWith<$Res> get card {
    return $PaymentCardCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value));
    });
  }
}

/// @nodoc

class _$FinanceExpenseCardEditStateLoadedImpl
    implements FinanceExpenseCardEditStateLoaded {
  const _$FinanceExpenseCardEditStateLoadedImpl(
      {required this.crudType, required this.card});

  @override
  final CrudType crudType;
  @override
  final PaymentCard card;

  @override
  String toString() {
    return 'FinanceExpenseCardEditState.loaded(crudType: $crudType, card: $card)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCardEditStateLoadedImpl &&
            (identical(other.crudType, crudType) ||
                other.crudType == crudType) &&
            (identical(other.card, card) || other.card == card));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crudType, card);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseCardEditStateLoadedImplCopyWith<
          _$FinanceExpenseCardEditStateLoadedImpl>
      get copyWith => __$$FinanceExpenseCardEditStateLoadedImplCopyWithImpl<
          _$FinanceExpenseCardEditStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CrudType crudType) loading,
    required TResult Function(CrudType crudType, PaymentCard card) loaded,
  }) {
    return loaded(crudType, card);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CrudType crudType)? loading,
    TResult? Function(CrudType crudType, PaymentCard card)? loaded,
  }) {
    return loaded?.call(crudType, card);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CrudType crudType)? loading,
    TResult Function(CrudType crudType, PaymentCard card)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(crudType, card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCardEditStateInit value) init,
    required TResult Function(FinanceExpenseCardEditStateLoading value) loading,
    required TResult Function(FinanceExpenseCardEditStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCardEditStateInit value)? init,
    TResult? Function(FinanceExpenseCardEditStateLoading value)? loading,
    TResult? Function(FinanceExpenseCardEditStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCardEditStateInit value)? init,
    TResult Function(FinanceExpenseCardEditStateLoading value)? loading,
    TResult Function(FinanceExpenseCardEditStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCardEditStateLoaded
    implements FinanceExpenseCardEditState {
  const factory FinanceExpenseCardEditStateLoaded(
          {required final CrudType crudType, required final PaymentCard card}) =
      _$FinanceExpenseCardEditStateLoadedImpl;

  CrudType get crudType;
  PaymentCard get card;
  @JsonKey(ignore: true)
  _$$FinanceExpenseCardEditStateLoadedImplCopyWith<
          _$FinanceExpenseCardEditStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
