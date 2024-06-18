import 'package:buildnotifierrear/domain/entities/state/state.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_states_repository.dart';

class StatesController {
  final AbsIStatesRepository _repository;

  StatesController({
    required AbsIStatesRepository repository,
  }) : _repository = repository;

  Future<List<State>> getAll() {
    return _repository.getAll();
  }
}
