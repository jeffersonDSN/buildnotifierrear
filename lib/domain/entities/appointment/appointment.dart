import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
class AppointmentUser with _$AppointmentUser {
  const factory AppointmentUser({
    required String id,
    required String firstName,
    required String lastName,
  }) = _AppointmentUser;

  factory AppointmentUser.fromJson(Map<String, Object?> json) =>
      _$AppointmentUserFromJson(json);
}

extension OnAppointmentUserList on List<AppointmentUser> {
  List<Map<String, dynamic>> toJson() {
    return map((appointmentUser) => appointmentUser.toJson()).toList();
  }
}

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    @Default('') String id,
    @Default('') String title,
    @Default('') String location,
    required DateTime startDateTime,
    required DateTime endDateTime,
    @Default(0) double latitude,
    @Default(0) longitude,
    @Default([]) List<AppointmentUser> assignTo,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, Object?> json) =>
      _$AppointmentFromJson(json);
}
