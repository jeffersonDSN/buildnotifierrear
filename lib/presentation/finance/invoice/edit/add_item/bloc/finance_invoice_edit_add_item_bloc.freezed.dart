// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_invoice_edit_add_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinanceInvoiceEditAddItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId, String invoiceId) loadProjects,
    required TResult Function(String projectId) changeSelectedProject,
    required TResult Function(String taskId) changeSelectedTask,
    required TResult Function(Activity activity) checkActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientId, String invoiceId)? loadProjects,
    TResult? Function(String projectId)? changeSelectedProject,
    TResult? Function(String taskId)? changeSelectedTask,
    TResult? Function(Activity activity)? checkActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId, String invoiceId)? loadProjects,
    TResult Function(String projectId)? changeSelectedProject,
    TResult Function(String taskId)? changeSelectedTask,
    TResult Function(Activity activity)? checkActivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditAddItemEventLoadProjects value)
        loadProjects,
    required TResult Function(
            FinanceInvoiceEditAddItemEventChangeSelectedProject value)
        changeSelectedProject,
    required TResult Function(
            FinanceInvoiceEditAddItemEventChangeSelectedTask value)
        changeSelectedTask,
    required TResult Function(FinanceInvoiceEditAddItemEventCheckActivity value)
        checkActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditAddItemEventLoadProjects value)?
        loadProjects,
    TResult? Function(
            FinanceInvoiceEditAddItemEventChangeSelectedProject value)?
        changeSelectedProject,
    TResult? Function(FinanceInvoiceEditAddItemEventChangeSelectedTask value)?
        changeSelectedTask,
    TResult? Function(FinanceInvoiceEditAddItemEventCheckActivity value)?
        checkActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditAddItemEventLoadProjects value)?
        loadProjects,
    TResult Function(FinanceInvoiceEditAddItemEventChangeSelectedProject value)?
        changeSelectedProject,
    TResult Function(FinanceInvoiceEditAddItemEventChangeSelectedTask value)?
        changeSelectedTask,
    TResult Function(FinanceInvoiceEditAddItemEventCheckActivity value)?
        checkActivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceInvoiceEditAddItemEventCopyWith<$Res> {
  factory $FinanceInvoiceEditAddItemEventCopyWith(
          FinanceInvoiceEditAddItemEvent value,
          $Res Function(FinanceInvoiceEditAddItemEvent) then) =
      _$FinanceInvoiceEditAddItemEventCopyWithImpl<$Res,
          FinanceInvoiceEditAddItemEvent>;
}

/// @nodoc
class _$FinanceInvoiceEditAddItemEventCopyWithImpl<$Res,
        $Val extends FinanceInvoiceEditAddItemEvent>
    implements $FinanceInvoiceEditAddItemEventCopyWith<$Res> {
  _$FinanceInvoiceEditAddItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditAddItemEventLoadProjectsImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditAddItemEventLoadProjectsImplCopyWith(
          _$FinanceInvoiceEditAddItemEventLoadProjectsImpl value,
          $Res Function(_$FinanceInvoiceEditAddItemEventLoadProjectsImpl)
              then) =
      __$$FinanceInvoiceEditAddItemEventLoadProjectsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientId, String invoiceId});
}

/// @nodoc
class __$$FinanceInvoiceEditAddItemEventLoadProjectsImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditAddItemEventCopyWithImpl<$Res,
        _$FinanceInvoiceEditAddItemEventLoadProjectsImpl>
    implements _$$FinanceInvoiceEditAddItemEventLoadProjectsImplCopyWith<$Res> {
  __$$FinanceInvoiceEditAddItemEventLoadProjectsImplCopyWithImpl(
      _$FinanceInvoiceEditAddItemEventLoadProjectsImpl _value,
      $Res Function(_$FinanceInvoiceEditAddItemEventLoadProjectsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? invoiceId = null,
  }) {
    return _then(_$FinanceInvoiceEditAddItemEventLoadProjectsImpl(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceInvoiceEditAddItemEventLoadProjectsImpl
    implements FinanceInvoiceEditAddItemEventLoadProjects {
  const _$FinanceInvoiceEditAddItemEventLoadProjectsImpl(
      {required this.clientId, required this.invoiceId});

  @override
  final String clientId;
  @override
  final String invoiceId;

  @override
  String toString() {
    return 'FinanceInvoiceEditAddItemEvent.loadProjects(clientId: $clientId, invoiceId: $invoiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditAddItemEventLoadProjectsImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId, invoiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditAddItemEventLoadProjectsImplCopyWith<
          _$FinanceInvoiceEditAddItemEventLoadProjectsImpl>
      get copyWith =>
          __$$FinanceInvoiceEditAddItemEventLoadProjectsImplCopyWithImpl<
                  _$FinanceInvoiceEditAddItemEventLoadProjectsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId, String invoiceId) loadProjects,
    required TResult Function(String projectId) changeSelectedProject,
    required TResult Function(String taskId) changeSelectedTask,
    required TResult Function(Activity activity) checkActivity,
  }) {
    return loadProjects(clientId, invoiceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientId, String invoiceId)? loadProjects,
    TResult? Function(String projectId)? changeSelectedProject,
    TResult? Function(String taskId)? changeSelectedTask,
    TResult? Function(Activity activity)? checkActivity,
  }) {
    return loadProjects?.call(clientId, invoiceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId, String invoiceId)? loadProjects,
    TResult Function(String projectId)? changeSelectedProject,
    TResult Function(String taskId)? changeSelectedTask,
    TResult Function(Activity activity)? checkActivity,
    required TResult orElse(),
  }) {
    if (loadProjects != null) {
      return loadProjects(clientId, invoiceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditAddItemEventLoadProjects value)
        loadProjects,
    required TResult Function(
            FinanceInvoiceEditAddItemEventChangeSelectedProject value)
        changeSelectedProject,
    required TResult Function(
            FinanceInvoiceEditAddItemEventChangeSelectedTask value)
        changeSelectedTask,
    required TResult Function(FinanceInvoiceEditAddItemEventCheckActivity value)
        checkActivity,
  }) {
    return loadProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditAddItemEventLoadProjects value)?
        loadProjects,
    TResult? Function(
            FinanceInvoiceEditAddItemEventChangeSelectedProject value)?
        changeSelectedProject,
    TResult? Function(FinanceInvoiceEditAddItemEventChangeSelectedTask value)?
        changeSelectedTask,
    TResult? Function(FinanceInvoiceEditAddItemEventCheckActivity value)?
        checkActivity,
  }) {
    return loadProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditAddItemEventLoadProjects value)?
        loadProjects,
    TResult Function(FinanceInvoiceEditAddItemEventChangeSelectedProject value)?
        changeSelectedProject,
    TResult Function(FinanceInvoiceEditAddItemEventChangeSelectedTask value)?
        changeSelectedTask,
    TResult Function(FinanceInvoiceEditAddItemEventCheckActivity value)?
        checkActivity,
    required TResult orElse(),
  }) {
    if (loadProjects != null) {
      return loadProjects(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditAddItemEventLoadProjects
    implements FinanceInvoiceEditAddItemEvent {
  const factory FinanceInvoiceEditAddItemEventLoadProjects(
          {required final String clientId, required final String invoiceId}) =
      _$FinanceInvoiceEditAddItemEventLoadProjectsImpl;

  String get clientId;
  String get invoiceId;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditAddItemEventLoadProjectsImplCopyWith<
          _$FinanceInvoiceEditAddItemEventLoadProjectsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditAddItemEventChangeSelectedProjectImplCopyWith<
    $Res> {
  factory _$$FinanceInvoiceEditAddItemEventChangeSelectedProjectImplCopyWith(
          _$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl value,
          $Res Function(
                  _$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl)
              then) =
      __$$FinanceInvoiceEditAddItemEventChangeSelectedProjectImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({String projectId});
}

/// @nodoc
class __$$FinanceInvoiceEditAddItemEventChangeSelectedProjectImplCopyWithImpl<
        $Res>
    extends _$FinanceInvoiceEditAddItemEventCopyWithImpl<$Res,
        _$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl>
    implements
        _$$FinanceInvoiceEditAddItemEventChangeSelectedProjectImplCopyWith<
            $Res> {
  __$$FinanceInvoiceEditAddItemEventChangeSelectedProjectImplCopyWithImpl(
      _$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl _value,
      $Res Function(_$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
  }) {
    return _then(_$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl
    implements FinanceInvoiceEditAddItemEventChangeSelectedProject {
  const _$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl(
      {required this.projectId});

  @override
  final String projectId;

  @override
  String toString() {
    return 'FinanceInvoiceEditAddItemEvent.changeSelectedProject(projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditAddItemEventChangeSelectedProjectImplCopyWith<
          _$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl>
      get copyWith =>
          __$$FinanceInvoiceEditAddItemEventChangeSelectedProjectImplCopyWithImpl<
                  _$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId, String invoiceId) loadProjects,
    required TResult Function(String projectId) changeSelectedProject,
    required TResult Function(String taskId) changeSelectedTask,
    required TResult Function(Activity activity) checkActivity,
  }) {
    return changeSelectedProject(projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientId, String invoiceId)? loadProjects,
    TResult? Function(String projectId)? changeSelectedProject,
    TResult? Function(String taskId)? changeSelectedTask,
    TResult? Function(Activity activity)? checkActivity,
  }) {
    return changeSelectedProject?.call(projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId, String invoiceId)? loadProjects,
    TResult Function(String projectId)? changeSelectedProject,
    TResult Function(String taskId)? changeSelectedTask,
    TResult Function(Activity activity)? checkActivity,
    required TResult orElse(),
  }) {
    if (changeSelectedProject != null) {
      return changeSelectedProject(projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditAddItemEventLoadProjects value)
        loadProjects,
    required TResult Function(
            FinanceInvoiceEditAddItemEventChangeSelectedProject value)
        changeSelectedProject,
    required TResult Function(
            FinanceInvoiceEditAddItemEventChangeSelectedTask value)
        changeSelectedTask,
    required TResult Function(FinanceInvoiceEditAddItemEventCheckActivity value)
        checkActivity,
  }) {
    return changeSelectedProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditAddItemEventLoadProjects value)?
        loadProjects,
    TResult? Function(
            FinanceInvoiceEditAddItemEventChangeSelectedProject value)?
        changeSelectedProject,
    TResult? Function(FinanceInvoiceEditAddItemEventChangeSelectedTask value)?
        changeSelectedTask,
    TResult? Function(FinanceInvoiceEditAddItemEventCheckActivity value)?
        checkActivity,
  }) {
    return changeSelectedProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditAddItemEventLoadProjects value)?
        loadProjects,
    TResult Function(FinanceInvoiceEditAddItemEventChangeSelectedProject value)?
        changeSelectedProject,
    TResult Function(FinanceInvoiceEditAddItemEventChangeSelectedTask value)?
        changeSelectedTask,
    TResult Function(FinanceInvoiceEditAddItemEventCheckActivity value)?
        checkActivity,
    required TResult orElse(),
  }) {
    if (changeSelectedProject != null) {
      return changeSelectedProject(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditAddItemEventChangeSelectedProject
    implements FinanceInvoiceEditAddItemEvent {
  const factory FinanceInvoiceEditAddItemEventChangeSelectedProject(
          {required final String projectId}) =
      _$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl;

  String get projectId;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditAddItemEventChangeSelectedProjectImplCopyWith<
          _$FinanceInvoiceEditAddItemEventChangeSelectedProjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditAddItemEventChangeSelectedTaskImplCopyWith<
    $Res> {
  factory _$$FinanceInvoiceEditAddItemEventChangeSelectedTaskImplCopyWith(
          _$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl value,
          $Res Function(_$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl)
              then) =
      __$$FinanceInvoiceEditAddItemEventChangeSelectedTaskImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$FinanceInvoiceEditAddItemEventChangeSelectedTaskImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditAddItemEventCopyWithImpl<$Res,
        _$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl>
    implements
        _$$FinanceInvoiceEditAddItemEventChangeSelectedTaskImplCopyWith<$Res> {
  __$$FinanceInvoiceEditAddItemEventChangeSelectedTaskImplCopyWithImpl(
      _$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl _value,
      $Res Function(_$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl
    implements FinanceInvoiceEditAddItemEventChangeSelectedTask {
  const _$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl(
      {required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'FinanceInvoiceEditAddItemEvent.changeSelectedTask(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditAddItemEventChangeSelectedTaskImplCopyWith<
          _$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl>
      get copyWith =>
          __$$FinanceInvoiceEditAddItemEventChangeSelectedTaskImplCopyWithImpl<
                  _$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId, String invoiceId) loadProjects,
    required TResult Function(String projectId) changeSelectedProject,
    required TResult Function(String taskId) changeSelectedTask,
    required TResult Function(Activity activity) checkActivity,
  }) {
    return changeSelectedTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientId, String invoiceId)? loadProjects,
    TResult? Function(String projectId)? changeSelectedProject,
    TResult? Function(String taskId)? changeSelectedTask,
    TResult? Function(Activity activity)? checkActivity,
  }) {
    return changeSelectedTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId, String invoiceId)? loadProjects,
    TResult Function(String projectId)? changeSelectedProject,
    TResult Function(String taskId)? changeSelectedTask,
    TResult Function(Activity activity)? checkActivity,
    required TResult orElse(),
  }) {
    if (changeSelectedTask != null) {
      return changeSelectedTask(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditAddItemEventLoadProjects value)
        loadProjects,
    required TResult Function(
            FinanceInvoiceEditAddItemEventChangeSelectedProject value)
        changeSelectedProject,
    required TResult Function(
            FinanceInvoiceEditAddItemEventChangeSelectedTask value)
        changeSelectedTask,
    required TResult Function(FinanceInvoiceEditAddItemEventCheckActivity value)
        checkActivity,
  }) {
    return changeSelectedTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditAddItemEventLoadProjects value)?
        loadProjects,
    TResult? Function(
            FinanceInvoiceEditAddItemEventChangeSelectedProject value)?
        changeSelectedProject,
    TResult? Function(FinanceInvoiceEditAddItemEventChangeSelectedTask value)?
        changeSelectedTask,
    TResult? Function(FinanceInvoiceEditAddItemEventCheckActivity value)?
        checkActivity,
  }) {
    return changeSelectedTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditAddItemEventLoadProjects value)?
        loadProjects,
    TResult Function(FinanceInvoiceEditAddItemEventChangeSelectedProject value)?
        changeSelectedProject,
    TResult Function(FinanceInvoiceEditAddItemEventChangeSelectedTask value)?
        changeSelectedTask,
    TResult Function(FinanceInvoiceEditAddItemEventCheckActivity value)?
        checkActivity,
    required TResult orElse(),
  }) {
    if (changeSelectedTask != null) {
      return changeSelectedTask(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditAddItemEventChangeSelectedTask
    implements FinanceInvoiceEditAddItemEvent {
  const factory FinanceInvoiceEditAddItemEventChangeSelectedTask(
          {required final String taskId}) =
      _$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl;

  String get taskId;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditAddItemEventChangeSelectedTaskImplCopyWith<
          _$FinanceInvoiceEditAddItemEventChangeSelectedTaskImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditAddItemEventCheckActivityImplCopyWith<
    $Res> {
  factory _$$FinanceInvoiceEditAddItemEventCheckActivityImplCopyWith(
          _$FinanceInvoiceEditAddItemEventCheckActivityImpl value,
          $Res Function(_$FinanceInvoiceEditAddItemEventCheckActivityImpl)
              then) =
      __$$FinanceInvoiceEditAddItemEventCheckActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Activity activity});

  $ActivityCopyWith<$Res> get activity;
}

/// @nodoc
class __$$FinanceInvoiceEditAddItemEventCheckActivityImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditAddItemEventCopyWithImpl<$Res,
        _$FinanceInvoiceEditAddItemEventCheckActivityImpl>
    implements
        _$$FinanceInvoiceEditAddItemEventCheckActivityImplCopyWith<$Res> {
  __$$FinanceInvoiceEditAddItemEventCheckActivityImplCopyWithImpl(
      _$FinanceInvoiceEditAddItemEventCheckActivityImpl _value,
      $Res Function(_$FinanceInvoiceEditAddItemEventCheckActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
  }) {
    return _then(_$FinanceInvoiceEditAddItemEventCheckActivityImpl(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as Activity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res> get activity {
    return $ActivityCopyWith<$Res>(_value.activity, (value) {
      return _then(_value.copyWith(activity: value));
    });
  }
}

/// @nodoc

class _$FinanceInvoiceEditAddItemEventCheckActivityImpl
    implements FinanceInvoiceEditAddItemEventCheckActivity {
  const _$FinanceInvoiceEditAddItemEventCheckActivityImpl(
      {required this.activity});

  @override
  final Activity activity;

  @override
  String toString() {
    return 'FinanceInvoiceEditAddItemEvent.checkActivity(activity: $activity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditAddItemEventCheckActivityImpl &&
            (identical(other.activity, activity) ||
                other.activity == activity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditAddItemEventCheckActivityImplCopyWith<
          _$FinanceInvoiceEditAddItemEventCheckActivityImpl>
      get copyWith =>
          __$$FinanceInvoiceEditAddItemEventCheckActivityImplCopyWithImpl<
                  _$FinanceInvoiceEditAddItemEventCheckActivityImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId, String invoiceId) loadProjects,
    required TResult Function(String projectId) changeSelectedProject,
    required TResult Function(String taskId) changeSelectedTask,
    required TResult Function(Activity activity) checkActivity,
  }) {
    return checkActivity(activity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientId, String invoiceId)? loadProjects,
    TResult? Function(String projectId)? changeSelectedProject,
    TResult? Function(String taskId)? changeSelectedTask,
    TResult? Function(Activity activity)? checkActivity,
  }) {
    return checkActivity?.call(activity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId, String invoiceId)? loadProjects,
    TResult Function(String projectId)? changeSelectedProject,
    TResult Function(String taskId)? changeSelectedTask,
    TResult Function(Activity activity)? checkActivity,
    required TResult orElse(),
  }) {
    if (checkActivity != null) {
      return checkActivity(activity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditAddItemEventLoadProjects value)
        loadProjects,
    required TResult Function(
            FinanceInvoiceEditAddItemEventChangeSelectedProject value)
        changeSelectedProject,
    required TResult Function(
            FinanceInvoiceEditAddItemEventChangeSelectedTask value)
        changeSelectedTask,
    required TResult Function(FinanceInvoiceEditAddItemEventCheckActivity value)
        checkActivity,
  }) {
    return checkActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditAddItemEventLoadProjects value)?
        loadProjects,
    TResult? Function(
            FinanceInvoiceEditAddItemEventChangeSelectedProject value)?
        changeSelectedProject,
    TResult? Function(FinanceInvoiceEditAddItemEventChangeSelectedTask value)?
        changeSelectedTask,
    TResult? Function(FinanceInvoiceEditAddItemEventCheckActivity value)?
        checkActivity,
  }) {
    return checkActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditAddItemEventLoadProjects value)?
        loadProjects,
    TResult Function(FinanceInvoiceEditAddItemEventChangeSelectedProject value)?
        changeSelectedProject,
    TResult Function(FinanceInvoiceEditAddItemEventChangeSelectedTask value)?
        changeSelectedTask,
    TResult Function(FinanceInvoiceEditAddItemEventCheckActivity value)?
        checkActivity,
    required TResult orElse(),
  }) {
    if (checkActivity != null) {
      return checkActivity(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditAddItemEventCheckActivity
    implements FinanceInvoiceEditAddItemEvent {
  const factory FinanceInvoiceEditAddItemEventCheckActivity(
          {required final Activity activity}) =
      _$FinanceInvoiceEditAddItemEventCheckActivityImpl;

  Activity get activity;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditAddItemEventCheckActivityImplCopyWith<
          _$FinanceInvoiceEditAddItemEventCheckActivityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FinanceInvoiceEditAddItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String cliendId, String invoiceId,
            List<Project> projects, Project? selectedProject)
        loading,
    required TResult Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String cliendId, String invoiceId, List<Project> projects,
            Project? selectedProject)?
        loading,
    TResult? Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String cliendId, String invoiceId, List<Project> projects,
            Project? selectedProject)?
        loading,
    TResult Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditAddItemStateInit value) init,
    required TResult Function(FinanceInvoiceEditAddItemStateLoading value)
        loading,
    required TResult Function(FinanceInvoiceEditAddItemStateLoaded value)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditAddItemStateInit value)? init,
    TResult? Function(FinanceInvoiceEditAddItemStateLoading value)? loading,
    TResult? Function(FinanceInvoiceEditAddItemStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditAddItemStateInit value)? init,
    TResult Function(FinanceInvoiceEditAddItemStateLoading value)? loading,
    TResult Function(FinanceInvoiceEditAddItemStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceInvoiceEditAddItemStateCopyWith<$Res> {
  factory $FinanceInvoiceEditAddItemStateCopyWith(
          FinanceInvoiceEditAddItemState value,
          $Res Function(FinanceInvoiceEditAddItemState) then) =
      _$FinanceInvoiceEditAddItemStateCopyWithImpl<$Res,
          FinanceInvoiceEditAddItemState>;
}

/// @nodoc
class _$FinanceInvoiceEditAddItemStateCopyWithImpl<$Res,
        $Val extends FinanceInvoiceEditAddItemState>
    implements $FinanceInvoiceEditAddItemStateCopyWith<$Res> {
  _$FinanceInvoiceEditAddItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditAddItemStateInitImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditAddItemStateInitImplCopyWith(
          _$FinanceInvoiceEditAddItemStateInitImpl value,
          $Res Function(_$FinanceInvoiceEditAddItemStateInitImpl) then) =
      __$$FinanceInvoiceEditAddItemStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinanceInvoiceEditAddItemStateInitImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditAddItemStateCopyWithImpl<$Res,
        _$FinanceInvoiceEditAddItemStateInitImpl>
    implements _$$FinanceInvoiceEditAddItemStateInitImplCopyWith<$Res> {
  __$$FinanceInvoiceEditAddItemStateInitImplCopyWithImpl(
      _$FinanceInvoiceEditAddItemStateInitImpl _value,
      $Res Function(_$FinanceInvoiceEditAddItemStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinanceInvoiceEditAddItemStateInitImpl
    implements FinanceInvoiceEditAddItemStateInit {
  const _$FinanceInvoiceEditAddItemStateInitImpl();

  @override
  String toString() {
    return 'FinanceInvoiceEditAddItemState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditAddItemStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String cliendId, String invoiceId,
            List<Project> projects, Project? selectedProject)
        loading,
    required TResult Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)
        loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String cliendId, String invoiceId, List<Project> projects,
            Project? selectedProject)?
        loading,
    TResult? Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)?
        loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String cliendId, String invoiceId, List<Project> projects,
            Project? selectedProject)?
        loading,
    TResult Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)?
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
    required TResult Function(FinanceInvoiceEditAddItemStateInit value) init,
    required TResult Function(FinanceInvoiceEditAddItemStateLoading value)
        loading,
    required TResult Function(FinanceInvoiceEditAddItemStateLoaded value)
        loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditAddItemStateInit value)? init,
    TResult? Function(FinanceInvoiceEditAddItemStateLoading value)? loading,
    TResult? Function(FinanceInvoiceEditAddItemStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditAddItemStateInit value)? init,
    TResult Function(FinanceInvoiceEditAddItemStateLoading value)? loading,
    TResult Function(FinanceInvoiceEditAddItemStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditAddItemStateInit
    implements FinanceInvoiceEditAddItemState {
  const factory FinanceInvoiceEditAddItemStateInit() =
      _$FinanceInvoiceEditAddItemStateInitImpl;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditAddItemStateLoadingImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditAddItemStateLoadingImplCopyWith(
          _$FinanceInvoiceEditAddItemStateLoadingImpl value,
          $Res Function(_$FinanceInvoiceEditAddItemStateLoadingImpl) then) =
      __$$FinanceInvoiceEditAddItemStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String cliendId,
      String invoiceId,
      List<Project> projects,
      Project? selectedProject});

  $ProjectCopyWith<$Res>? get selectedProject;
}

/// @nodoc
class __$$FinanceInvoiceEditAddItemStateLoadingImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditAddItemStateCopyWithImpl<$Res,
        _$FinanceInvoiceEditAddItemStateLoadingImpl>
    implements _$$FinanceInvoiceEditAddItemStateLoadingImplCopyWith<$Res> {
  __$$FinanceInvoiceEditAddItemStateLoadingImplCopyWithImpl(
      _$FinanceInvoiceEditAddItemStateLoadingImpl _value,
      $Res Function(_$FinanceInvoiceEditAddItemStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cliendId = null,
    Object? invoiceId = null,
    Object? projects = null,
    Object? selectedProject = freezed,
  }) {
    return _then(_$FinanceInvoiceEditAddItemStateLoadingImpl(
      cliendId: null == cliendId
          ? _value.cliendId
          : cliendId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      selectedProject: freezed == selectedProject
          ? _value.selectedProject
          : selectedProject // ignore: cast_nullable_to_non_nullable
              as Project?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res>? get selectedProject {
    if (_value.selectedProject == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.selectedProject!, (value) {
      return _then(_value.copyWith(selectedProject: value));
    });
  }
}

/// @nodoc

class _$FinanceInvoiceEditAddItemStateLoadingImpl
    implements FinanceInvoiceEditAddItemStateLoading {
  const _$FinanceInvoiceEditAddItemStateLoadingImpl(
      {required this.cliendId,
      required this.invoiceId,
      final List<Project> projects = const [],
      this.selectedProject})
      : _projects = projects;

  @override
  final String cliendId;
  @override
  final String invoiceId;
  final List<Project> _projects;
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  final Project? selectedProject;

  @override
  String toString() {
    return 'FinanceInvoiceEditAddItemState.loading(cliendId: $cliendId, invoiceId: $invoiceId, projects: $projects, selectedProject: $selectedProject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditAddItemStateLoadingImpl &&
            (identical(other.cliendId, cliendId) ||
                other.cliendId == cliendId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.selectedProject, selectedProject) ||
                other.selectedProject == selectedProject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cliendId, invoiceId,
      const DeepCollectionEquality().hash(_projects), selectedProject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditAddItemStateLoadingImplCopyWith<
          _$FinanceInvoiceEditAddItemStateLoadingImpl>
      get copyWith => __$$FinanceInvoiceEditAddItemStateLoadingImplCopyWithImpl<
          _$FinanceInvoiceEditAddItemStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String cliendId, String invoiceId,
            List<Project> projects, Project? selectedProject)
        loading,
    required TResult Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)
        loaded,
  }) {
    return loading(cliendId, invoiceId, projects, selectedProject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String cliendId, String invoiceId, List<Project> projects,
            Project? selectedProject)?
        loading,
    TResult? Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)?
        loaded,
  }) {
    return loading?.call(cliendId, invoiceId, projects, selectedProject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String cliendId, String invoiceId, List<Project> projects,
            Project? selectedProject)?
        loading,
    TResult Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(cliendId, invoiceId, projects, selectedProject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditAddItemStateInit value) init,
    required TResult Function(FinanceInvoiceEditAddItemStateLoading value)
        loading,
    required TResult Function(FinanceInvoiceEditAddItemStateLoaded value)
        loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditAddItemStateInit value)? init,
    TResult? Function(FinanceInvoiceEditAddItemStateLoading value)? loading,
    TResult? Function(FinanceInvoiceEditAddItemStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditAddItemStateInit value)? init,
    TResult Function(FinanceInvoiceEditAddItemStateLoading value)? loading,
    TResult Function(FinanceInvoiceEditAddItemStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditAddItemStateLoading
    implements FinanceInvoiceEditAddItemState {
  const factory FinanceInvoiceEditAddItemStateLoading(
          {required final String cliendId,
          required final String invoiceId,
          final List<Project> projects,
          final Project? selectedProject}) =
      _$FinanceInvoiceEditAddItemStateLoadingImpl;

  String get cliendId;
  String get invoiceId;
  List<Project> get projects;
  Project? get selectedProject;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditAddItemStateLoadingImplCopyWith<
          _$FinanceInvoiceEditAddItemStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinanceInvoiceEditAddItemStateLoadedImplCopyWith<$Res> {
  factory _$$FinanceInvoiceEditAddItemStateLoadedImplCopyWith(
          _$FinanceInvoiceEditAddItemStateLoadedImpl value,
          $Res Function(_$FinanceInvoiceEditAddItemStateLoadedImpl) then) =
      __$$FinanceInvoiceEditAddItemStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String cliendId,
      String invoiceId,
      List<Project> projects,
      Project? selectedProject,
      List<Task> tasks,
      Task? selectedTask,
      List<Activity> activiteis,
      List<Activity> filteredActivities,
      List<InvoiceItem> invoiceItems});

  $ProjectCopyWith<$Res>? get selectedProject;
  $TaskCopyWith<$Res>? get selectedTask;
}

/// @nodoc
class __$$FinanceInvoiceEditAddItemStateLoadedImplCopyWithImpl<$Res>
    extends _$FinanceInvoiceEditAddItemStateCopyWithImpl<$Res,
        _$FinanceInvoiceEditAddItemStateLoadedImpl>
    implements _$$FinanceInvoiceEditAddItemStateLoadedImplCopyWith<$Res> {
  __$$FinanceInvoiceEditAddItemStateLoadedImplCopyWithImpl(
      _$FinanceInvoiceEditAddItemStateLoadedImpl _value,
      $Res Function(_$FinanceInvoiceEditAddItemStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cliendId = null,
    Object? invoiceId = null,
    Object? projects = null,
    Object? selectedProject = freezed,
    Object? tasks = null,
    Object? selectedTask = freezed,
    Object? activiteis = null,
    Object? filteredActivities = null,
    Object? invoiceItems = null,
  }) {
    return _then(_$FinanceInvoiceEditAddItemStateLoadedImpl(
      cliendId: null == cliendId
          ? _value.cliendId
          : cliendId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      selectedProject: freezed == selectedProject
          ? _value.selectedProject
          : selectedProject // ignore: cast_nullable_to_non_nullable
              as Project?,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      selectedTask: freezed == selectedTask
          ? _value.selectedTask
          : selectedTask // ignore: cast_nullable_to_non_nullable
              as Task?,
      activiteis: null == activiteis
          ? _value._activiteis
          : activiteis // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      filteredActivities: null == filteredActivities
          ? _value._filteredActivities
          : filteredActivities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      invoiceItems: null == invoiceItems
          ? _value._invoiceItems
          : invoiceItems // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res>? get selectedProject {
    if (_value.selectedProject == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.selectedProject!, (value) {
      return _then(_value.copyWith(selectedProject: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res>? get selectedTask {
    if (_value.selectedTask == null) {
      return null;
    }

    return $TaskCopyWith<$Res>(_value.selectedTask!, (value) {
      return _then(_value.copyWith(selectedTask: value));
    });
  }
}

/// @nodoc

class _$FinanceInvoiceEditAddItemStateLoadedImpl
    implements FinanceInvoiceEditAddItemStateLoaded {
  const _$FinanceInvoiceEditAddItemStateLoadedImpl(
      {required this.cliendId,
      required this.invoiceId,
      final List<Project> projects = const [],
      this.selectedProject,
      final List<Task> tasks = const [],
      this.selectedTask,
      final List<Activity> activiteis = const [],
      final List<Activity> filteredActivities = const [],
      final List<InvoiceItem> invoiceItems = const []})
      : _projects = projects,
        _tasks = tasks,
        _activiteis = activiteis,
        _filteredActivities = filteredActivities,
        _invoiceItems = invoiceItems;

  @override
  final String cliendId;
  @override
  final String invoiceId;
  final List<Project> _projects;
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  final Project? selectedProject;
  final List<Task> _tasks;
  @override
  @JsonKey()
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final Task? selectedTask;
  final List<Activity> _activiteis;
  @override
  @JsonKey()
  List<Activity> get activiteis {
    if (_activiteis is EqualUnmodifiableListView) return _activiteis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activiteis);
  }

  final List<Activity> _filteredActivities;
  @override
  @JsonKey()
  List<Activity> get filteredActivities {
    if (_filteredActivities is EqualUnmodifiableListView)
      return _filteredActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredActivities);
  }

  final List<InvoiceItem> _invoiceItems;
  @override
  @JsonKey()
  List<InvoiceItem> get invoiceItems {
    if (_invoiceItems is EqualUnmodifiableListView) return _invoiceItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoiceItems);
  }

  @override
  String toString() {
    return 'FinanceInvoiceEditAddItemState.loaded(cliendId: $cliendId, invoiceId: $invoiceId, projects: $projects, selectedProject: $selectedProject, tasks: $tasks, selectedTask: $selectedTask, activiteis: $activiteis, filteredActivities: $filteredActivities, invoiceItems: $invoiceItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceInvoiceEditAddItemStateLoadedImpl &&
            (identical(other.cliendId, cliendId) ||
                other.cliendId == cliendId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.selectedProject, selectedProject) ||
                other.selectedProject == selectedProject) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.selectedTask, selectedTask) ||
                other.selectedTask == selectedTask) &&
            const DeepCollectionEquality()
                .equals(other._activiteis, _activiteis) &&
            const DeepCollectionEquality()
                .equals(other._filteredActivities, _filteredActivities) &&
            const DeepCollectionEquality()
                .equals(other._invoiceItems, _invoiceItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cliendId,
      invoiceId,
      const DeepCollectionEquality().hash(_projects),
      selectedProject,
      const DeepCollectionEquality().hash(_tasks),
      selectedTask,
      const DeepCollectionEquality().hash(_activiteis),
      const DeepCollectionEquality().hash(_filteredActivities),
      const DeepCollectionEquality().hash(_invoiceItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceInvoiceEditAddItemStateLoadedImplCopyWith<
          _$FinanceInvoiceEditAddItemStateLoadedImpl>
      get copyWith => __$$FinanceInvoiceEditAddItemStateLoadedImplCopyWithImpl<
          _$FinanceInvoiceEditAddItemStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String cliendId, String invoiceId,
            List<Project> projects, Project? selectedProject)
        loading,
    required TResult Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)
        loaded,
  }) {
    return loaded(cliendId, invoiceId, projects, selectedProject, tasks,
        selectedTask, activiteis, filteredActivities, invoiceItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String cliendId, String invoiceId, List<Project> projects,
            Project? selectedProject)?
        loading,
    TResult? Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)?
        loaded,
  }) {
    return loaded?.call(cliendId, invoiceId, projects, selectedProject, tasks,
        selectedTask, activiteis, filteredActivities, invoiceItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String cliendId, String invoiceId, List<Project> projects,
            Project? selectedProject)?
        loading,
    TResult Function(
            String cliendId,
            String invoiceId,
            List<Project> projects,
            Project? selectedProject,
            List<Task> tasks,
            Task? selectedTask,
            List<Activity> activiteis,
            List<Activity> filteredActivities,
            List<InvoiceItem> invoiceItems)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cliendId, invoiceId, projects, selectedProject, tasks,
          selectedTask, activiteis, filteredActivities, invoiceItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FinanceInvoiceEditAddItemStateInit value) init,
    required TResult Function(FinanceInvoiceEditAddItemStateLoading value)
        loading,
    required TResult Function(FinanceInvoiceEditAddItemStateLoaded value)
        loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FinanceInvoiceEditAddItemStateInit value)? init,
    TResult? Function(FinanceInvoiceEditAddItemStateLoading value)? loading,
    TResult? Function(FinanceInvoiceEditAddItemStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FinanceInvoiceEditAddItemStateInit value)? init,
    TResult Function(FinanceInvoiceEditAddItemStateLoading value)? loading,
    TResult Function(FinanceInvoiceEditAddItemStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FinanceInvoiceEditAddItemStateLoaded
    implements FinanceInvoiceEditAddItemState {
  const factory FinanceInvoiceEditAddItemStateLoaded(
          {required final String cliendId,
          required final String invoiceId,
          final List<Project> projects,
          final Project? selectedProject,
          final List<Task> tasks,
          final Task? selectedTask,
          final List<Activity> activiteis,
          final List<Activity> filteredActivities,
          final List<InvoiceItem> invoiceItems}) =
      _$FinanceInvoiceEditAddItemStateLoadedImpl;

  String get cliendId;
  String get invoiceId;
  List<Project> get projects;
  Project? get selectedProject;
  List<Task> get tasks;
  Task? get selectedTask;
  List<Activity> get activiteis;
  List<Activity> get filteredActivities;
  List<InvoiceItem> get invoiceItems;
  @JsonKey(ignore: true)
  _$$FinanceInvoiceEditAddItemStateLoadedImplCopyWith<
          _$FinanceInvoiceEditAddItemStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
