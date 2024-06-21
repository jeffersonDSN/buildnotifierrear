import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_timecard_repository.dart';

class TimecardsController extends CRUDController<Timecard> {
  final AbsITimecardRepository _repository;

  TimecardsController({
    required AbsITimecardRepository repository,
  })  : _repository = repository,
        super(repository: repository);

  Future<List<Timecard>> getAllByUserId(String userId) {
    return _repository.getAllByUserId(userId);
  }

  Future<List<Timecard>> getAllOfByUserAndPeriod(
    String userId,
    Period period,
  ) async {
    return _repository.getAllOfByUserAndPeriod(
      userId,
      period.startDate,
      period.endDate,
    );
  }

  Future<List<Timecard>> getAllOfPeriod(
    Period period,
  ) async {
    return _repository.getAllOfPeriod(
      period.startDate,
      period.endDate,
    );
  }
}
