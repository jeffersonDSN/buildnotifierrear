import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_tasks_repository.dart';

class TasksController extends CRUDController<Task> {
  final AbsITasksRepository _repository;

  TasksController({
    required AbsITasksRepository repository,
  })  : _repository = repository,
        super(repository: repository);

  Future<List<Task>> getAllByProject(String projectId) {
    return _repository.getAllByProject(projectId);
  }
}
