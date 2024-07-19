// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userFirstName => throw _privateConstructorUsedError;
  String get userLastName => throw _privateConstructorUsedError;
  String get appointmentId => throw _privateConstructorUsedError;
  dynamic get projectId => throw _privateConstructorUsedError;
  dynamic get taskId => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  double? get startLatitude => throw _privateConstructorUsedError;
  double? get startLongitude => throw _privateConstructorUsedError;
  String? get startLocation => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  double? get endLatitude => throw _privateConstructorUsedError;
  double? get endLongitude => throw _privateConstructorUsedError;
  String? get endLocation => throw _privateConstructorUsedError;
  String get invoiceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res, Activity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String userFirstName,
      String userLastName,
      String appointmentId,
      dynamic projectId,
      dynamic taskId,
      DateTime start,
      double? startLatitude,
      double? startLongitude,
      String? startLocation,
      DateTime? end,
      double? endLatitude,
      double? endLongitude,
      String? endLocation,
      String invoiceId});
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res, $Val extends Activity>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userFirstName = null,
    Object? userLastName = null,
    Object? appointmentId = null,
    Object? projectId = freezed,
    Object? taskId = freezed,
    Object? start = null,
    Object? startLatitude = freezed,
    Object? startLongitude = freezed,
    Object? startLocation = freezed,
    Object? end = freezed,
    Object? endLatitude = freezed,
    Object? endLongitude = freezed,
    Object? endLocation = freezed,
    Object? invoiceId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userFirstName: null == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      userLastName: null == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startLatitude: freezed == startLatitude
          ? _value.startLatitude
          : startLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      startLongitude: freezed == startLongitude
          ? _value.startLongitude
          : startLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endLatitude: freezed == endLatitude
          ? _value.endLatitude
          : endLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      endLongitude: freezed == endLongitude
          ? _value.endLongitude
          : endLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      endLocation: freezed == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityImplCopyWith<$Res>
    implements $ActivityCopyWith<$Res> {
  factory _$$ActivityImplCopyWith(
          _$ActivityImpl value, $Res Function(_$ActivityImpl) then) =
      __$$ActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String userFirstName,
      String userLastName,
      String appointmentId,
      dynamic projectId,
      dynamic taskId,
      DateTime start,
      double? startLatitude,
      double? startLongitude,
      String? startLocation,
      DateTime? end,
      double? endLatitude,
      double? endLongitude,
      String? endLocation,
      String invoiceId});
}

/// @nodoc
class __$$ActivityImplCopyWithImpl<$Res>
    extends _$ActivityCopyWithImpl<$Res, _$ActivityImpl>
    implements _$$ActivityImplCopyWith<$Res> {
  __$$ActivityImplCopyWithImpl(
      _$ActivityImpl _value, $Res Function(_$ActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userFirstName = null,
    Object? userLastName = null,
    Object? appointmentId = null,
    Object? projectId = freezed,
    Object? taskId = freezed,
    Object? start = null,
    Object? startLatitude = freezed,
    Object? startLongitude = freezed,
    Object? startLocation = freezed,
    Object? end = freezed,
    Object? endLatitude = freezed,
    Object? endLongitude = freezed,
    Object? endLocation = freezed,
    Object? invoiceId = null,
  }) {
    return _then(_$ActivityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userFirstName: null == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      userLastName: null == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: freezed == projectId ? _value.projectId! : projectId,
      taskId: freezed == taskId ? _value.taskId! : taskId,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startLatitude: freezed == startLatitude
          ? _value.startLatitude
          : startLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      startLongitude: freezed == startLongitude
          ? _value.startLongitude
          : startLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endLatitude: freezed == endLatitude
          ? _value.endLatitude
          : endLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      endLongitude: freezed == endLongitude
          ? _value.endLongitude
          : endLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      endLocation: freezed == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityImpl implements _Activity {
  _$ActivityImpl(
      {this.id = '',
      required this.userId,
      required this.userFirstName,
      required this.userLastName,
      required this.appointmentId,
      this.projectId = '',
      this.taskId = '',
      required this.start,
      this.startLatitude,
      this.startLongitude,
      this.startLocation,
      this.end,
      this.endLatitude,
      this.endLongitude,
      this.endLocation,
      this.invoiceId = ''});

  factory _$ActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final String userId;
  @override
  final String userFirstName;
  @override
  final String userLastName;
  @override
  final String appointmentId;
  @override
  @JsonKey()
  final dynamic projectId;
  @override
  @JsonKey()
  final dynamic taskId;
  @override
  final DateTime start;
  @override
  final double? startLatitude;
  @override
  final double? startLongitude;
  @override
  final String? startLocation;
  @override
  final DateTime? end;
  @override
  final double? endLatitude;
  @override
  final double? endLongitude;
  @override
  final String? endLocation;
  @override
  @JsonKey()
  final String invoiceId;

  @override
  String toString() {
    return 'Activity(id: $id, userId: $userId, userFirstName: $userFirstName, userLastName: $userLastName, appointmentId: $appointmentId, projectId: $projectId, taskId: $taskId, start: $start, startLatitude: $startLatitude, startLongitude: $startLongitude, startLocation: $startLocation, end: $end, endLatitude: $endLatitude, endLongitude: $endLongitude, endLocation: $endLocation, invoiceId: $invoiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userFirstName, userFirstName) ||
                other.userFirstName == userFirstName) &&
            (identical(other.userLastName, userLastName) ||
                other.userLastName == userLastName) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            const DeepCollectionEquality().equals(other.projectId, projectId) &&
            const DeepCollectionEquality().equals(other.taskId, taskId) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.startLatitude, startLatitude) ||
                other.startLatitude == startLatitude) &&
            (identical(other.startLongitude, startLongitude) ||
                other.startLongitude == startLongitude) &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.endLatitude, endLatitude) ||
                other.endLatitude == endLatitude) &&
            (identical(other.endLongitude, endLongitude) ||
                other.endLongitude == endLongitude) &&
            (identical(other.endLocation, endLocation) ||
                other.endLocation == endLocation) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      userFirstName,
      userLastName,
      appointmentId,
      const DeepCollectionEquality().hash(projectId),
      const DeepCollectionEquality().hash(taskId),
      start,
      startLatitude,
      startLongitude,
      startLocation,
      end,
      endLatitude,
      endLongitude,
      endLocation,
      invoiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      __$$ActivityImplCopyWithImpl<_$ActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityImplToJson(
      this,
    );
  }
}

abstract class _Activity implements Activity {
  factory _Activity(
      {final String id,
      required final String userId,
      required final String userFirstName,
      required final String userLastName,
      required final String appointmentId,
      final dynamic projectId,
      final dynamic taskId,
      required final DateTime start,
      final double? startLatitude,
      final double? startLongitude,
      final String? startLocation,
      final DateTime? end,
      final double? endLatitude,
      final double? endLongitude,
      final String? endLocation,
      final String invoiceId}) = _$ActivityImpl;

  factory _Activity.fromJson(Map<String, dynamic> json) =
      _$ActivityImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get userFirstName;
  @override
  String get userLastName;
  @override
  String get appointmentId;
  @override
  dynamic get projectId;
  @override
  dynamic get taskId;
  @override
  DateTime get start;
  @override
  double? get startLatitude;
  @override
  double? get startLongitude;
  @override
  String? get startLocation;
  @override
  DateTime? get end;
  @override
  double? get endLatitude;
  @override
  double? get endLongitude;
  @override
  String? get endLocation;
  @override
  String get invoiceId;
  @override
  @JsonKey(ignore: true)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
