import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsITimecardRepository
    implements AbsICRUDRepository<Timecard> {
  Future<List<Timecard>> getAllOfByEmployeeAndPeriod(
    String userId,
    DateTime startDate,
    DateTime endDate,
  );

  Future<List<Timecard>> getAllOfPeriod(
    DateTime startDate,
    DateTime endDate,
  );

  Stream<List<Timecard>> getAllEmployeesWhoCheckedIn();

  Future<List<Timecard>> getAllPendingPayment();
}
