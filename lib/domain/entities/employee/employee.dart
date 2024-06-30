import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
class Employee with _$Employee {
  const factory Employee({
    @Default('') String id,
    @Default('') String firstName,
    @Default('') String middleName,
    @Default('') String lastName,
    @Default('') String address,
    @Default('') String address2,
    @Default('') String city,
    @Default('') String state,
    @Default('') String zipCode,
    @Default('') String email,
    @Default('') String phoneNumber,
    @Default('') String department,
    @Default('') String position,
    @Default(0) double hourlyRate,
    @Default('') String tenant,
    @Default('') String userName,
    @Default('') String password,
    @Default(0) int userType,
  }) = _Employee;

  factory Employee.fromJson(Map<String, Object?> json) =>
      _$EmployeeFromJson(json);
}

extension OnEmployee on Employee {
  double getGrossPay(int hours, int minutes) {
    double decimalMinutes = minutes / 60.0;
    double totalHours = hours + decimalMinutes;
    double earnings = totalHours * hourlyRate;

    return earnings;
  }
}

extension OnEmployeeList on List<Employee> {
  double getGrossPay(List<Timecard> timecards) {
    double earnings = 0;

    for (var employee in this) {
      var timecardsOfUser = timecards
          .where(
            (timecard) => timecard.employeeId == employee.id,
          )
          .toList();

      var totalHoursAndMinutes = timecardsOfUser.totalHoursAndMinutes;

      earnings += employee.getGrossPay(
        totalHoursAndMinutes.hours,
        totalHoursAndMinutes.minutes,
      );
    }

    return earnings;
  }
}
