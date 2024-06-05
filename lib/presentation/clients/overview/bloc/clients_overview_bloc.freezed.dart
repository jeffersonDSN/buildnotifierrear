// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clients_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClientsOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Client selectedClient) changeselectedClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Client selectedClient)? changeselectedClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Client selectedClient)? changeselectedClient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientsOverviewEventLoad value) load,
    required TResult Function(ClientsOverviewEventChangeselectedUser value)
        changeselectedClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientsOverviewEventLoad value)? load,
    TResult? Function(ClientsOverviewEventChangeselectedUser value)?
        changeselectedClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientsOverviewEventLoad value)? load,
    TResult Function(ClientsOverviewEventChangeselectedUser value)?
        changeselectedClient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientsOverviewEventCopyWith<$Res> {
  factory $ClientsOverviewEventCopyWith(ClientsOverviewEvent value,
          $Res Function(ClientsOverviewEvent) then) =
      _$ClientsOverviewEventCopyWithImpl<$Res, ClientsOverviewEvent>;
}

/// @nodoc
class _$ClientsOverviewEventCopyWithImpl<$Res,
        $Val extends ClientsOverviewEvent>
    implements $ClientsOverviewEventCopyWith<$Res> {
  _$ClientsOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientsOverviewEventLoadImplCopyWith<$Res> {
  factory _$$ClientsOverviewEventLoadImplCopyWith(
          _$ClientsOverviewEventLoadImpl value,
          $Res Function(_$ClientsOverviewEventLoadImpl) then) =
      __$$ClientsOverviewEventLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientsOverviewEventLoadImplCopyWithImpl<$Res>
    extends _$ClientsOverviewEventCopyWithImpl<$Res,
        _$ClientsOverviewEventLoadImpl>
    implements _$$ClientsOverviewEventLoadImplCopyWith<$Res> {
  __$$ClientsOverviewEventLoadImplCopyWithImpl(
      _$ClientsOverviewEventLoadImpl _value,
      $Res Function(_$ClientsOverviewEventLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientsOverviewEventLoadImpl implements ClientsOverviewEventLoad {
  const _$ClientsOverviewEventLoadImpl();

  @override
  String toString() {
    return 'ClientsOverviewEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientsOverviewEventLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Client selectedClient) changeselectedClient,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Client selectedClient)? changeselectedClient,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Client selectedClient)? changeselectedClient,
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
    required TResult Function(ClientsOverviewEventLoad value) load,
    required TResult Function(ClientsOverviewEventChangeselectedUser value)
        changeselectedClient,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientsOverviewEventLoad value)? load,
    TResult? Function(ClientsOverviewEventChangeselectedUser value)?
        changeselectedClient,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientsOverviewEventLoad value)? load,
    TResult Function(ClientsOverviewEventChangeselectedUser value)?
        changeselectedClient,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ClientsOverviewEventLoad implements ClientsOverviewEvent {
  const factory ClientsOverviewEventLoad() = _$ClientsOverviewEventLoadImpl;
}

/// @nodoc
abstract class _$$ClientsOverviewEventChangeselectedUserImplCopyWith<$Res> {
  factory _$$ClientsOverviewEventChangeselectedUserImplCopyWith(
          _$ClientsOverviewEventChangeselectedUserImpl value,
          $Res Function(_$ClientsOverviewEventChangeselectedUserImpl) then) =
      __$$ClientsOverviewEventChangeselectedUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Client selectedClient});

  $ClientCopyWith<$Res> get selectedClient;
}

/// @nodoc
class __$$ClientsOverviewEventChangeselectedUserImplCopyWithImpl<$Res>
    extends _$ClientsOverviewEventCopyWithImpl<$Res,
        _$ClientsOverviewEventChangeselectedUserImpl>
    implements _$$ClientsOverviewEventChangeselectedUserImplCopyWith<$Res> {
  __$$ClientsOverviewEventChangeselectedUserImplCopyWithImpl(
      _$ClientsOverviewEventChangeselectedUserImpl _value,
      $Res Function(_$ClientsOverviewEventChangeselectedUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedClient = null,
  }) {
    return _then(_$ClientsOverviewEventChangeselectedUserImpl(
      selectedClient: null == selectedClient
          ? _value.selectedClient
          : selectedClient // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get selectedClient {
    return $ClientCopyWith<$Res>(_value.selectedClient, (value) {
      return _then(_value.copyWith(selectedClient: value));
    });
  }
}

/// @nodoc

class _$ClientsOverviewEventChangeselectedUserImpl
    implements ClientsOverviewEventChangeselectedUser {
  const _$ClientsOverviewEventChangeselectedUserImpl(
      {required this.selectedClient});

  @override
  final Client selectedClient;

  @override
  String toString() {
    return 'ClientsOverviewEvent.changeselectedClient(selectedClient: $selectedClient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientsOverviewEventChangeselectedUserImpl &&
            (identical(other.selectedClient, selectedClient) ||
                other.selectedClient == selectedClient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedClient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientsOverviewEventChangeselectedUserImplCopyWith<
          _$ClientsOverviewEventChangeselectedUserImpl>
      get copyWith =>
          __$$ClientsOverviewEventChangeselectedUserImplCopyWithImpl<
              _$ClientsOverviewEventChangeselectedUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Client selectedClient) changeselectedClient,
  }) {
    return changeselectedClient(selectedClient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Client selectedClient)? changeselectedClient,
  }) {
    return changeselectedClient?.call(selectedClient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Client selectedClient)? changeselectedClient,
    required TResult orElse(),
  }) {
    if (changeselectedClient != null) {
      return changeselectedClient(selectedClient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientsOverviewEventLoad value) load,
    required TResult Function(ClientsOverviewEventChangeselectedUser value)
        changeselectedClient,
  }) {
    return changeselectedClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientsOverviewEventLoad value)? load,
    TResult? Function(ClientsOverviewEventChangeselectedUser value)?
        changeselectedClient,
  }) {
    return changeselectedClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientsOverviewEventLoad value)? load,
    TResult Function(ClientsOverviewEventChangeselectedUser value)?
        changeselectedClient,
    required TResult orElse(),
  }) {
    if (changeselectedClient != null) {
      return changeselectedClient(this);
    }
    return orElse();
  }
}

abstract class ClientsOverviewEventChangeselectedUser
    implements ClientsOverviewEvent {
  const factory ClientsOverviewEventChangeselectedUser(
          {required final Client selectedClient}) =
      _$ClientsOverviewEventChangeselectedUserImpl;

  Client get selectedClient;
  @JsonKey(ignore: true)
  _$$ClientsOverviewEventChangeselectedUserImplCopyWith<
          _$ClientsOverviewEventChangeselectedUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientsOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientsOverviewStateEmpty value) empty,
    required TResult Function(ClientsOverviewStateLoading value) loading,
    required TResult Function(ClientsOverviewStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientsOverviewStateEmpty value)? empty,
    TResult? Function(ClientsOverviewStateLoading value)? loading,
    TResult? Function(ClientsOverviewStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientsOverviewStateEmpty value)? empty,
    TResult Function(ClientsOverviewStateLoading value)? loading,
    TResult Function(ClientsOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientsOverviewStateCopyWith<$Res> {
  factory $ClientsOverviewStateCopyWith(ClientsOverviewState value,
          $Res Function(ClientsOverviewState) then) =
      _$ClientsOverviewStateCopyWithImpl<$Res, ClientsOverviewState>;
}

/// @nodoc
class _$ClientsOverviewStateCopyWithImpl<$Res,
        $Val extends ClientsOverviewState>
    implements $ClientsOverviewStateCopyWith<$Res> {
  _$ClientsOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientsOverviewStateEmptyImplCopyWith<$Res> {
  factory _$$ClientsOverviewStateEmptyImplCopyWith(
          _$ClientsOverviewStateEmptyImpl value,
          $Res Function(_$ClientsOverviewStateEmptyImpl) then) =
      __$$ClientsOverviewStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientsOverviewStateEmptyImplCopyWithImpl<$Res>
    extends _$ClientsOverviewStateCopyWithImpl<$Res,
        _$ClientsOverviewStateEmptyImpl>
    implements _$$ClientsOverviewStateEmptyImplCopyWith<$Res> {
  __$$ClientsOverviewStateEmptyImplCopyWithImpl(
      _$ClientsOverviewStateEmptyImpl _value,
      $Res Function(_$ClientsOverviewStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientsOverviewStateEmptyImpl implements ClientsOverviewStateEmpty {
  const _$ClientsOverviewStateEmptyImpl();

  @override
  String toString() {
    return 'ClientsOverviewState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientsOverviewStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)?
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
    required TResult Function(ClientsOverviewStateEmpty value) empty,
    required TResult Function(ClientsOverviewStateLoading value) loading,
    required TResult Function(ClientsOverviewStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientsOverviewStateEmpty value)? empty,
    TResult? Function(ClientsOverviewStateLoading value)? loading,
    TResult? Function(ClientsOverviewStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientsOverviewStateEmpty value)? empty,
    TResult Function(ClientsOverviewStateLoading value)? loading,
    TResult Function(ClientsOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ClientsOverviewStateEmpty implements ClientsOverviewState {
  const factory ClientsOverviewStateEmpty() = _$ClientsOverviewStateEmptyImpl;
}

/// @nodoc
abstract class _$$ClientsOverviewStateLoadingImplCopyWith<$Res> {
  factory _$$ClientsOverviewStateLoadingImplCopyWith(
          _$ClientsOverviewStateLoadingImpl value,
          $Res Function(_$ClientsOverviewStateLoadingImpl) then) =
      __$$ClientsOverviewStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientsOverviewStateLoadingImplCopyWithImpl<$Res>
    extends _$ClientsOverviewStateCopyWithImpl<$Res,
        _$ClientsOverviewStateLoadingImpl>
    implements _$$ClientsOverviewStateLoadingImplCopyWith<$Res> {
  __$$ClientsOverviewStateLoadingImplCopyWithImpl(
      _$ClientsOverviewStateLoadingImpl _value,
      $Res Function(_$ClientsOverviewStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientsOverviewStateLoadingImpl implements ClientsOverviewStateLoading {
  const _$ClientsOverviewStateLoadingImpl();

  @override
  String toString() {
    return 'ClientsOverviewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientsOverviewStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)?
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
    required TResult Function(ClientsOverviewStateEmpty value) empty,
    required TResult Function(ClientsOverviewStateLoading value) loading,
    required TResult Function(ClientsOverviewStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientsOverviewStateEmpty value)? empty,
    TResult? Function(ClientsOverviewStateLoading value)? loading,
    TResult? Function(ClientsOverviewStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientsOverviewStateEmpty value)? empty,
    TResult Function(ClientsOverviewStateLoading value)? loading,
    TResult Function(ClientsOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ClientsOverviewStateLoading implements ClientsOverviewState {
  const factory ClientsOverviewStateLoading() =
      _$ClientsOverviewStateLoadingImpl;
}

/// @nodoc
abstract class _$$ClientsOverviewStateLoadedImplCopyWith<$Res> {
  factory _$$ClientsOverviewStateLoadedImplCopyWith(
          _$ClientsOverviewStateLoadedImpl value,
          $Res Function(_$ClientsOverviewStateLoadedImpl) then) =
      __$$ClientsOverviewStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Client> clients,
      Client? selectedClient,
      List<Project> projectsOfselectedClient,
      DependenteStateType<dynamic> projectsState});

  $ClientCopyWith<$Res>? get selectedClient;
  $DependenteStateTypeCopyWith<dynamic, $Res> get projectsState;
}

/// @nodoc
class __$$ClientsOverviewStateLoadedImplCopyWithImpl<$Res>
    extends _$ClientsOverviewStateCopyWithImpl<$Res,
        _$ClientsOverviewStateLoadedImpl>
    implements _$$ClientsOverviewStateLoadedImplCopyWith<$Res> {
  __$$ClientsOverviewStateLoadedImplCopyWithImpl(
      _$ClientsOverviewStateLoadedImpl _value,
      $Res Function(_$ClientsOverviewStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clients = null,
    Object? selectedClient = freezed,
    Object? projectsOfselectedClient = null,
    Object? projectsState = null,
  }) {
    return _then(_$ClientsOverviewStateLoadedImpl(
      clients: null == clients
          ? _value._clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<Client>,
      selectedClient: freezed == selectedClient
          ? _value.selectedClient
          : selectedClient // ignore: cast_nullable_to_non_nullable
              as Client?,
      projectsOfselectedClient: null == projectsOfselectedClient
          ? _value._projectsOfselectedClient
          : projectsOfselectedClient // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      projectsState: null == projectsState
          ? _value.projectsState
          : projectsState // ignore: cast_nullable_to_non_nullable
              as DependenteStateType<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res>? get selectedClient {
    if (_value.selectedClient == null) {
      return null;
    }

    return $ClientCopyWith<$Res>(_value.selectedClient!, (value) {
      return _then(_value.copyWith(selectedClient: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenteStateTypeCopyWith<dynamic, $Res> get projectsState {
    return $DependenteStateTypeCopyWith<dynamic, $Res>(_value.projectsState,
        (value) {
      return _then(_value.copyWith(projectsState: value));
    });
  }
}

/// @nodoc

class _$ClientsOverviewStateLoadedImpl implements ClientsOverviewStateLoaded {
  const _$ClientsOverviewStateLoadedImpl(
      {required final List<Client> clients,
      this.selectedClient,
      required final List<Project> projectsOfselectedClient,
      required this.projectsState})
      : _clients = clients,
        _projectsOfselectedClient = projectsOfselectedClient;

  final List<Client> _clients;
  @override
  List<Client> get clients {
    if (_clients is EqualUnmodifiableListView) return _clients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clients);
  }

  @override
  final Client? selectedClient;
  final List<Project> _projectsOfselectedClient;
  @override
  List<Project> get projectsOfselectedClient {
    if (_projectsOfselectedClient is EqualUnmodifiableListView)
      return _projectsOfselectedClient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectsOfselectedClient);
  }

  @override
  final DependenteStateType<dynamic> projectsState;

  @override
  String toString() {
    return 'ClientsOverviewState.loaded(clients: $clients, selectedClient: $selectedClient, projectsOfselectedClient: $projectsOfselectedClient, projectsState: $projectsState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientsOverviewStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._clients, _clients) &&
            (identical(other.selectedClient, selectedClient) ||
                other.selectedClient == selectedClient) &&
            const DeepCollectionEquality().equals(
                other._projectsOfselectedClient, _projectsOfselectedClient) &&
            (identical(other.projectsState, projectsState) ||
                other.projectsState == projectsState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_clients),
      selectedClient,
      const DeepCollectionEquality().hash(_projectsOfselectedClient),
      projectsState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientsOverviewStateLoadedImplCopyWith<_$ClientsOverviewStateLoadedImpl>
      get copyWith => __$$ClientsOverviewStateLoadedImplCopyWithImpl<
          _$ClientsOverviewStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)
        loaded,
  }) {
    return loaded(
        clients, selectedClient, projectsOfselectedClient, projectsState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)?
        loaded,
  }) {
    return loaded?.call(
        clients, selectedClient, projectsOfselectedClient, projectsState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Client> clients,
            Client? selectedClient,
            List<Project> projectsOfselectedClient,
            DependenteStateType<dynamic> projectsState)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          clients, selectedClient, projectsOfselectedClient, projectsState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientsOverviewStateEmpty value) empty,
    required TResult Function(ClientsOverviewStateLoading value) loading,
    required TResult Function(ClientsOverviewStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientsOverviewStateEmpty value)? empty,
    TResult? Function(ClientsOverviewStateLoading value)? loading,
    TResult? Function(ClientsOverviewStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientsOverviewStateEmpty value)? empty,
    TResult Function(ClientsOverviewStateLoading value)? loading,
    TResult Function(ClientsOverviewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ClientsOverviewStateLoaded implements ClientsOverviewState {
  const factory ClientsOverviewStateLoaded(
          {required final List<Client> clients,
          final Client? selectedClient,
          required final List<Project> projectsOfselectedClient,
          required final DependenteStateType<dynamic> projectsState}) =
      _$ClientsOverviewStateLoadedImpl;

  List<Client> get clients;
  Client? get selectedClient;
  List<Project> get projectsOfselectedClient;
  DependenteStateType<dynamic> get projectsState;
  @JsonKey(ignore: true)
  _$$ClientsOverviewStateLoadedImplCopyWith<_$ClientsOverviewStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
