import 'package:buildnotifierrear/domain/entities/settings/settings.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';

abstract interface class AbsISettingsRepository {
  Future<Settings> get();
  Future<String> post(Settings value, User createBy);
  Future<bool> put(Settings value);
}
