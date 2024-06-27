import 'package:buildnotifierrear/domain/entities/settings/settings.dart';
import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_settings_repository.dart';

class SettingsController {
  final AbsISettingsRepository _repository;

  SettingsController({
    required AbsISettingsRepository repository,
  }) : _repository = repository;

  Future<Settings> getSettings() {
    return _repository.get();
  }

  Future<String> createNewAccount(Settings value, Employee createBy) {
    return _repository.post(value, createBy);
  }

  Future<bool> updateSettings(Settings value) {
    return _repository.put(value);
  }
}
