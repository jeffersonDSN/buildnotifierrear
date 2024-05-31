// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Mod {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(ViewType type) schedule,
    required TResult Function(ViewType type) projects,
    required TResult Function(ViewType type) clients,
    required TResult Function(ViewType type) users,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(ViewType type)? schedule,
    TResult? Function(ViewType type)? projects,
    TResult? Function(ViewType type)? clients,
    TResult? Function(ViewType type)? users,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(ViewType type)? schedule,
    TResult Function(ViewType type)? projects,
    TResult Function(ViewType type)? clients,
    TResult Function(ViewType type)? users,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModHome value) home,
    required TResult Function(ModSchedule value) schedule,
    required TResult Function(ModProjects value) projects,
    required TResult Function(ModClients value) clients,
    required TResult Function(ModUsers value) users,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModHome value)? home,
    TResult? Function(ModSchedule value)? schedule,
    TResult? Function(ModProjects value)? projects,
    TResult? Function(ModClients value)? clients,
    TResult? Function(ModUsers value)? users,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModHome value)? home,
    TResult Function(ModSchedule value)? schedule,
    TResult Function(ModProjects value)? projects,
    TResult Function(ModClients value)? clients,
    TResult Function(ModUsers value)? users,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModCopyWith<$Res> {
  factory $ModCopyWith(Mod value, $Res Function(Mod) then) =
      _$ModCopyWithImpl<$Res, Mod>;
}

/// @nodoc
class _$ModCopyWithImpl<$Res, $Val extends Mod> implements $ModCopyWith<$Res> {
  _$ModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ModHomeImplCopyWith<$Res> {
  factory _$$ModHomeImplCopyWith(
          _$ModHomeImpl value, $Res Function(_$ModHomeImpl) then) =
      __$$ModHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ModHomeImplCopyWithImpl<$Res>
    extends _$ModCopyWithImpl<$Res, _$ModHomeImpl>
    implements _$$ModHomeImplCopyWith<$Res> {
  __$$ModHomeImplCopyWithImpl(
      _$ModHomeImpl _value, $Res Function(_$ModHomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ModHomeImpl implements ModHome {
  const _$ModHomeImpl();

  @override
  String toString() {
    return 'Mod.home()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ModHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(ViewType type) schedule,
    required TResult Function(ViewType type) projects,
    required TResult Function(ViewType type) clients,
    required TResult Function(ViewType type) users,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(ViewType type)? schedule,
    TResult? Function(ViewType type)? projects,
    TResult? Function(ViewType type)? clients,
    TResult? Function(ViewType type)? users,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(ViewType type)? schedule,
    TResult Function(ViewType type)? projects,
    TResult Function(ViewType type)? clients,
    TResult Function(ViewType type)? users,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModHome value) home,
    required TResult Function(ModSchedule value) schedule,
    required TResult Function(ModProjects value) projects,
    required TResult Function(ModClients value) clients,
    required TResult Function(ModUsers value) users,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModHome value)? home,
    TResult? Function(ModSchedule value)? schedule,
    TResult? Function(ModProjects value)? projects,
    TResult? Function(ModClients value)? clients,
    TResult? Function(ModUsers value)? users,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModHome value)? home,
    TResult Function(ModSchedule value)? schedule,
    TResult Function(ModProjects value)? projects,
    TResult Function(ModClients value)? clients,
    TResult Function(ModUsers value)? users,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class ModHome implements Mod {
  const factory ModHome() = _$ModHomeImpl;
}

/// @nodoc
abstract class _$$ModScheduleImplCopyWith<$Res> {
  factory _$$ModScheduleImplCopyWith(
          _$ModScheduleImpl value, $Res Function(_$ModScheduleImpl) then) =
      __$$ModScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ViewType type});

  $ViewTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$ModScheduleImplCopyWithImpl<$Res>
    extends _$ModCopyWithImpl<$Res, _$ModScheduleImpl>
    implements _$$ModScheduleImplCopyWith<$Res> {
  __$$ModScheduleImplCopyWithImpl(
      _$ModScheduleImpl _value, $Res Function(_$ModScheduleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ModScheduleImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewTypeCopyWith<$Res> get type {
    return $ViewTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$ModScheduleImpl implements ModSchedule {
  const _$ModScheduleImpl({required this.type});

  @override
  final ViewType type;

  @override
  String toString() {
    return 'Mod.schedule(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModScheduleImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModScheduleImplCopyWith<_$ModScheduleImpl> get copyWith =>
      __$$ModScheduleImplCopyWithImpl<_$ModScheduleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(ViewType type) schedule,
    required TResult Function(ViewType type) projects,
    required TResult Function(ViewType type) clients,
    required TResult Function(ViewType type) users,
  }) {
    return schedule(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(ViewType type)? schedule,
    TResult? Function(ViewType type)? projects,
    TResult? Function(ViewType type)? clients,
    TResult? Function(ViewType type)? users,
  }) {
    return schedule?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(ViewType type)? schedule,
    TResult Function(ViewType type)? projects,
    TResult Function(ViewType type)? clients,
    TResult Function(ViewType type)? users,
    required TResult orElse(),
  }) {
    if (schedule != null) {
      return schedule(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModHome value) home,
    required TResult Function(ModSchedule value) schedule,
    required TResult Function(ModProjects value) projects,
    required TResult Function(ModClients value) clients,
    required TResult Function(ModUsers value) users,
  }) {
    return schedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModHome value)? home,
    TResult? Function(ModSchedule value)? schedule,
    TResult? Function(ModProjects value)? projects,
    TResult? Function(ModClients value)? clients,
    TResult? Function(ModUsers value)? users,
  }) {
    return schedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModHome value)? home,
    TResult Function(ModSchedule value)? schedule,
    TResult Function(ModProjects value)? projects,
    TResult Function(ModClients value)? clients,
    TResult Function(ModUsers value)? users,
    required TResult orElse(),
  }) {
    if (schedule != null) {
      return schedule(this);
    }
    return orElse();
  }
}

abstract class ModSchedule implements Mod {
  const factory ModSchedule({required final ViewType type}) = _$ModScheduleImpl;

  ViewType get type;
  @JsonKey(ignore: true)
  _$$ModScheduleImplCopyWith<_$ModScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModProjectsImplCopyWith<$Res> {
  factory _$$ModProjectsImplCopyWith(
          _$ModProjectsImpl value, $Res Function(_$ModProjectsImpl) then) =
      __$$ModProjectsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ViewType type});

  $ViewTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$ModProjectsImplCopyWithImpl<$Res>
    extends _$ModCopyWithImpl<$Res, _$ModProjectsImpl>
    implements _$$ModProjectsImplCopyWith<$Res> {
  __$$ModProjectsImplCopyWithImpl(
      _$ModProjectsImpl _value, $Res Function(_$ModProjectsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ModProjectsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewTypeCopyWith<$Res> get type {
    return $ViewTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$ModProjectsImpl implements ModProjects {
  const _$ModProjectsImpl({required this.type});

  @override
  final ViewType type;

  @override
  String toString() {
    return 'Mod.projects(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModProjectsImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModProjectsImplCopyWith<_$ModProjectsImpl> get copyWith =>
      __$$ModProjectsImplCopyWithImpl<_$ModProjectsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(ViewType type) schedule,
    required TResult Function(ViewType type) projects,
    required TResult Function(ViewType type) clients,
    required TResult Function(ViewType type) users,
  }) {
    return projects(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(ViewType type)? schedule,
    TResult? Function(ViewType type)? projects,
    TResult? Function(ViewType type)? clients,
    TResult? Function(ViewType type)? users,
  }) {
    return projects?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(ViewType type)? schedule,
    TResult Function(ViewType type)? projects,
    TResult Function(ViewType type)? clients,
    TResult Function(ViewType type)? users,
    required TResult orElse(),
  }) {
    if (projects != null) {
      return projects(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModHome value) home,
    required TResult Function(ModSchedule value) schedule,
    required TResult Function(ModProjects value) projects,
    required TResult Function(ModClients value) clients,
    required TResult Function(ModUsers value) users,
  }) {
    return projects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModHome value)? home,
    TResult? Function(ModSchedule value)? schedule,
    TResult? Function(ModProjects value)? projects,
    TResult? Function(ModClients value)? clients,
    TResult? Function(ModUsers value)? users,
  }) {
    return projects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModHome value)? home,
    TResult Function(ModSchedule value)? schedule,
    TResult Function(ModProjects value)? projects,
    TResult Function(ModClients value)? clients,
    TResult Function(ModUsers value)? users,
    required TResult orElse(),
  }) {
    if (projects != null) {
      return projects(this);
    }
    return orElse();
  }
}

abstract class ModProjects implements Mod {
  const factory ModProjects({required final ViewType type}) = _$ModProjectsImpl;

  ViewType get type;
  @JsonKey(ignore: true)
  _$$ModProjectsImplCopyWith<_$ModProjectsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModClientsImplCopyWith<$Res> {
  factory _$$ModClientsImplCopyWith(
          _$ModClientsImpl value, $Res Function(_$ModClientsImpl) then) =
      __$$ModClientsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ViewType type});

  $ViewTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$ModClientsImplCopyWithImpl<$Res>
    extends _$ModCopyWithImpl<$Res, _$ModClientsImpl>
    implements _$$ModClientsImplCopyWith<$Res> {
  __$$ModClientsImplCopyWithImpl(
      _$ModClientsImpl _value, $Res Function(_$ModClientsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ModClientsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewTypeCopyWith<$Res> get type {
    return $ViewTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$ModClientsImpl implements ModClients {
  const _$ModClientsImpl({required this.type});

  @override
  final ViewType type;

  @override
  String toString() {
    return 'Mod.clients(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModClientsImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModClientsImplCopyWith<_$ModClientsImpl> get copyWith =>
      __$$ModClientsImplCopyWithImpl<_$ModClientsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(ViewType type) schedule,
    required TResult Function(ViewType type) projects,
    required TResult Function(ViewType type) clients,
    required TResult Function(ViewType type) users,
  }) {
    return clients(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(ViewType type)? schedule,
    TResult? Function(ViewType type)? projects,
    TResult? Function(ViewType type)? clients,
    TResult? Function(ViewType type)? users,
  }) {
    return clients?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(ViewType type)? schedule,
    TResult Function(ViewType type)? projects,
    TResult Function(ViewType type)? clients,
    TResult Function(ViewType type)? users,
    required TResult orElse(),
  }) {
    if (clients != null) {
      return clients(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModHome value) home,
    required TResult Function(ModSchedule value) schedule,
    required TResult Function(ModProjects value) projects,
    required TResult Function(ModClients value) clients,
    required TResult Function(ModUsers value) users,
  }) {
    return clients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModHome value)? home,
    TResult? Function(ModSchedule value)? schedule,
    TResult? Function(ModProjects value)? projects,
    TResult? Function(ModClients value)? clients,
    TResult? Function(ModUsers value)? users,
  }) {
    return clients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModHome value)? home,
    TResult Function(ModSchedule value)? schedule,
    TResult Function(ModProjects value)? projects,
    TResult Function(ModClients value)? clients,
    TResult Function(ModUsers value)? users,
    required TResult orElse(),
  }) {
    if (clients != null) {
      return clients(this);
    }
    return orElse();
  }
}

abstract class ModClients implements Mod {
  const factory ModClients({required final ViewType type}) = _$ModClientsImpl;

  ViewType get type;
  @JsonKey(ignore: true)
  _$$ModClientsImplCopyWith<_$ModClientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModUsersImplCopyWith<$Res> {
  factory _$$ModUsersImplCopyWith(
          _$ModUsersImpl value, $Res Function(_$ModUsersImpl) then) =
      __$$ModUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ViewType type});

  $ViewTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$ModUsersImplCopyWithImpl<$Res>
    extends _$ModCopyWithImpl<$Res, _$ModUsersImpl>
    implements _$$ModUsersImplCopyWith<$Res> {
  __$$ModUsersImplCopyWithImpl(
      _$ModUsersImpl _value, $Res Function(_$ModUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ModUsersImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewTypeCopyWith<$Res> get type {
    return $ViewTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$ModUsersImpl implements ModUsers {
  const _$ModUsersImpl({required this.type});

  @override
  final ViewType type;

  @override
  String toString() {
    return 'Mod.users(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModUsersImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModUsersImplCopyWith<_$ModUsersImpl> get copyWith =>
      __$$ModUsersImplCopyWithImpl<_$ModUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(ViewType type) schedule,
    required TResult Function(ViewType type) projects,
    required TResult Function(ViewType type) clients,
    required TResult Function(ViewType type) users,
  }) {
    return users(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(ViewType type)? schedule,
    TResult? Function(ViewType type)? projects,
    TResult? Function(ViewType type)? clients,
    TResult? Function(ViewType type)? users,
  }) {
    return users?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(ViewType type)? schedule,
    TResult Function(ViewType type)? projects,
    TResult Function(ViewType type)? clients,
    TResult Function(ViewType type)? users,
    required TResult orElse(),
  }) {
    if (users != null) {
      return users(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModHome value) home,
    required TResult Function(ModSchedule value) schedule,
    required TResult Function(ModProjects value) projects,
    required TResult Function(ModClients value) clients,
    required TResult Function(ModUsers value) users,
  }) {
    return users(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModHome value)? home,
    TResult? Function(ModSchedule value)? schedule,
    TResult? Function(ModProjects value)? projects,
    TResult? Function(ModClients value)? clients,
    TResult? Function(ModUsers value)? users,
  }) {
    return users?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModHome value)? home,
    TResult Function(ModSchedule value)? schedule,
    TResult Function(ModProjects value)? projects,
    TResult Function(ModClients value)? clients,
    TResult Function(ModUsers value)? users,
    required TResult orElse(),
  }) {
    if (users != null) {
      return users(this);
    }
    return orElse();
  }
}

abstract class ModUsers implements Mod {
  const factory ModUsers({required final ViewType type}) = _$ModUsersImpl;

  ViewType get type;
  @JsonKey(ignore: true)
  _$$ModUsersImplCopyWith<_$ModUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
