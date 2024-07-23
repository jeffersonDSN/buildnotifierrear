// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_expense_category_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinanceExpenseCategoryOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ExpenseCategory category) addCategory,
    required TResult Function(ExpenseCategory category) editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ExpenseCategory category)? addCategory,
    TResult? Function(ExpenseCategory category)? editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ExpenseCategory category)? addCategory,
    TResult Function(ExpenseCategory category)? editCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCategoryOverviewEventLoad value)
        load,
    required TResult Function(FinanceExpenseCategoryOverviewEventAddCard value)
        addCategory,
    required TResult Function(FinanceExpenseCategoryOverviewEventEditCard value)
        editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCategoryOverviewEventLoad value)? load,
    TResult? Function(FinanceExpenseCategoryOverviewEventAddCard value)?
        addCategory,
    TResult? Function(FinanceExpenseCategoryOverviewEventEditCard value)?
        editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCategoryOverviewEventLoad value)? load,
    TResult Function(FinanceExpenseCategoryOverviewEventAddCard value)?
        addCategory,
    TResult Function(FinanceExpenseCategoryOverviewEventEditCard value)?
        editCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceExpenseCategoryOverviewEventCopyWith<$Res> {
  factory $FinanceExpenseCategoryOverviewEventCopyWith(
          FinanceExpenseCategoryOverviewEvent value,
          $Res Function(FinanceExpenseCategoryOverviewEvent) then) =
      _$FinanceExpenseCategoryOverviewEventCopyWithImpl<$Res,
          FinanceExpenseCategoryOverviewEvent>;
}

/// @nodoc
class _$FinanceExpenseCategoryOverviewEventCopyWithImpl<$Res,
        $Val extends FinanceExpenseCategoryOverviewEvent>
    implements $FinanceExpenseCategoryOverviewEventCopyWith<$Res> {
  _$FinanceExpenseCategoryOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceExpenseCategoryOverviewEventLoadImplCopyWith<$Res> {
  factory _$$FinanceExpenseCategoryOverviewEventLoadImplCopyWith(
          _$FinanceExpenseCategoryOverviewEventLoadImpl value,
          $Res Function(_$FinanceExpenseCategoryOverviewEventLoadImpl) then) =
      __$$FinanceExpenseCategoryOverviewEventLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceExpenseCategoryOverviewEventLoadImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCategoryOverviewEventCopyWithImpl<$Res,
        _$FinanceExpenseCategoryOverviewEventLoadImpl>
    implements _$$FinanceExpenseCategoryOverviewEventLoadImplCopyWith<$Res> {
  __$$FinanceExpenseCategoryOverviewEventLoadImplCopyWithImpl(
      _$FinanceExpenseCategoryOverviewEventLoadImpl _value,
      $Res Function(_$FinanceExpenseCategoryOverviewEventLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceExpenseCategoryOverviewEventLoadImpl
    with DiagnosticableTreeMixin
    implements FinanceExpenseCategoryOverviewEventLoad {
  const _$FinanceExpenseCategoryOverviewEventLoadImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FinanceExpenseCategoryOverviewEvent.load()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'FinanceExpenseCategoryOverviewEvent.load'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCategoryOverviewEventLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ExpenseCategory category) addCategory,
    required TResult Function(ExpenseCategory category) editCategory,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ExpenseCategory category)? addCategory,
    TResult? Function(ExpenseCategory category)? editCategory,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ExpenseCategory category)? addCategory,
    TResult Function(ExpenseCategory category)? editCategory,
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
    required TResult Function(FinanceExpenseCategoryOverviewEventLoad value)
        load,
    required TResult Function(FinanceExpenseCategoryOverviewEventAddCard value)
        addCategory,
    required TResult Function(FinanceExpenseCategoryOverviewEventEditCard value)
        editCategory,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCategoryOverviewEventLoad value)? load,
    TResult? Function(FinanceExpenseCategoryOverviewEventAddCard value)?
        addCategory,
    TResult? Function(FinanceExpenseCategoryOverviewEventEditCard value)?
        editCategory,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCategoryOverviewEventLoad value)? load,
    TResult Function(FinanceExpenseCategoryOverviewEventAddCard value)?
        addCategory,
    TResult Function(FinanceExpenseCategoryOverviewEventEditCard value)?
        editCategory,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCategoryOverviewEventLoad
    implements FinanceExpenseCategoryOverviewEvent {
  const factory FinanceExpenseCategoryOverviewEventLoad() =
      _$FinanceExpenseCategoryOverviewEventLoadImpl;
}

/// @nodoc
abstract class _$$FinanceExpenseCategoryOverviewEventAddCardImplCopyWith<$Res> {
  factory _$$FinanceExpenseCategoryOverviewEventAddCardImplCopyWith(
          _$FinanceExpenseCategoryOverviewEventAddCardImpl value,
          $Res Function(_$FinanceExpenseCategoryOverviewEventAddCardImpl)
              then) =
      __$$FinanceExpenseCategoryOverviewEventAddCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseCategory category});

  $ExpenseCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$FinanceExpenseCategoryOverviewEventAddCardImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCategoryOverviewEventCopyWithImpl<$Res,
        _$FinanceExpenseCategoryOverviewEventAddCardImpl>
    implements _$$FinanceExpenseCategoryOverviewEventAddCardImplCopyWith<$Res> {
  __$$FinanceExpenseCategoryOverviewEventAddCardImplCopyWithImpl(
      _$FinanceExpenseCategoryOverviewEventAddCardImpl _value,
      $Res Function(_$FinanceExpenseCategoryOverviewEventAddCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FinanceExpenseCategoryOverviewEventAddCardImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExpenseCategory,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseCategoryCopyWith<$Res> get category {
    return $ExpenseCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$FinanceExpenseCategoryOverviewEventAddCardImpl
    with DiagnosticableTreeMixin
    implements FinanceExpenseCategoryOverviewEventAddCard {
  const _$FinanceExpenseCategoryOverviewEventAddCardImpl(
      {required this.category});

  @override
  final ExpenseCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FinanceExpenseCategoryOverviewEvent.addCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FinanceExpenseCategoryOverviewEvent.addCategory'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCategoryOverviewEventAddCardImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseCategoryOverviewEventAddCardImplCopyWith<
          _$FinanceExpenseCategoryOverviewEventAddCardImpl>
      get copyWith =>
          __$$FinanceExpenseCategoryOverviewEventAddCardImplCopyWithImpl<
                  _$FinanceExpenseCategoryOverviewEventAddCardImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ExpenseCategory category) addCategory,
    required TResult Function(ExpenseCategory category) editCategory,
  }) {
    return addCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ExpenseCategory category)? addCategory,
    TResult? Function(ExpenseCategory category)? editCategory,
  }) {
    return addCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ExpenseCategory category)? addCategory,
    TResult Function(ExpenseCategory category)? editCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCategoryOverviewEventLoad value)
        load,
    required TResult Function(FinanceExpenseCategoryOverviewEventAddCard value)
        addCategory,
    required TResult Function(FinanceExpenseCategoryOverviewEventEditCard value)
        editCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCategoryOverviewEventLoad value)? load,
    TResult? Function(FinanceExpenseCategoryOverviewEventAddCard value)?
        addCategory,
    TResult? Function(FinanceExpenseCategoryOverviewEventEditCard value)?
        editCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCategoryOverviewEventLoad value)? load,
    TResult Function(FinanceExpenseCategoryOverviewEventAddCard value)?
        addCategory,
    TResult Function(FinanceExpenseCategoryOverviewEventEditCard value)?
        editCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCategoryOverviewEventAddCard
    implements FinanceExpenseCategoryOverviewEvent {
  const factory FinanceExpenseCategoryOverviewEventAddCard(
          {required final ExpenseCategory category}) =
      _$FinanceExpenseCategoryOverviewEventAddCardImpl;

  ExpenseCategory get category;
  @JsonKey(ignore: true)
  _$$FinanceExpenseCategoryOverviewEventAddCardImplCopyWith<
          _$FinanceExpenseCategoryOverviewEventAddCardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceExpenseCategoryOverviewEventEditCardImplCopyWith<
    $Res> {
  factory _$$FinanceExpenseCategoryOverviewEventEditCardImplCopyWith(
          _$FinanceExpenseCategoryOverviewEventEditCardImpl value,
          $Res Function(_$FinanceExpenseCategoryOverviewEventEditCardImpl)
              then) =
      __$$FinanceExpenseCategoryOverviewEventEditCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseCategory category});

  $ExpenseCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$FinanceExpenseCategoryOverviewEventEditCardImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCategoryOverviewEventCopyWithImpl<$Res,
        _$FinanceExpenseCategoryOverviewEventEditCardImpl>
    implements
        _$$FinanceExpenseCategoryOverviewEventEditCardImplCopyWith<$Res> {
  __$$FinanceExpenseCategoryOverviewEventEditCardImplCopyWithImpl(
      _$FinanceExpenseCategoryOverviewEventEditCardImpl _value,
      $Res Function(_$FinanceExpenseCategoryOverviewEventEditCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FinanceExpenseCategoryOverviewEventEditCardImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExpenseCategory,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseCategoryCopyWith<$Res> get category {
    return $ExpenseCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$FinanceExpenseCategoryOverviewEventEditCardImpl
    with DiagnosticableTreeMixin
    implements FinanceExpenseCategoryOverviewEventEditCard {
  const _$FinanceExpenseCategoryOverviewEventEditCardImpl(
      {required this.category});

  @override
  final ExpenseCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FinanceExpenseCategoryOverviewEvent.editCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FinanceExpenseCategoryOverviewEvent.editCategory'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCategoryOverviewEventEditCardImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseCategoryOverviewEventEditCardImplCopyWith<
          _$FinanceExpenseCategoryOverviewEventEditCardImpl>
      get copyWith =>
          __$$FinanceExpenseCategoryOverviewEventEditCardImplCopyWithImpl<
                  _$FinanceExpenseCategoryOverviewEventEditCardImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ExpenseCategory category) addCategory,
    required TResult Function(ExpenseCategory category) editCategory,
  }) {
    return editCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ExpenseCategory category)? addCategory,
    TResult? Function(ExpenseCategory category)? editCategory,
  }) {
    return editCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ExpenseCategory category)? addCategory,
    TResult Function(ExpenseCategory category)? editCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCategoryOverviewEventLoad value)
        load,
    required TResult Function(FinanceExpenseCategoryOverviewEventAddCard value)
        addCategory,
    required TResult Function(FinanceExpenseCategoryOverviewEventEditCard value)
        editCategory,
  }) {
    return editCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCategoryOverviewEventLoad value)? load,
    TResult? Function(FinanceExpenseCategoryOverviewEventAddCard value)?
        addCategory,
    TResult? Function(FinanceExpenseCategoryOverviewEventEditCard value)?
        editCategory,
  }) {
    return editCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCategoryOverviewEventLoad value)? load,
    TResult Function(FinanceExpenseCategoryOverviewEventAddCard value)?
        addCategory,
    TResult Function(FinanceExpenseCategoryOverviewEventEditCard value)?
        editCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCategoryOverviewEventEditCard
    implements FinanceExpenseCategoryOverviewEvent {
  const factory FinanceExpenseCategoryOverviewEventEditCard(
          {required final ExpenseCategory category}) =
      _$FinanceExpenseCategoryOverviewEventEditCardImpl;

  ExpenseCategory get category;
  @JsonKey(ignore: true)
  _$$FinanceExpenseCategoryOverviewEventEditCardImplCopyWith<
          _$FinanceExpenseCategoryOverviewEventEditCardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FinanceExpenseCategoryOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<ExpenseCategory> categories) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<ExpenseCategory> categories)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<ExpenseCategory> categories)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCategoryOverviewStateInit value)
        init,
    required TResult Function(FinanceExpenseCategoryOverviewStateLoading value)
        loading,
    required TResult Function(FinanceExpenseCategoryOverviewStateLoaded value)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCategoryOverviewStateInit value)? init,
    TResult? Function(FinanceExpenseCategoryOverviewStateLoading value)?
        loading,
    TResult? Function(FinanceExpenseCategoryOverviewStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCategoryOverviewStateInit value)? init,
    TResult Function(FinanceExpenseCategoryOverviewStateLoading value)? loading,
    TResult Function(FinanceExpenseCategoryOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceExpenseCategoryOverviewStateCopyWith<$Res> {
  factory $FinanceExpenseCategoryOverviewStateCopyWith(
          FinanceExpenseCategoryOverviewState value,
          $Res Function(FinanceExpenseCategoryOverviewState) then) =
      _$FinanceExpenseCategoryOverviewStateCopyWithImpl<$Res,
          FinanceExpenseCategoryOverviewState>;
}

/// @nodoc
class _$FinanceExpenseCategoryOverviewStateCopyWithImpl<$Res,
        $Val extends FinanceExpenseCategoryOverviewState>
    implements $FinanceExpenseCategoryOverviewStateCopyWith<$Res> {
  _$FinanceExpenseCategoryOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceExpenseCategoryOverviewStateInitImplCopyWith<$Res> {
  factory _$$FinanceExpenseCategoryOverviewStateInitImplCopyWith(
          _$FinanceExpenseCategoryOverviewStateInitImpl value,
          $Res Function(_$FinanceExpenseCategoryOverviewStateInitImpl) then) =
      __$$FinanceExpenseCategoryOverviewStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceExpenseCategoryOverviewStateInitImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCategoryOverviewStateCopyWithImpl<$Res,
        _$FinanceExpenseCategoryOverviewStateInitImpl>
    implements _$$FinanceExpenseCategoryOverviewStateInitImplCopyWith<$Res> {
  __$$FinanceExpenseCategoryOverviewStateInitImplCopyWithImpl(
      _$FinanceExpenseCategoryOverviewStateInitImpl _value,
      $Res Function(_$FinanceExpenseCategoryOverviewStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceExpenseCategoryOverviewStateInitImpl
    with DiagnosticableTreeMixin
    implements FinanceExpenseCategoryOverviewStateInit {
  const _$FinanceExpenseCategoryOverviewStateInitImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FinanceExpenseCategoryOverviewState.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'FinanceExpenseCategoryOverviewState.init'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCategoryOverviewStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<ExpenseCategory> categories) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<ExpenseCategory> categories)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<ExpenseCategory> categories)? loaded,
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
    required TResult Function(FinanceExpenseCategoryOverviewStateInit value)
        init,
    required TResult Function(FinanceExpenseCategoryOverviewStateLoading value)
        loading,
    required TResult Function(FinanceExpenseCategoryOverviewStateLoaded value)
        loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCategoryOverviewStateInit value)? init,
    TResult? Function(FinanceExpenseCategoryOverviewStateLoading value)?
        loading,
    TResult? Function(FinanceExpenseCategoryOverviewStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCategoryOverviewStateInit value)? init,
    TResult Function(FinanceExpenseCategoryOverviewStateLoading value)? loading,
    TResult Function(FinanceExpenseCategoryOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCategoryOverviewStateInit
    implements FinanceExpenseCategoryOverviewState {
  const factory FinanceExpenseCategoryOverviewStateInit() =
      _$FinanceExpenseCategoryOverviewStateInitImpl;
}

/// @nodoc
abstract class _$$FinanceExpenseCategoryOverviewStateLoadingImplCopyWith<$Res> {
  factory _$$FinanceExpenseCategoryOverviewStateLoadingImplCopyWith(
          _$FinanceExpenseCategoryOverviewStateLoadingImpl value,
          $Res Function(_$FinanceExpenseCategoryOverviewStateLoadingImpl)
              then) =
      __$$FinanceExpenseCategoryOverviewStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceExpenseCategoryOverviewStateLoadingImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCategoryOverviewStateCopyWithImpl<$Res,
        _$FinanceExpenseCategoryOverviewStateLoadingImpl>
    implements _$$FinanceExpenseCategoryOverviewStateLoadingImplCopyWith<$Res> {
  __$$FinanceExpenseCategoryOverviewStateLoadingImplCopyWithImpl(
      _$FinanceExpenseCategoryOverviewStateLoadingImpl _value,
      $Res Function(_$FinanceExpenseCategoryOverviewStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceExpenseCategoryOverviewStateLoadingImpl
    with DiagnosticableTreeMixin
    implements FinanceExpenseCategoryOverviewStateLoading {
  const _$FinanceExpenseCategoryOverviewStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FinanceExpenseCategoryOverviewState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'FinanceExpenseCategoryOverviewState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCategoryOverviewStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<ExpenseCategory> categories) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<ExpenseCategory> categories)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<ExpenseCategory> categories)? loaded,
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
    required TResult Function(FinanceExpenseCategoryOverviewStateInit value)
        init,
    required TResult Function(FinanceExpenseCategoryOverviewStateLoading value)
        loading,
    required TResult Function(FinanceExpenseCategoryOverviewStateLoaded value)
        loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCategoryOverviewStateInit value)? init,
    TResult? Function(FinanceExpenseCategoryOverviewStateLoading value)?
        loading,
    TResult? Function(FinanceExpenseCategoryOverviewStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCategoryOverviewStateInit value)? init,
    TResult Function(FinanceExpenseCategoryOverviewStateLoading value)? loading,
    TResult Function(FinanceExpenseCategoryOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCategoryOverviewStateLoading
    implements FinanceExpenseCategoryOverviewState {
  const factory FinanceExpenseCategoryOverviewStateLoading() =
      _$FinanceExpenseCategoryOverviewStateLoadingImpl;
}

/// @nodoc
abstract class _$$FinanceExpenseCategoryOverviewStateLoadedImplCopyWith<$Res> {
  factory _$$FinanceExpenseCategoryOverviewStateLoadedImplCopyWith(
          _$FinanceExpenseCategoryOverviewStateLoadedImpl value,
          $Res Function(_$FinanceExpenseCategoryOverviewStateLoadedImpl) then) =
      __$$FinanceExpenseCategoryOverviewStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExpenseCategory> categories});
}

/// @nodoc
class __$$FinanceExpenseCategoryOverviewStateLoadedImplCopyWithImpl<$Res>
    extends _$FinanceExpenseCategoryOverviewStateCopyWithImpl<$Res,
        _$FinanceExpenseCategoryOverviewStateLoadedImpl>
    implements _$$FinanceExpenseCategoryOverviewStateLoadedImplCopyWith<$Res> {
  __$$FinanceExpenseCategoryOverviewStateLoadedImplCopyWithImpl(
      _$FinanceExpenseCategoryOverviewStateLoadedImpl _value,
      $Res Function(_$FinanceExpenseCategoryOverviewStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$FinanceExpenseCategoryOverviewStateLoadedImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategory>,
    ));
  }
}

/// @nodoc

class _$FinanceExpenseCategoryOverviewStateLoadedImpl
    with DiagnosticableTreeMixin
    implements FinanceExpenseCategoryOverviewStateLoaded {
  const _$FinanceExpenseCategoryOverviewStateLoadedImpl(
      {required final List<ExpenseCategory> categories})
      : _categories = categories;

  final List<ExpenseCategory> _categories;
  @override
  List<ExpenseCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FinanceExpenseCategoryOverviewState.loaded(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FinanceExpenseCategoryOverviewState.loaded'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceExpenseCategoryOverviewStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceExpenseCategoryOverviewStateLoadedImplCopyWith<
          _$FinanceExpenseCategoryOverviewStateLoadedImpl>
      get copyWith =>
          __$$FinanceExpenseCategoryOverviewStateLoadedImplCopyWithImpl<
                  _$FinanceExpenseCategoryOverviewStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<ExpenseCategory> categories) loaded,
  }) {
    return loaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<ExpenseCategory> categories)? loaded,
  }) {
    return loaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<ExpenseCategory> categories)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceExpenseCategoryOverviewStateInit value)
        init,
    required TResult Function(FinanceExpenseCategoryOverviewStateLoading value)
        loading,
    required TResult Function(FinanceExpenseCategoryOverviewStateLoaded value)
        loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceExpenseCategoryOverviewStateInit value)? init,
    TResult? Function(FinanceExpenseCategoryOverviewStateLoading value)?
        loading,
    TResult? Function(FinanceExpenseCategoryOverviewStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceExpenseCategoryOverviewStateInit value)? init,
    TResult Function(FinanceExpenseCategoryOverviewStateLoading value)? loading,
    TResult Function(FinanceExpenseCategoryOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FinanceExpenseCategoryOverviewStateLoaded
    implements FinanceExpenseCategoryOverviewState {
  const factory FinanceExpenseCategoryOverviewStateLoaded(
          {required final List<ExpenseCategory> categories}) =
      _$FinanceExpenseCategoryOverviewStateLoadedImpl;

  List<ExpenseCategory> get categories;
  @JsonKey(ignore: true)
  _$$FinanceExpenseCategoryOverviewStateLoadedImplCopyWith<
          _$FinanceExpenseCategoryOverviewStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
