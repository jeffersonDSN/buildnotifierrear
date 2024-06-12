import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_settings_repository.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_timecard_repository.dart';

class TimecardsController extends CRUDController<Timecard> {
  final AbsITimecardRepository _repository;

  TimecardsController({
    required AbsITimecardRepository repository,
    required AbsISettingsRepository settingsRepository,
  })  : _repository = repository,
        super(repository: repository);

  Future<List<Timecard>> getAllByUserId(String userId) {
    return _repository.getAllByUserId(userId);
  }

  Future<List<Timecard>> getAllOfPeriod(String userId, Period period) async {
    return _repository.getAllOfPeriod(userId, period.startDate, period.endDate);
  }
}
