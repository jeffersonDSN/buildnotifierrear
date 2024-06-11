import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsITimecardRepository
    implements AbsICRUDRepository<Timecard> {
  Future<List<Timecard>> getAllByUserId(String userId);
}
