import 'package:buildnotifierrear/domain/entities/settings/settings.dart';
import 'package:buildnotifierrear/domain/entities/employee/employee.dart';

abstract interface class AbsISettingsRepository {
  Future<Settings> get();
  Future<String> post(Settings value, Employee createBy);
  Future<bool> put(Settings value);
}
