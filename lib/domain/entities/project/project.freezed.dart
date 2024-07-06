// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get expectedCompletionDate => throw _privateConstructorUsedError;
  String get estimatedEffort => throw _privateConstructorUsedError;
  double get budget => throw _privateConstructorUsedError;
  @ProjectTypeConverter()
  ProjectStatus get status => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get clientFirstname => throw _privateConstructorUsedError;
  String get clientLastname => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, String> get descriptionList => throw _privateConstructorUsedError;
  int? get latitude => throw _privateConstructorUsedError;
  int? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {String id,
      String name,
      DateTime? startDate,
      DateTime? expectedCompletionDate,
      String estimatedEffort,
      double budget,
      @ProjectTypeConverter() ProjectStatus status,
      String clientId,
      String clientFirstname,
      String clientLastname,
      String zipCode,
      String state,
      String city,
      String address,
      String address2,
      String description,
      Map<String, String> descriptionList,
      int? latitude,
      int? longitude});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = freezed,
    Object? expectedCompletionDate = freezed,
    Object? estimatedEffort = null,
    Object? budget = null,
    Object? status = null,
    Object? clientId = null,
    Object? clientFirstname = null,
    Object? clientLastname = null,
    Object? zipCode = null,
    Object? state = null,
    Object? city = null,
    Object? address = null,
    Object? address2 = null,
    Object? description = null,
    Object? descriptionList = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedCompletionDate: freezed == expectedCompletionDate
          ? _value.expectedCompletionDate
          : expectedCompletionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedEffort: null == estimatedEffort
          ? _value.estimatedEffort
          : estimatedEffort // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientFirstname: null == clientFirstname
          ? _value.clientFirstname
          : clientFirstname // ignore: cast_nullable_to_non_nullable
              as String,
      clientLastname: null == clientLastname
          ? _value.clientLastname
          : clientLastname // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionList: null == descriptionList
          ? _value.descriptionList
          : descriptionList // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      DateTime? startDate,
      DateTime? expectedCompletionDate,
      String estimatedEffort,
      double budget,
      @ProjectTypeConverter() ProjectStatus status,
      String clientId,
      String clientFirstname,
      String clientLastname,
      String zipCode,
      String state,
      String city,
      String address,
      String address2,
      String description,
      Map<String, String> descriptionList,
      int? latitude,
      int? longitude});
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = freezed,
    Object? expectedCompletionDate = freezed,
    Object? estimatedEffort = null,
    Object? budget = null,
    Object? status = null,
    Object? clientId = null,
    Object? clientFirstname = null,
    Object? clientLastname = null,
    Object? zipCode = null,
    Object? state = null,
    Object? city = null,
    Object? address = null,
    Object? address2 = null,
    Object? description = null,
    Object? descriptionList = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$ProjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedCompletionDate: freezed == expectedCompletionDate
          ? _value.expectedCompletionDate
          : expectedCompletionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedEffort: null == estimatedEffort
          ? _value.estimatedEffort
          : estimatedEffort // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientFirstname: null == clientFirstname
          ? _value.clientFirstname
          : clientFirstname // ignore: cast_nullable_to_non_nullable
              as String,
      clientLastname: null == clientLastname
          ? _value.clientLastname
          : clientLastname // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionList: null == descriptionList
          ? _value._descriptionList
          : descriptionList // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {this.id = '',
      this.name = '',
      this.startDate,
      this.expectedCompletionDate,
      this.estimatedEffort = '',
      this.budget = 0,
      @ProjectTypeConverter() this.status = ProjectStatus.planning,
      this.clientId = '',
      this.clientFirstname = '',
      this.clientLastname = '',
      this.zipCode = '',
      this.state = '',
      this.city = '',
      this.address = '',
      this.address2 = '',
      this.description = '',
      final Map<String, String> descriptionList = const {},
      this.latitude,
      this.longitude})
      : _descriptionList = descriptionList;

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final DateTime? startDate;
  @override
  final DateTime? expectedCompletionDate;
  @override
  @JsonKey()
  final String estimatedEffort;
  @override
  @JsonKey()
  final double budget;
  @override
  @JsonKey()
  @ProjectTypeConverter()
  final ProjectStatus status;
  @override
  @JsonKey()
  final String clientId;
  @override
  @JsonKey()
  final String clientFirstname;
  @override
  @JsonKey()
  final String clientLastname;
  @override
  @JsonKey()
  final String zipCode;
  @override
  @JsonKey()
  final String state;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String address2;
  @override
  @JsonKey()
  final String description;
  final Map<String, String> _descriptionList;
  @override
  @JsonKey()
  Map<String, String> get descriptionList {
    if (_descriptionList is EqualUnmodifiableMapView) return _descriptionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_descriptionList);
  }

  @override
  final int? latitude;
  @override
  final int? longitude;

  @override
  String toString() {
    return 'Project(id: $id, name: $name, startDate: $startDate, expectedCompletionDate: $expectedCompletionDate, estimatedEffort: $estimatedEffort, budget: $budget, status: $status, clientId: $clientId, clientFirstname: $clientFirstname, clientLastname: $clientLastname, zipCode: $zipCode, state: $state, city: $city, address: $address, address2: $address2, description: $description, descriptionList: $descriptionList, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.expectedCompletionDate, expectedCompletionDate) ||
                other.expectedCompletionDate == expectedCompletionDate) &&
            (identical(other.estimatedEffort, estimatedEffort) ||
                other.estimatedEffort == estimatedEffort) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientFirstname, clientFirstname) ||
                other.clientFirstname == clientFirstname) &&
            (identical(other.clientLastname, clientLastname) ||
                other.clientLastname == clientLastname) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._descriptionList, _descriptionList) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        startDate,
        expectedCompletionDate,
        estimatedEffort,
        budget,
        status,
        clientId,
        clientFirstname,
        clientLastname,
        zipCode,
        state,
        city,
        address,
        address2,
        description,
        const DeepCollectionEquality().hash(_descriptionList),
        latitude,
        longitude
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {final String id,
      final String name,
      final DateTime? startDate,
      final DateTime? expectedCompletionDate,
      final String estimatedEffort,
      final double budget,
      @ProjectTypeConverter() final ProjectStatus status,
      final String clientId,
      final String clientFirstname,
      final String clientLastname,
      final String zipCode,
      final String state,
      final String city,
      final String address,
      final String address2,
      final String description,
      final Map<String, String> descriptionList,
      final int? latitude,
      final int? longitude}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime? get startDate;
  @override
  DateTime? get expectedCompletionDate;
  @override
  String get estimatedEffort;
  @override
  double get budget;
  @override
  @ProjectTypeConverter()
  ProjectStatus get status;
  @override
  String get clientId;
  @override
  String get clientFirstname;
  @override
  String get clientLastname;
  @override
  String get zipCode;
  @override
  String get state;
  @override
  String get city;
  @override
  String get address;
  @override
  String get address2;
  @override
  String get description;
  @override
  Map<String, String> get descriptionList;
  @override
  int? get latitude;
  @override
  int? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
