import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('') String id,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String phoneNumber,
    @Default('') String department,
    @Default('') String tenant,
    @Default('') String userName,
    @Default('') String password,
    @Default(0) int userType,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
