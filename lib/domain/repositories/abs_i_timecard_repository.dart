import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsITimecardRepository
    implements AbsICRUDRepository<Timecard> {
  Future<List<Timecard>> getAllByUserId(String userId);

  Future<List<Timecard>> getAllOfByUserAndPeriod(
    String userId,
    DateTime startDate,
    DateTime endDate,
  );

  Future<List<Timecard>> getAllOfPeriod(
    DateTime startDate,
    DateTime endDate,
  );
}
