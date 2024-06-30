// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timecard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Timecard _$TimecardFromJson(Map<String, dynamic> json) {
  return _Timecard.fromJson(json);
}

/// @nodoc
mixin _$Timecard {
  String get id => throw _privateConstructorUsedError;
  String get employeeId => throw _privateConstructorUsedError;
  String get employeeFirstName => throw _privateConstructorUsedError;
  String get employeeLastName => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  double? get startLatitude => throw _privateConstructorUsedError;
  double? get startLongitude => throw _privateConstructorUsedError;
  String? get startLocation => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  double? get endLatitude => throw _privateConstructorUsedError;
  double? get endLongitude => throw _privateConstructorUsedError;
  String? get endLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimecardCopyWith<Timecard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimecardCopyWith<$Res> {
  factory $TimecardCopyWith(Timecard value, $Res Function(Timecard) then) =
      _$TimecardCopyWithImpl<$Res, Timecard>;
  @useResult
  $Res call(
      {String id,
      String employeeId,
      String employeeFirstName,
      String employeeLastName,
      DateTime start,
      double? startLatitude,
      double? startLongitude,
      String? startLocation,
      DateTime? end,
      double? endLatitude,
      double? endLongitude,
      String? endLocation});
}

/// @nodoc
class _$TimecardCopyWithImpl<$Res, $Val extends Timecard>
    implements $TimecardCopyWith<$Res> {
  _$TimecardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeId = null,
    Object? employeeFirstName = null,
    Object? employeeLastName = null,
    Object? start = null,
    Object? startLatitude = freezed,
    Object? startLongitude = freezed,
    Object? startLocation = freezed,
    Object? end = freezed,
    Object? endLatitude = freezed,
    Object? endLongitude = freezed,
    Object? endLocation = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      employeeFirstName: null == employeeFirstName
          ? _value.employeeFirstName
          : employeeFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      employeeLastName: null == employeeLastName
          ? _value.employeeLastName
          : employeeLastName // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimecardImplCopyWith<$Res>
    implements $TimecardCopyWith<$Res> {
  factory _$$TimecardImplCopyWith(
          _$TimecardImpl value, $Res Function(_$TimecardImpl) then) =
      __$$TimecardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String employeeId,
      String employeeFirstName,
      String employeeLastName,
      DateTime start,
      double? startLatitude,
      double? startLongitude,
      String? startLocation,
      DateTime? end,
      double? endLatitude,
      double? endLongitude,
      String? endLocation});
}

/// @nodoc
class __$$TimecardImplCopyWithImpl<$Res>
    extends _$TimecardCopyWithImpl<$Res, _$TimecardImpl>
    implements _$$TimecardImplCopyWith<$Res> {
  __$$TimecardImplCopyWithImpl(
      _$TimecardImpl _value, $Res Function(_$TimecardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeId = null,
    Object? employeeFirstName = null,
    Object? employeeLastName = null,
    Object? start = null,
    Object? startLatitude = freezed,
    Object? startLongitude = freezed,
    Object? startLocation = freezed,
    Object? end = freezed,
    Object? endLatitude = freezed,
    Object? endLongitude = freezed,
    Object? endLocation = freezed,
  }) {
    return _then(_$TimecardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      employeeFirstName: null == employeeFirstName
          ? _value.employeeFirstName
          : employeeFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      employeeLastName: null == employeeLastName
          ? _value.employeeLastName
          : employeeLastName // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimecardImpl implements _Timecard {
  _$TimecardImpl(
      {this.id = '',
      required this.employeeId,
      this.employeeFirstName = '',
      this.employeeLastName = '',
      required this.start,
      this.startLatitude,
      this.startLongitude,
      this.startLocation,
      this.end,
      this.endLatitude,
      this.endLongitude,
      this.endLocation});

  factory _$TimecardImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimecardImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final String employeeId;
  @override
  @JsonKey()
  final String employeeFirstName;
  @override
  @JsonKey()
  final String employeeLastName;
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
  String toString() {
    return 'Timecard(id: $id, employeeId: $employeeId, employeeFirstName: $employeeFirstName, employeeLastName: $employeeLastName, start: $start, startLatitude: $startLatitude, startLongitude: $startLongitude, startLocation: $startLocation, end: $end, endLatitude: $endLatitude, endLongitude: $endLongitude, endLocation: $endLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimecardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.employeeFirstName, employeeFirstName) ||
                other.employeeFirstName == employeeFirstName) &&
            (identical(other.employeeLastName, employeeLastName) ||
                other.employeeLastName == employeeLastName) &&
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
                other.endLocation == endLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      employeeId,
      employeeFirstName,
      employeeLastName,
      start,
      startLatitude,
      startLongitude,
      startLocation,
      end,
      endLatitude,
      endLongitude,
      endLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimecardImplCopyWith<_$TimecardImpl> get copyWith =>
      __$$TimecardImplCopyWithImpl<_$TimecardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimecardImplToJson(
      this,
    );
  }
}

abstract class _Timecard implements Timecard {
  factory _Timecard(
      {final String id,
      required final String employeeId,
      final String employeeFirstName,
      final String employeeLastName,
      required final DateTime start,
      final double? startLatitude,
      final double? startLongitude,
      final String? startLocation,
      final DateTime? end,
      final double? endLatitude,
      final double? endLongitude,
      final String? endLocation}) = _$TimecardImpl;

  factory _Timecard.fromJson(Map<String, dynamic> json) =
      _$TimecardImpl.fromJson;

  @override
  String get id;
  @override
  String get employeeId;
  @override
  String get employeeFirstName;
  @override
  String get employeeLastName;
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
  @JsonKey(ignore: true)
  _$$TimecardImplCopyWith<_$TimecardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DailyTotal {
  DateTime get day => throw _privateConstructorUsedError;
  int get totalMinutes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyTotalCopyWith<DailyTotal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyTotalCopyWith<$Res> {
  factory $DailyTotalCopyWith(
          DailyTotal value, $Res Function(DailyTotal) then) =
      _$DailyTotalCopyWithImpl<$Res, DailyTotal>;
  @useResult
  $Res call({DateTime day, int totalMinutes});
}

/// @nodoc
class _$DailyTotalCopyWithImpl<$Res, $Val extends DailyTotal>
    implements $DailyTotalCopyWith<$Res> {
  _$DailyTotalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? totalMinutes = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalMinutes: null == totalMinutes
          ? _value.totalMinutes
          : totalMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyTotalImplCopyWith<$Res>
    implements $DailyTotalCopyWith<$Res> {
  factory _$$DailyTotalImplCopyWith(
          _$DailyTotalImpl value, $Res Function(_$DailyTotalImpl) then) =
      __$$DailyTotalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime day, int totalMinutes});
}

/// @nodoc
class __$$DailyTotalImplCopyWithImpl<$Res>
    extends _$DailyTotalCopyWithImpl<$Res, _$DailyTotalImpl>
    implements _$$DailyTotalImplCopyWith<$Res> {
  __$$DailyTotalImplCopyWithImpl(
      _$DailyTotalImpl _value, $Res Function(_$DailyTotalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? totalMinutes = null,
  }) {
    return _then(_$DailyTotalImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalMinutes: null == totalMinutes
          ? _value.totalMinutes
          : totalMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DailyTotalImpl implements _DailyTotal {
  _$DailyTotalImpl({required this.day, required this.totalMinutes});

  @override
  final DateTime day;
  @override
  final int totalMinutes;

  @override
  String toString() {
    return 'DailyTotal(day: $day, totalMinutes: $totalMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyTotalImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.totalMinutes, totalMinutes) ||
                other.totalMinutes == totalMinutes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, totalMinutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyTotalImplCopyWith<_$DailyTotalImpl> get copyWith =>
      __$$DailyTotalImplCopyWithImpl<_$DailyTotalImpl>(this, _$identity);
}

abstract class _DailyTotal implements DailyTotal {
  factory _DailyTotal(
      {required final DateTime day,
      required final int totalMinutes}) = _$DailyTotalImpl;

  @override
  DateTime get day;
  @override
  int get totalMinutes;
  @override
  @JsonKey(ignore: true)
  _$$DailyTotalImplCopyWith<_$DailyTotalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
