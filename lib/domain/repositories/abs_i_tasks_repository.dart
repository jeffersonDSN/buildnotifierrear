import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsITasksRepository
    implements AbsICRUDRepository<Task> {
  Future<List<Task>> getAllByProject(String projectId);
  Future<bool> updateStatus(String id, TaskStatus status);
}
