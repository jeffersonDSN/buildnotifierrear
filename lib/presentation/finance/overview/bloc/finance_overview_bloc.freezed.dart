// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinanceOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String invoiceId, InvoiceStatusEnums status)
        changeInvoiceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String invoiceId, InvoiceStatusEnums status)?
        changeInvoiceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String invoiceId, InvoiceStatusEnums status)?
        changeInvoiceStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceOverviewEventLoad value) load,
    required TResult Function(FinanceOverviewEventChangeInvoiceStatus value)
        changeInvoiceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceOverviewEventLoad value)? load,
    TResult? Function(FinanceOverviewEventChangeInvoiceStatus value)?
        changeInvoiceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceOverviewEventLoad value)? load,
    TResult Function(FinanceOverviewEventChangeInvoiceStatus value)?
        changeInvoiceStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceOverviewEventCopyWith<$Res> {
  factory $FinanceOverviewEventCopyWith(FinanceOverviewEvent value,
          $Res Function(FinanceOverviewEvent) then) =
      _$FinanceOverviewEventCopyWithImpl<$Res, FinanceOverviewEvent>;
}

/// @nodoc
class _$FinanceOverviewEventCopyWithImpl<$Res,
        $Val extends FinanceOverviewEvent>
    implements $FinanceOverviewEventCopyWith<$Res> {
  _$FinanceOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceOverviewEventLoadImplCopyWith<$Res> {
  factory _$$FinanceOverviewEventLoadImplCopyWith(
          _$FinanceOverviewEventLoadImpl value,
          $Res Function(_$FinanceOverviewEventLoadImpl) then) =
      __$$FinanceOverviewEventLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceOverviewEventLoadImplCopyWithImpl<$Res>
    extends _$FinanceOverviewEventCopyWithImpl<$Res,
        _$FinanceOverviewEventLoadImpl>
    implements _$$FinanceOverviewEventLoadImplCopyWith<$Res> {
  __$$FinanceOverviewEventLoadImplCopyWithImpl(
      _$FinanceOverviewEventLoadImpl _value,
      $Res Function(_$FinanceOverviewEventLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceOverviewEventLoadImpl implements FinanceOverviewEventLoad {
  const _$FinanceOverviewEventLoadImpl();

  @override
  String toString() {
    return 'FinanceOverviewEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceOverviewEventLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String invoiceId, InvoiceStatusEnums status)
        changeInvoiceStatus,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String invoiceId, InvoiceStatusEnums status)?
        changeInvoiceStatus,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String invoiceId, InvoiceStatusEnums status)?
        changeInvoiceStatus,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceOverviewEventLoad value) load,
    required TResult Function(FinanceOverviewEventChangeInvoiceStatus value)
        changeInvoiceStatus,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceOverviewEventLoad value)? load,
    TResult? Function(FinanceOverviewEventChangeInvoiceStatus value)?
        changeInvoiceStatus,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceOverviewEventLoad value)? load,
    TResult Function(FinanceOverviewEventChangeInvoiceStatus value)?
        changeInvoiceStatus,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class FinanceOverviewEventLoad implements FinanceOverviewEvent {
  const factory FinanceOverviewEventLoad() = _$FinanceOverviewEventLoadImpl;
}

/// @nodoc
abstract class _$$FinanceOverviewEventChangeInvoiceStatusImplCopyWith<$Res> {
  factory _$$FinanceOverviewEventChangeInvoiceStatusImplCopyWith(
          _$FinanceOverviewEventChangeInvoiceStatusImpl value,
          $Res Function(_$FinanceOverviewEventChangeInvoiceStatusImpl) then) =
      __$$FinanceOverviewEventChangeInvoiceStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String invoiceId, InvoiceStatusEnums status});
}

/// @nodoc
class __$$FinanceOverviewEventChangeInvoiceStatusImplCopyWithImpl<$Res>
    extends _$FinanceOverviewEventCopyWithImpl<$Res,
        _$FinanceOverviewEventChangeInvoiceStatusImpl>
    implements _$$FinanceOverviewEventChangeInvoiceStatusImplCopyWith<$Res> {
  __$$FinanceOverviewEventChangeInvoiceStatusImplCopyWithImpl(
      _$FinanceOverviewEventChangeInvoiceStatusImpl _value,
      $Res Function(_$FinanceOverviewEventChangeInvoiceStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? status = null,
  }) {
    return _then(_$FinanceOverviewEventChangeInvoiceStatusImpl(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatusEnums,
    ));
  }
}

/// @nodoc

class _$FinanceOverviewEventChangeInvoiceStatusImpl
    implements FinanceOverviewEventChangeInvoiceStatus {
  const _$FinanceOverviewEventChangeInvoiceStatusImpl(
      {required this.invoiceId, required this.status});

  @override
  final String invoiceId;
  @override
  final InvoiceStatusEnums status;

  @override
  String toString() {
    return 'FinanceOverviewEvent.changeInvoiceStatus(invoiceId: $invoiceId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceOverviewEventChangeInvoiceStatusImpl &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoiceId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceOverviewEventChangeInvoiceStatusImplCopyWith<
          _$FinanceOverviewEventChangeInvoiceStatusImpl>
      get copyWith =>
          __$$FinanceOverviewEventChangeInvoiceStatusImplCopyWithImpl<
              _$FinanceOverviewEventChangeInvoiceStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String invoiceId, InvoiceStatusEnums status)
        changeInvoiceStatus,
  }) {
    return changeInvoiceStatus(invoiceId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String invoiceId, InvoiceStatusEnums status)?
        changeInvoiceStatus,
  }) {
    return changeInvoiceStatus?.call(invoiceId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String invoiceId, InvoiceStatusEnums status)?
        changeInvoiceStatus,
    required TResult orElse(),
  }) {
    if (changeInvoiceStatus != null) {
      return changeInvoiceStatus(invoiceId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceOverviewEventLoad value) load,
    required TResult Function(FinanceOverviewEventChangeInvoiceStatus value)
        changeInvoiceStatus,
  }) {
    return changeInvoiceStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceOverviewEventLoad value)? load,
    TResult? Function(FinanceOverviewEventChangeInvoiceStatus value)?
        changeInvoiceStatus,
  }) {
    return changeInvoiceStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceOverviewEventLoad value)? load,
    TResult Function(FinanceOverviewEventChangeInvoiceStatus value)?
        changeInvoiceStatus,
    required TResult orElse(),
  }) {
    if (changeInvoiceStatus != null) {
      return changeInvoiceStatus(this);
    }
    return orElse();
  }
}

abstract class FinanceOverviewEventChangeInvoiceStatus
    implements FinanceOverviewEvent {
  const factory FinanceOverviewEventChangeInvoiceStatus(
          {required final String invoiceId,
          required final InvoiceStatusEnums status}) =
      _$FinanceOverviewEventChangeInvoiceStatusImpl;

  String get invoiceId;
  InvoiceStatusEnums get status;
  @JsonKey(ignore: true)
  _$$FinanceOverviewEventChangeInvoiceStatusImplCopyWith<
          _$FinanceOverviewEventChangeInvoiceStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FinanceOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Invoice> invoices, List<Expense> expense)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Invoice> invoices, List<Expense> expense)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Invoice> invoices, List<Expense> expense)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceOverviewStateInit value) init,
    required TResult Function(FinanceOverviewStateLoading value) loading,
    required TResult Function(FinanceOverviewStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceOverviewStateInit value)? init,
    TResult? Function(FinanceOverviewStateLoading value)? loading,
    TResult? Function(FinanceOverviewStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceOverviewStateInit value)? init,
    TResult Function(FinanceOverviewStateLoading value)? loading,
    TResult Function(FinanceOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceOverviewStateCopyWith<$Res> {
  factory $FinanceOverviewStateCopyWith(FinanceOverviewState value,
          $Res Function(FinanceOverviewState) then) =
      _$FinanceOverviewStateCopyWithImpl<$Res, FinanceOverviewState>;
}

/// @nodoc
class _$FinanceOverviewStateCopyWithImpl<$Res,
        $Val extends FinanceOverviewState>
    implements $FinanceOverviewStateCopyWith<$Res> {
  _$FinanceOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceOverviewStateInitImplCopyWith<$Res> {
  factory _$$FinanceOverviewStateInitImplCopyWith(
          _$FinanceOverviewStateInitImpl value,
          $Res Function(_$FinanceOverviewStateInitImpl) then) =
      __$$FinanceOverviewStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceOverviewStateInitImplCopyWithImpl<$Res>
    extends _$FinanceOverviewStateCopyWithImpl<$Res,
        _$FinanceOverviewStateInitImpl>
    implements _$$FinanceOverviewStateInitImplCopyWith<$Res> {
  __$$FinanceOverviewStateInitImplCopyWithImpl(
      _$FinanceOverviewStateInitImpl _value,
      $Res Function(_$FinanceOverviewStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceOverviewStateInitImpl implements FinanceOverviewStateInit {
  const _$FinanceOverviewStateInitImpl();

  @override
  String toString() {
    return 'FinanceOverviewState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceOverviewStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Invoice> invoices, List<Expense> expense)
        loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Invoice> invoices, List<Expense> expense)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Invoice> invoices, List<Expense> expense)? loaded,
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
    required TResult Function(FinanceOverviewStateInit value) init,
    required TResult Function(FinanceOverviewStateLoading value) loading,
    required TResult Function(FinanceOverviewStateLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceOverviewStateInit value)? init,
    TResult? Function(FinanceOverviewStateLoading value)? loading,
    TResult? Function(FinanceOverviewStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceOverviewStateInit value)? init,
    TResult Function(FinanceOverviewStateLoading value)? loading,
    TResult Function(FinanceOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class FinanceOverviewStateInit implements FinanceOverviewState {
  const factory FinanceOverviewStateInit() = _$FinanceOverviewStateInitImpl;
}

/// @nodoc
abstract class _$$FinanceOverviewStateLoadingImplCopyWith<$Res> {
  factory _$$FinanceOverviewStateLoadingImplCopyWith(
          _$FinanceOverviewStateLoadingImpl value,
          $Res Function(_$FinanceOverviewStateLoadingImpl) then) =
      __$$FinanceOverviewStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceOverviewStateLoadingImplCopyWithImpl<$Res>
    extends _$FinanceOverviewStateCopyWithImpl<$Res,
        _$FinanceOverviewStateLoadingImpl>
    implements _$$FinanceOverviewStateLoadingImplCopyWith<$Res> {
  __$$FinanceOverviewStateLoadingImplCopyWithImpl(
      _$FinanceOverviewStateLoadingImpl _value,
      $Res Function(_$FinanceOverviewStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceOverviewStateLoadingImpl implements FinanceOverviewStateLoading {
  const _$FinanceOverviewStateLoadingImpl();

  @override
  String toString() {
    return 'FinanceOverviewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceOverviewStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Invoice> invoices, List<Expense> expense)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Invoice> invoices, List<Expense> expense)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Invoice> invoices, List<Expense> expense)? loaded,
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
    required TResult Function(FinanceOverviewStateInit value) init,
    required TResult Function(FinanceOverviewStateLoading value) loading,
    required TResult Function(FinanceOverviewStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceOverviewStateInit value)? init,
    TResult? Function(FinanceOverviewStateLoading value)? loading,
    TResult? Function(FinanceOverviewStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceOverviewStateInit value)? init,
    TResult Function(FinanceOverviewStateLoading value)? loading,
    TResult Function(FinanceOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FinanceOverviewStateLoading implements FinanceOverviewState {
  const factory FinanceOverviewStateLoading() =
      _$FinanceOverviewStateLoadingImpl;
}

/// @nodoc
abstract class _$$FinanceOverviewStateLoadedImplCopyWith<$Res> {
  factory _$$FinanceOverviewStateLoadedImplCopyWith(
          _$FinanceOverviewStateLoadedImpl value,
          $Res Function(_$FinanceOverviewStateLoadedImpl) then) =
      __$$FinanceOverviewStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Invoice> invoices, List<Expense> expense});
}

/// @nodoc
class __$$FinanceOverviewStateLoadedImplCopyWithImpl<$Res>
    extends _$FinanceOverviewStateCopyWithImpl<$Res,
        _$FinanceOverviewStateLoadedImpl>
    implements _$$FinanceOverviewStateLoadedImplCopyWith<$Res> {
  __$$FinanceOverviewStateLoadedImplCopyWithImpl(
      _$FinanceOverviewStateLoadedImpl _value,
      $Res Function(_$FinanceOverviewStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoices = null,
    Object? expense = null,
  }) {
    return _then(_$FinanceOverviewStateLoadedImpl(
      invoices: null == invoices
          ? _value._invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<Invoice>,
      expense: null == expense
          ? _value._expense
          : expense // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
    ));
  }
}

/// @nodoc

class _$FinanceOverviewStateLoadedImpl implements FinanceOverviewStateLoaded {
  const _$FinanceOverviewStateLoadedImpl(
      {required final List<Invoice> invoices,
      required final List<Expense> expense})
      : _invoices = invoices,
        _expense = expense;

  final List<Invoice> _invoices;
  @override
  List<Invoice> get invoices {
    if (_invoices is EqualUnmodifiableListView) return _invoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoices);
  }

  final List<Expense> _expense;
  @override
  List<Expense> get expense {
    if (_expense is EqualUnmodifiableListView) return _expense;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expense);
  }

  @override
  String toString() {
    return 'FinanceOverviewState.loaded(invoices: $invoices, expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceOverviewStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._invoices, _invoices) &&
            const DeepCollectionEquality().equals(other._expense, _expense));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_invoices),
      const DeepCollectionEquality().hash(_expense));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceOverviewStateLoadedImplCopyWith<_$FinanceOverviewStateLoadedImpl>
      get copyWith => __$$FinanceOverviewStateLoadedImplCopyWithImpl<
          _$FinanceOverviewStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Invoice> invoices, List<Expense> expense)
        loaded,
  }) {
    return loaded(invoices, expense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Invoice> invoices, List<Expense> expense)? loaded,
  }) {
    return loaded?.call(invoices, expense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Invoice> invoices, List<Expense> expense)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(invoices, expense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceOverviewStateInit value) init,
    required TResult Function(FinanceOverviewStateLoading value) loading,
    required TResult Function(FinanceOverviewStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceOverviewStateInit value)? init,
    TResult? Function(FinanceOverviewStateLoading value)? loading,
    TResult? Function(FinanceOverviewStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceOverviewStateInit value)? init,
    TResult Function(FinanceOverviewStateLoading value)? loading,
    TResult Function(FinanceOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FinanceOverviewStateLoaded implements FinanceOverviewState {
  const factory FinanceOverviewStateLoaded(
      {required final List<Invoice> invoices,
      required final List<Expense> expense}) = _$FinanceOverviewStateLoadedImpl;

  List<Invoice> get invoices;
  List<Expense> get expense;
  @JsonKey(ignore: true)
  _$$FinanceOverviewStateLoadedImplCopyWith<_$FinanceOverviewStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
