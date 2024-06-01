import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('') String id,
    required String firstName,
    required String lastName,
    @Default('') String email,
  }) = _User;

  factory User.empty() => const User(
        id: '',
        firstName: '',
        lastName: '',
        email: '',
      );

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
