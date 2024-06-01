import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/task.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_tasks_repository.dart';

class TasksController extends CRUDController<Task> {
  final AbsITasksRepository repository;

  TasksController({
    required this.repository,
  }) : super(repository: repository);

  Future<List<Task>> getAllByProject(String projectId) {
    return repository.getAllByProject(projectId);
  }
}
