import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';
part 'client.g.dart';

@freezed
class Client with _$Client {
  const factory Client({
    @Default('') String id,
    @Default('') String firstName,
    @Default('') String middleName,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String phoneNumber,
    @Default('') String address,
    @Default('') String address2,
    @Default('') String city,
    @Default('') String state,
    @Default('') String zipCode,
  }) = _Client;

  factory Client.fromJson(Map<String, Object?> json) => _$ClientFromJson(json);
}
