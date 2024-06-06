// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentUser _$AppointmentUserFromJson(Map<String, dynamic> json) {
  return _AppointmentUser.fromJson(json);
}

/// @nodoc
mixin _$AppointmentUser {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentUserCopyWith<AppointmentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentUserCopyWith<$Res> {
  factory $AppointmentUserCopyWith(
          AppointmentUser value, $Res Function(AppointmentUser) then) =
      _$AppointmentUserCopyWithImpl<$Res, AppointmentUser>;
  @useResult
  $Res call({String id, String firstName, String lastName});
}

/// @nodoc
class _$AppointmentUserCopyWithImpl<$Res, $Val extends AppointmentUser>
    implements $AppointmentUserCopyWith<$Res> {
  _$AppointmentUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentUserImplCopyWith<$Res>
    implements $AppointmentUserCopyWith<$Res> {
  factory _$$AppointmentUserImplCopyWith(_$AppointmentUserImpl value,
          $Res Function(_$AppointmentUserImpl) then) =
      __$$AppointmentUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String firstName, String lastName});
}

/// @nodoc
class __$$AppointmentUserImplCopyWithImpl<$Res>
    extends _$AppointmentUserCopyWithImpl<$Res, _$AppointmentUserImpl>
    implements _$$AppointmentUserImplCopyWith<$Res> {
  __$$AppointmentUserImplCopyWithImpl(
      _$AppointmentUserImpl _value, $Res Function(_$AppointmentUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$AppointmentUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentUserImpl implements _AppointmentUser {
  const _$AppointmentUserImpl(
      {required this.id, required this.firstName, required this.lastName});

  factory _$AppointmentUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentUserImplFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'AppointmentUser(id: $id, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentUserImplCopyWith<_$AppointmentUserImpl> get copyWith =>
      __$$AppointmentUserImplCopyWithImpl<_$AppointmentUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentUserImplToJson(
      this,
    );
  }
}

abstract class _AppointmentUser implements AppointmentUser {
  const factory _AppointmentUser(
      {required final String id,
      required final String firstName,
      required final String lastName}) = _$AppointmentUserImpl;

  factory _AppointmentUser.fromJson(Map<String, dynamic> json) =
      _$AppointmentUserImpl.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentUserImplCopyWith<_$AppointmentUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  DateTime get startDateTime => throw _privateConstructorUsedError;
  DateTime get endDateTime => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  dynamic get longitude => throw _privateConstructorUsedError;
  List<AppointmentUser> get assignTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {String id,
      String title,
      String location,
      DateTime startDateTime,
      DateTime endDateTime,
      double latitude,
      dynamic longitude,
      List<AppointmentUser> assignTo});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? latitude = null,
    Object? longitude = freezed,
    Object? assignTo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      assignTo: null == assignTo
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as List<AppointmentUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String location,
      DateTime startDateTime,
      DateTime endDateTime,
      double latitude,
      dynamic longitude,
      List<AppointmentUser> assignTo});
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? latitude = null,
    Object? longitude = freezed,
    Object? assignTo = null,
  }) {
    return _then(_$AppointmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: freezed == longitude ? _value.longitude! : longitude,
      assignTo: null == assignTo
          ? _value._assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as List<AppointmentUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentImpl implements _Appointment {
  const _$AppointmentImpl(
      {this.id = '',
      this.title = '',
      this.location = '',
      required this.startDateTime,
      required this.endDateTime,
      this.latitude = 0,
      this.longitude = 0,
      final List<AppointmentUser> assignTo = const []})
      : _assignTo = assignTo;

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String location;
  @override
  final DateTime startDateTime;
  @override
  final DateTime endDateTime;
  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final dynamic longitude;
  final List<AppointmentUser> _assignTo;
  @override
  @JsonKey()
  List<AppointmentUser> get assignTo {
    if (_assignTo is EqualUnmodifiableListView) return _assignTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignTo);
  }

  @override
  String toString() {
    return 'Appointment(id: $id, title: $title, location: $location, startDateTime: $startDateTime, endDateTime: $endDateTime, latitude: $latitude, longitude: $longitude, assignTo: $assignTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other._assignTo, _assignTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      location,
      startDateTime,
      endDateTime,
      latitude,
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(_assignTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  const factory _Appointment(
      {final String id,
      final String title,
      final String location,
      required final DateTime startDateTime,
      required final DateTime endDateTime,
      final double latitude,
      final dynamic longitude,
      final List<AppointmentUser> assignTo}) = _$AppointmentImpl;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get location;
  @override
  DateTime get startDateTime;
  @override
  DateTime get endDateTime;
  @override
  double get latitude;
  @override
  dynamic get longitude;
  @override
  List<AppointmentUser> get assignTo;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
