import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_time_card_repository.dart';

class TimecardsController extends CRUDController<Timecard> {
  final AbsITimecardRepository _repository;

  TimecardsController({
    required AbsITimecardRepository repository,
  })  : _repository = repository,
        super(repository: repository);

  Future<List<Timecard>> getAllByUserId(String userId) {
    return _repository.getAllByUserId(userId);
  }
}
