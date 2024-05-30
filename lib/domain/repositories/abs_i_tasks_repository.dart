import 'package:buildnotifierrear/domain/entities/task.dart';

abstract interface class AbsITasksRepository {
  Future<List<Task>> getAllByProject(String projectId);
  Future<Task> getById(String id);
  Future<bool> post(Task task);
  Future<bool> put(Task task);
  Future<bool> delete(String id);
}
