import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_time_card_repository.dart';

class TimeCardsController extends CRUDController<TimeCard> {
  final AbsITimeCardRepository _repository;

  TimeCardsController({
    required AbsITimeCardRepository repository,
  })  : _repository = repository,
        super(repository: repository);

  Future<List<TimeCard>> getAllByUserId(String userId) {
    return _repository.getAllByUserId(userId);
  }
}
