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
    required TResult Function(Project project, ProjectStatus status)
        changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Project project, ProjectStatus status)? changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Project project, ProjectStatus status)? changeStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsOverviewEventLoad value) load,
    required TResult Function(ProjectsOverviewEventChangeStatus value)
        changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventLoad value)? load,
    TResult? Function(ProjectsOverviewEventChangeStatus value)? changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventLoad value)? load,
    TResult Function(ProjectsOverviewEventChangeStatus value)? changeStatus,
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
    required TResult Function(Project project, ProjectStatus status)
        changeStatus,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Project project, ProjectStatus status)? changeStatus,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Project project, ProjectStatus status)? changeStatus,
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
    required TResult Function(ProjectsOverviewEventChangeStatus value)
        changeStatus,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventLoad value)? load,
    TResult? Function(ProjectsOverviewEventChangeStatus value)? changeStatus,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventLoad value)? load,
    TResult Function(ProjectsOverviewEventChangeStatus value)? changeStatus,
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
abstract class _$$ProjectsOverviewEventChangeStatusImplCopyWith<$Res> {
  factory _$$ProjectsOverviewEventChangeStatusImplCopyWith(
          _$ProjectsOverviewEventChangeStatusImpl value,
          $Res Function(_$ProjectsOverviewEventChangeStatusImpl) then) =
      __$$ProjectsOverviewEventChangeStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Project project, ProjectStatus status});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$ProjectsOverviewEventChangeStatusImplCopyWithImpl<$Res>
    extends _$ProjectsOverviewEventCopyWithImpl<$Res,
        _$ProjectsOverviewEventChangeStatusImpl>
    implements _$$ProjectsOverviewEventChangeStatusImplCopyWith<$Res> {
  __$$ProjectsOverviewEventChangeStatusImplCopyWithImpl(
      _$ProjectsOverviewEventChangeStatusImpl _value,
      $Res Function(_$ProjectsOverviewEventChangeStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? status = null,
  }) {
    return _then(_$ProjectsOverviewEventChangeStatusImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$ProjectsOverviewEventChangeStatusImpl
    implements ProjectsOverviewEventChangeStatus {
  const _$ProjectsOverviewEventChangeStatusImpl(
      {required this.project, required this.status});

  @override
  final Project project;
  @override
  final ProjectStatus status;

  @override
  String toString() {
    return 'ProjectsOverviewEvent.changeStatus(project: $project, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsOverviewEventChangeStatusImpl &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsOverviewEventChangeStatusImplCopyWith<
          _$ProjectsOverviewEventChangeStatusImpl>
      get copyWith => __$$ProjectsOverviewEventChangeStatusImplCopyWithImpl<
          _$ProjectsOverviewEventChangeStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Project project, ProjectStatus status)
        changeStatus,
  }) {
    return changeStatus(project, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Project project, ProjectStatus status)? changeStatus,
  }) {
    return changeStatus?.call(project, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Project project, ProjectStatus status)? changeStatus,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(project, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsOverviewEventLoad value) load,
    required TResult Function(ProjectsOverviewEventChangeStatus value)
        changeStatus,
  }) {
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventLoad value)? load,
    TResult? Function(ProjectsOverviewEventChangeStatus value)? changeStatus,
  }) {
    return changeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventLoad value)? load,
    TResult Function(ProjectsOverviewEventChangeStatus value)? changeStatus,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(this);
    }
    return orElse();
  }
}

abstract class ProjectsOverviewEventChangeStatus
    implements ProjectsOverviewEvent {
  const factory ProjectsOverviewEventChangeStatus(
          {required final Project project,
          required final ProjectStatus status}) =
      _$ProjectsOverviewEventChangeStatusImpl;

  Project get project;
  ProjectStatus get status;
  @JsonKey(ignore: true)
  _$$ProjectsOverviewEventChangeStatusImplCopyWith<
          _$ProjectsOverviewEventChangeStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectsOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Project> projects) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Project> projects)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsOverviewEventInit value) init,
    required TResult Function(ProjectsOverviewEventLoading value) loading,
    required TResult Function(ProjectsOverviewEventLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventInit value)? init,
    TResult? Function(ProjectsOverviewEventLoading value)? loading,
    TResult? Function(ProjectsOverviewEventLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventInit value)? init,
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
abstract class _$$ProjectsOverviewEventInitImplCopyWith<$Res> {
  factory _$$ProjectsOverviewEventInitImplCopyWith(
          _$ProjectsOverviewEventInitImpl value,
          $Res Function(_$ProjectsOverviewEventInitImpl) then) =
      __$$ProjectsOverviewEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectsOverviewEventInitImplCopyWithImpl<$Res>
    extends _$ProjectsOverviewStateCopyWithImpl<$Res,
        _$ProjectsOverviewEventInitImpl>
    implements _$$ProjectsOverviewEventInitImplCopyWith<$Res> {
  __$$ProjectsOverviewEventInitImplCopyWithImpl(
      _$ProjectsOverviewEventInitImpl _value,
      $Res Function(_$ProjectsOverviewEventInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectsOverviewEventInitImpl implements ProjectsOverviewEventInit {
  const _$ProjectsOverviewEventInitImpl();

  @override
  String toString() {
    return 'ProjectsOverviewState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsOverviewEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Project> projects) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Project> projects)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? loaded,
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
    required TResult Function(ProjectsOverviewEventInit value) init,
    required TResult Function(ProjectsOverviewEventLoading value) loading,
    required TResult Function(ProjectsOverviewEventLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventInit value)? init,
    TResult? Function(ProjectsOverviewEventLoading value)? loading,
    TResult? Function(ProjectsOverviewEventLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventInit value)? init,
    TResult Function(ProjectsOverviewEventLoading value)? loading,
    TResult Function(ProjectsOverviewEventLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ProjectsOverviewEventInit implements ProjectsOverviewState {
  const factory ProjectsOverviewEventInit() = _$ProjectsOverviewEventInitImpl;
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
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Project> projects) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Project> projects)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? loaded,
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
    required TResult Function(ProjectsOverviewEventInit value) init,
    required TResult Function(ProjectsOverviewEventLoading value) loading,
    required TResult Function(ProjectsOverviewEventLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventInit value)? init,
    TResult? Function(ProjectsOverviewEventLoading value)? loading,
    TResult? Function(ProjectsOverviewEventLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventInit value)? init,
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
  $Res call({List<Project> projects});
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
    Object? projects = null,
  }) {
    return _then(_$ProjectsOverviewEventLoadedImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc

class _$ProjectsOverviewEventLoadedImpl implements ProjectsOverviewEventLoaded {
  const _$ProjectsOverviewEventLoadedImpl(
      {required final List<Project> projects})
      : _projects = projects;

  final List<Project> _projects;
  @override
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'ProjectsOverviewState.loaded(projects: $projects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsOverviewEventLoadedImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsOverviewEventLoadedImplCopyWith<_$ProjectsOverviewEventLoadedImpl>
      get copyWith => __$$ProjectsOverviewEventLoadedImplCopyWithImpl<
          _$ProjectsOverviewEventLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Project> projects) loaded,
  }) {
    return loaded(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Project> projects)? loaded,
  }) {
    return loaded?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsOverviewEventInit value) init,
    required TResult Function(ProjectsOverviewEventLoading value) loading,
    required TResult Function(ProjectsOverviewEventLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsOverviewEventInit value)? init,
    TResult? Function(ProjectsOverviewEventLoading value)? loading,
    TResult? Function(ProjectsOverviewEventLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsOverviewEventInit value)? init,
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
          {required final List<Project> projects}) =
      _$ProjectsOverviewEventLoadedImpl;

  List<Project> get projects;
  @JsonKey(ignore: true)
  _$$ProjectsOverviewEventLoadedImplCopyWith<_$ProjectsOverviewEventLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
