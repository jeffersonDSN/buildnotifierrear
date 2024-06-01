import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsITimeCardRepository
    implements AbsICRUDRepository<TimeCard> {
  Future<List<TimeCard>> getAllByUserId(String userId);
}
