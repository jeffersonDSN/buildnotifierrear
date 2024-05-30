import 'package:buildnotifierrear/domain/entities/task.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_tasks_repository.dart';

class TasksController {
  final AbsITasksRepository _repository;

  TasksController({
    required AbsITasksRepository repository,
  }) : _repository = repository;

  Future<List<Task>> getAllByProject(String projectId) {
    return _repository.getAllByProject(projectId);
  }

  Future<Task> getById(String id) {
    return _repository.getById(id);
  }

  Future<bool> create(Task task) {
    return _repository.post(task);
  }

  Future<bool> update(Task task) {
    return _repository.put(task);
  }

  Future<bool> delete(String id) {
    return _repository.delete(id);
  }
}
