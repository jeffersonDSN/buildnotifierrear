// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectsOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Project projectSelected) changeProjectSelected,
    required TResult Function(DependenteStateType tasksState) updateTasksState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Project projectSelected)? changeProjectSelected,
    TResult? Function(DependenteStateType tasksState)? updateTasksState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Project projectSelected)? changeProjectSelected,
    TResult Function(DependenteStateType tasksState)? updateTasksState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsOverviewEventLoad value) load,
    required TResult Function(ProjectsOverviewEventChangeProjectSelected value)
        changeProjectSelected,
    required TResult Function(ProjectsOverviewEventUpdateTasksState value)
        updateTasksState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventLoad value)? load,
    TResult? Function(ProjectsOverviewEventChangeProjectSelected value)?
        changeProjectSelected,
    TResult? Function(ProjectsOverviewEventUpdateTasksState value)?
        updateTasksState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventLoad value)? load,
    TResult Function(ProjectsOverviewEventChangeProjectSelected value)?
        changeProjectSelected,
    TResult Function(ProjectsOverviewEventUpdateTasksState value)?
        updateTasksState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsOverviewEventCopyWith<$Res> {
  factory $ProjectsOverviewEventCopyWith(ProjectsOverviewEvent value,
          $Res Function(ProjectsOverviewEvent) then) =
      _$ProjectsOverviewEventCopyWithImpl<$Res, ProjectsOverviewEvent>;
}

/// @nodoc
class _$ProjectsOverviewEventCopyWithImpl<$Res,
        $Val extends ProjectsOverviewEvent>
    implements $ProjectsOverviewEventCopyWith<$Res> {
  _$ProjectsOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectsOverviewEventLoadImplCopyWith<$Res> {
  factory _$$ProjectsOverviewEventLoadImplCopyWith(
          _$ProjectsOverviewEventLoadImpl value,
          $Res Function(_$ProjectsOverviewEventLoadImpl) then) =
      __$$ProjectsOverviewEventLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectsOverviewEventLoadImplCopyWithImpl<$Res>
    extends _$ProjectsOverviewEventCopyWithImpl<$Res,
        _$ProjectsOverviewEventLoadImpl>
    implements _$$ProjectsOverviewEventLoadImplCopyWith<$Res> {
  __$$ProjectsOverviewEventLoadImplCopyWithImpl(
      _$ProjectsOverviewEventLoadImpl _value,
      $Res Function(_$ProjectsOverviewEventLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectsOverviewEventLoadImpl implements ProjectsOverviewEventLoad {
  const _$ProjectsOverviewEventLoadImpl();

  @override
  String toString() {
    return 'ProjectsOverviewEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsOverviewEventLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Project projectSelected) changeProjectSelected,
    required TResult Function(DependenteStateType tasksState) updateTasksState,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Project projectSelected)? changeProjectSelected,
    TResult? Function(DependenteStateType tasksState)? updateTasksState,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Project projectSelected)? changeProjectSelected,
    TResult Function(DependenteStateType tasksState)? updateTasksState,
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
    required TResult Function(ProjectsOverviewEventLoad value) load,
    required TResult Function(ProjectsOverviewEventChangeProjectSelected value)
        changeProjectSelected,
    required TResult Function(ProjectsOverviewEventUpdateTasksState value)
        updateTasksState,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventLoad value)? load,
    TResult? Function(ProjectsOverviewEventChangeProjectSelected value)?
        changeProjectSelected,
    TResult? Function(ProjectsOverviewEventUpdateTasksState value)?
        updateTasksState,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventLoad value)? load,
    TResult Function(ProjectsOverviewEventChangeProjectSelected value)?
        changeProjectSelected,
    TResult Function(ProjectsOverviewEventUpdateTasksState value)?
        updateTasksState,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ProjectsOverviewEventLoad implements ProjectsOverviewEvent {
  const factory ProjectsOverviewEventLoad() = _$ProjectsOverviewEventLoadImpl;
}

/// @nodoc
abstract class _$$ProjectsOverviewEventChangeProjectSelectedImplCopyWith<$Res> {
  factory _$$ProjectsOverviewEventChangeProjectSelectedImplCopyWith(
          _$ProjectsOverviewEventChangeProjectSelectedImpl value,
          $Res Function(_$ProjectsOverviewEventChangeProjectSelectedImpl)
              then) =
      __$$ProjectsOverviewEventChangeProjectSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Project projectSelected});

  $ProjectCopyWith<$Res> get projectSelected;
}

/// @nodoc
class __$$ProjectsOverviewEventChangeProjectSelectedImplCopyWithImpl<$Res>
    extends _$ProjectsOverviewEventCopyWithImpl<$Res,
        _$ProjectsOverviewEventChangeProjectSelectedImpl>
    implements _$$ProjectsOverviewEventChangeProjectSelectedImplCopyWith<$Res> {
  __$$ProjectsOverviewEventChangeProjectSelectedImplCopyWithImpl(
      _$ProjectsOverviewEventChangeProjectSelectedImpl _value,
      $Res Function(_$ProjectsOverviewEventChangeProjectSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectSelected = null,
  }) {
    return _then(_$ProjectsOverviewEventChangeProjectSelectedImpl(
      projectSelected: null == projectSelected
          ? _value.projectSelected
          : projectSelected // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get projectSelected {
    return $ProjectCopyWith<$Res>(_value.projectSelected, (value) {
      return _then(_value.copyWith(projectSelected: value));
    });
  }
}

/// @nodoc

class _$ProjectsOverviewEventChangeProjectSelectedImpl
    implements ProjectsOverviewEventChangeProjectSelected {
  const _$ProjectsOverviewEventChangeProjectSelectedImpl(
      {required this.projectSelected});

  @override
  final Project projectSelected;

  @override
  String toString() {
    return 'ProjectsOverviewEvent.changeProjectSelected(projectSelected: $projectSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsOverviewEventChangeProjectSelectedImpl &&
            (identical(other.projectSelected, projectSelected) ||
                other.projectSelected == projectSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsOverviewEventChangeProjectSelectedImplCopyWith<
          _$ProjectsOverviewEventChangeProjectSelectedImpl>
      get copyWith =>
          __$$ProjectsOverviewEventChangeProjectSelectedImplCopyWithImpl<
                  _$ProjectsOverviewEventChangeProjectSelectedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Project projectSelected) changeProjectSelected,
    required TResult Function(DependenteStateType tasksState) updateTasksState,
  }) {
    return changeProjectSelected(projectSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Project projectSelected)? changeProjectSelected,
    TResult? Function(DependenteStateType tasksState)? updateTasksState,
  }) {
    return changeProjectSelected?.call(projectSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Project projectSelected)? changeProjectSelected,
    TResult Function(DependenteStateType tasksState)? updateTasksState,
    required TResult orElse(),
  }) {
    if (changeProjectSelected != null) {
      return changeProjectSelected(projectSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsOverviewEventLoad value) load,
    required TResult Function(ProjectsOverviewEventChangeProjectSelected value)
        changeProjectSelected,
    required TResult Function(ProjectsOverviewEventUpdateTasksState value)
        updateTasksState,
  }) {
    return changeProjectSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventLoad value)? load,
    TResult? Function(ProjectsOverviewEventChangeProjectSelected value)?
        changeProjectSelected,
    TResult? Function(ProjectsOverviewEventUpdateTasksState value)?
        updateTasksState,
  }) {
    return changeProjectSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventLoad value)? load,
    TResult Function(ProjectsOverviewEventChangeProjectSelected value)?
        changeProjectSelected,
    TResult Function(ProjectsOverviewEventUpdateTasksState value)?
        updateTasksState,
    required TResult orElse(),
  }) {
    if (changeProjectSelected != null) {
      return changeProjectSelected(this);
    }
    return orElse();
  }
}

abstract class ProjectsOverviewEventChangeProjectSelected
    implements ProjectsOverviewEvent {
  const factory ProjectsOverviewEventChangeProjectSelected(
          {required final Project projectSelected}) =
      _$ProjectsOverviewEventChangeProjectSelectedImpl;

  Project get projectSelected;
  @JsonKey(ignore: true)
  _$$ProjectsOverviewEventChangeProjectSelectedImplCopyWith<
          _$ProjectsOverviewEventChangeProjectSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectsOverviewEventUpdateTasksStateImplCopyWith<$Res> {
  factory _$$ProjectsOverviewEventUpdateTasksStateImplCopyWith(
          _$ProjectsOverviewEventUpdateTasksStateImpl value,
          $Res Function(_$ProjectsOverviewEventUpdateTasksStateImpl) then) =
      __$$ProjectsOverviewEventUpdateTasksStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DependenteStateType tasksState});

  $DependenteStateTypeCopyWith<$Res> get tasksState;
}

/// @nodoc
class __$$ProjectsOverviewEventUpdateTasksStateImplCopyWithImpl<$Res>
    extends _$ProjectsOverviewEventCopyWithImpl<$Res,
        _$ProjectsOverviewEventUpdateTasksStateImpl>
    implements _$$ProjectsOverviewEventUpdateTasksStateImplCopyWith<$Res> {
  __$$ProjectsOverviewEventUpdateTasksStateImplCopyWithImpl(
      _$ProjectsOverviewEventUpdateTasksStateImpl _value,
      $Res Function(_$ProjectsOverviewEventUpdateTasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksState = null,
  }) {
    return _then(_$ProjectsOverviewEventUpdateTasksStateImpl(
      tasksState: null == tasksState
          ? _value.tasksState
          : tasksState // ignore: cast_nullable_to_non_nullable
              as DependenteStateType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenteStateTypeCopyWith<$Res> get tasksState {
    return $DependenteStateTypeCopyWith<$Res>(_value.tasksState, (value) {
      return _then(_value.copyWith(tasksState: value));
    });
  }
}

/// @nodoc

class _$ProjectsOverviewEventUpdateTasksStateImpl
    implements ProjectsOverviewEventUpdateTasksState {
  const _$ProjectsOverviewEventUpdateTasksStateImpl({required this.tasksState});

  @override
  final DependenteStateType tasksState;

  @override
  String toString() {
    return 'ProjectsOverviewEvent.updateTasksState(tasksState: $tasksState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsOverviewEventUpdateTasksStateImpl &&
            (identical(other.tasksState, tasksState) ||
                other.tasksState == tasksState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasksState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsOverviewEventUpdateTasksStateImplCopyWith<
          _$ProjectsOverviewEventUpdateTasksStateImpl>
      get copyWith => __$$ProjectsOverviewEventUpdateTasksStateImplCopyWithImpl<
          _$ProjectsOverviewEventUpdateTasksStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Project projectSelected) changeProjectSelected,
    required TResult Function(DependenteStateType tasksState) updateTasksState,
  }) {
    return updateTasksState(tasksState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Project projectSelected)? changeProjectSelected,
    TResult? Function(DependenteStateType tasksState)? updateTasksState,
  }) {
    return updateTasksState?.call(tasksState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Project projectSelected)? changeProjectSelected,
    TResult Function(DependenteStateType tasksState)? updateTasksState,
    required TResult orElse(),
  }) {
    if (updateTasksState != null) {
      return updateTasksState(tasksState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsOverviewEventLoad value) load,
    required TResult Function(ProjectsOverviewEventChangeProjectSelected value)
        changeProjectSelected,
    required TResult Function(ProjectsOverviewEventUpdateTasksState value)
        updateTasksState,
  }) {
    return updateTasksState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventLoad value)? load,
    TResult? Function(ProjectsOverviewEventChangeProjectSelected value)?
        changeProjectSelected,
    TResult? Function(ProjectsOverviewEventUpdateTasksState value)?
        updateTasksState,
  }) {
    return updateTasksState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventLoad value)? load,
    TResult Function(ProjectsOverviewEventChangeProjectSelected value)?
        changeProjectSelected,
    TResult Function(ProjectsOverviewEventUpdateTasksState value)?
        updateTasksState,
    required TResult orElse(),
  }) {
    if (updateTasksState != null) {
      return updateTasksState(this);
    }
    return orElse();
  }
}

abstract class ProjectsOverviewEventUpdateTasksState
    implements ProjectsOverviewEvent {
  const factory ProjectsOverviewEventUpdateTasksState(
          {required final DependenteStateType tasksState}) =
      _$ProjectsOverviewEventUpdateTasksStateImpl;

  DependenteStateType get tasksState;
  @JsonKey(ignore: true)
  _$$ProjectsOverviewEventUpdateTasksStateImplCopyWith<
          _$ProjectsOverviewEventUpdateTasksStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectsOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsOverviewEventEmpty value) empty,
    required TResult Function(ProjectsOverviewEventLoading value) loading,
    required TResult Function(ProjectsOverviewEventLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventEmpty value)? empty,
    TResult? Function(ProjectsOverviewEventLoading value)? loading,
    TResult? Function(ProjectsOverviewEventLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventEmpty value)? empty,
    TResult Function(ProjectsOverviewEventLoading value)? loading,
    TResult Function(ProjectsOverviewEventLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsOverviewStateCopyWith<$Res> {
  factory $ProjectsOverviewStateCopyWith(ProjectsOverviewState value,
          $Res Function(ProjectsOverviewState) then) =
      _$ProjectsOverviewStateCopyWithImpl<$Res, ProjectsOverviewState>;
}

/// @nodoc
class _$ProjectsOverviewStateCopyWithImpl<$Res,
        $Val extends ProjectsOverviewState>
    implements $ProjectsOverviewStateCopyWith<$Res> {
  _$ProjectsOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectsOverviewEventEmptyImplCopyWith<$Res> {
  factory _$$ProjectsOverviewEventEmptyImplCopyWith(
          _$ProjectsOverviewEventEmptyImpl value,
          $Res Function(_$ProjectsOverviewEventEmptyImpl) then) =
      __$$ProjectsOverviewEventEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectsOverviewEventEmptyImplCopyWithImpl<$Res>
    extends _$ProjectsOverviewStateCopyWithImpl<$Res,
        _$ProjectsOverviewEventEmptyImpl>
    implements _$$ProjectsOverviewEventEmptyImplCopyWith<$Res> {
  __$$ProjectsOverviewEventEmptyImplCopyWithImpl(
      _$ProjectsOverviewEventEmptyImpl _value,
      $Res Function(_$ProjectsOverviewEventEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectsOverviewEventEmptyImpl implements ProjectsOverviewEventEmpty {
  const _$ProjectsOverviewEventEmptyImpl();

  @override
  String toString() {
    return 'ProjectsOverviewState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsOverviewEventEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)?
        loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsOverviewEventEmpty value) empty,
    required TResult Function(ProjectsOverviewEventLoading value) loading,
    required TResult Function(ProjectsOverviewEventLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventEmpty value)? empty,
    TResult? Function(ProjectsOverviewEventLoading value)? loading,
    TResult? Function(ProjectsOverviewEventLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventEmpty value)? empty,
    TResult Function(ProjectsOverviewEventLoading value)? loading,
    TResult Function(ProjectsOverviewEventLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ProjectsOverviewEventEmpty implements ProjectsOverviewState {
  const factory ProjectsOverviewEventEmpty() = _$ProjectsOverviewEventEmptyImpl;
}

/// @nodoc
abstract class _$$ProjectsOverviewEventLoadingImplCopyWith<$Res> {
  factory _$$ProjectsOverviewEventLoadingImplCopyWith(
          _$ProjectsOverviewEventLoadingImpl value,
          $Res Function(_$ProjectsOverviewEventLoadingImpl) then) =
      __$$ProjectsOverviewEventLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectsOverviewEventLoadingImplCopyWithImpl<$Res>
    extends _$ProjectsOverviewStateCopyWithImpl<$Res,
        _$ProjectsOverviewEventLoadingImpl>
    implements _$$ProjectsOverviewEventLoadingImplCopyWith<$Res> {
  __$$ProjectsOverviewEventLoadingImplCopyWithImpl(
      _$ProjectsOverviewEventLoadingImpl _value,
      $Res Function(_$ProjectsOverviewEventLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectsOverviewEventLoadingImpl
    implements ProjectsOverviewEventLoading {
  const _$ProjectsOverviewEventLoadingImpl();

  @override
  String toString() {
    return 'ProjectsOverviewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsOverviewEventLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)?
        loaded,
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
    required TResult Function(ProjectsOverviewEventEmpty value) empty,
    required TResult Function(ProjectsOverviewEventLoading value) loading,
    required TResult Function(ProjectsOverviewEventLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventEmpty value)? empty,
    TResult? Function(ProjectsOverviewEventLoading value)? loading,
    TResult? Function(ProjectsOverviewEventLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventEmpty value)? empty,
    TResult Function(ProjectsOverviewEventLoading value)? loading,
    TResult Function(ProjectsOverviewEventLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProjectsOverviewEventLoading implements ProjectsOverviewState {
  const factory ProjectsOverviewEventLoading() =
      _$ProjectsOverviewEventLoadingImpl;
}

/// @nodoc
abstract class _$$ProjectsOverviewEventLoadedImplCopyWith<$Res> {
  factory _$$ProjectsOverviewEventLoadedImplCopyWith(
          _$ProjectsOverviewEventLoadedImpl value,
          $Res Function(_$ProjectsOverviewEventLoadedImpl) then) =
      __$$ProjectsOverviewEventLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Project? projectSelected,
      List<Project> projects,
      List<Task> tasksOfprojectSelected,
      DependenteStateType tasksState});

  $ProjectCopyWith<$Res>? get projectSelected;
  $DependenteStateTypeCopyWith<$Res> get tasksState;
}

/// @nodoc
class __$$ProjectsOverviewEventLoadedImplCopyWithImpl<$Res>
    extends _$ProjectsOverviewStateCopyWithImpl<$Res,
        _$ProjectsOverviewEventLoadedImpl>
    implements _$$ProjectsOverviewEventLoadedImplCopyWith<$Res> {
  __$$ProjectsOverviewEventLoadedImplCopyWithImpl(
      _$ProjectsOverviewEventLoadedImpl _value,
      $Res Function(_$ProjectsOverviewEventLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectSelected = freezed,
    Object? projects = null,
    Object? tasksOfprojectSelected = null,
    Object? tasksState = null,
  }) {
    return _then(_$ProjectsOverviewEventLoadedImpl(
      projectSelected: freezed == projectSelected
          ? _value.projectSelected
          : projectSelected // ignore: cast_nullable_to_non_nullable
              as Project?,
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      tasksOfprojectSelected: null == tasksOfprojectSelected
          ? _value._tasksOfprojectSelected
          : tasksOfprojectSelected // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      tasksState: null == tasksState
          ? _value.tasksState
          : tasksState // ignore: cast_nullable_to_non_nullable
              as DependenteStateType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res>? get projectSelected {
    if (_value.projectSelected == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.projectSelected!, (value) {
      return _then(_value.copyWith(projectSelected: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenteStateTypeCopyWith<$Res> get tasksState {
    return $DependenteStateTypeCopyWith<$Res>(_value.tasksState, (value) {
      return _then(_value.copyWith(tasksState: value));
    });
  }
}

/// @nodoc

class _$ProjectsOverviewEventLoadedImpl implements ProjectsOverviewEventLoaded {
  const _$ProjectsOverviewEventLoadedImpl(
      {this.projectSelected,
      required final List<Project> projects,
      required final List<Task> tasksOfprojectSelected,
      required this.tasksState})
      : _projects = projects,
        _tasksOfprojectSelected = tasksOfprojectSelected;

  @override
  final Project? projectSelected;
  final List<Project> _projects;
  @override
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  final List<Task> _tasksOfprojectSelected;
  @override
  List<Task> get tasksOfprojectSelected {
    if (_tasksOfprojectSelected is EqualUnmodifiableListView)
      return _tasksOfprojectSelected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasksOfprojectSelected);
  }

  @override
  final DependenteStateType tasksState;

  @override
  String toString() {
    return 'ProjectsOverviewState.loaded(projectSelected: $projectSelected, projects: $projects, tasksOfprojectSelected: $tasksOfprojectSelected, tasksState: $tasksState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsOverviewEventLoadedImpl &&
            (identical(other.projectSelected, projectSelected) ||
                other.projectSelected == projectSelected) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality().equals(
                other._tasksOfprojectSelected, _tasksOfprojectSelected) &&
            (identical(other.tasksState, tasksState) ||
                other.tasksState == tasksState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectSelected,
      const DeepCollectionEquality().hash(_projects),
      const DeepCollectionEquality().hash(_tasksOfprojectSelected),
      tasksState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsOverviewEventLoadedImplCopyWith<_$ProjectsOverviewEventLoadedImpl>
      get copyWith => __$$ProjectsOverviewEventLoadedImplCopyWithImpl<
          _$ProjectsOverviewEventLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)
        loaded,
  }) {
    return loaded(
        projectSelected, projects, tasksOfprojectSelected, tasksState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)?
        loaded,
  }) {
    return loaded?.call(
        projectSelected, projects, tasksOfprojectSelected, tasksState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Project? projectSelected, List<Project> projects,
            List<Task> tasksOfprojectSelected, DependenteStateType tasksState)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          projectSelected, projects, tasksOfprojectSelected, tasksState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsOverviewEventEmpty value) empty,
    required TResult Function(ProjectsOverviewEventLoading value) loading,
    required TResult Function(ProjectsOverviewEventLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventEmpty value)? empty,
    TResult? Function(ProjectsOverviewEventLoading value)? loading,
    TResult? Function(ProjectsOverviewEventLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventEmpty value)? empty,
    TResult Function(ProjectsOverviewEventLoading value)? loading,
    TResult Function(ProjectsOverviewEventLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProjectsOverviewEventLoaded implements ProjectsOverviewState {
  const factory ProjectsOverviewEventLoaded(
          {final Project? projectSelected,
          required final List<Project> projects,
          required final List<Task> tasksOfprojectSelected,
          required final DependenteStateType tasksState}) =
      _$ProjectsOverviewEventLoadedImpl;

  Project? get projectSelected;
  List<Project> get projects;
  List<Task> get tasksOfprojectSelected;
  DependenteStateType get tasksState;
  @JsonKey(ignore: true)
  _$$ProjectsOverviewEventLoadedImplCopyWith<_$ProjectsOverviewEventLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
