import 'package:buildnotifierrear/domain/entities/task.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsITasksRepository
    implements AbsICRUDRepository<Task> {
  Future<List<Task>> getAllByProject(String projectId);
}
