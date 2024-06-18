import 'package:buildnotifierrear/domain/entities/state/state.dart';

abstract interface class AbsIStatesRepository {
  Future<List<State>> getAll();
}
