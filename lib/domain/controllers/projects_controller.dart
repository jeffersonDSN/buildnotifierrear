import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/project.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_projects_repository.dart';

class ProjectsController {
  final AbsIProjectsRepository _repository;

  ProjectsController({
    required AbsIProjectsRepository repository,
  }) : _repository = repository;

  Future<List<Project>> getAll() {
    return _repository.getAll();
  }

  Future<Project> getById(String id) {
    return _repository.getById(id);
  }

  Future<bool> create(Project project) async {
    return await _repository.post(project);
  }

  Future<bool> update(Project project) {
    return _repository.put(project);
  }

  Future<bool> delete(String id) {
    return _repository.delete(id);
  }
}
