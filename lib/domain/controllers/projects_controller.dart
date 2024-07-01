import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/enums/project_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_projects_repository.dart';

class ProjectsController extends CRUDController<Project> {
  final AbsIProjectsRepository _repository;

  ProjectsController({
    required AbsIProjectsRepository repository,
  })  : _repository = repository,
        super(repository: repository);

  Future<List<Project>> getAllByClient(String clientId) {
    return _repository.getAllByClient(clientId);
  }

  Future<bool> updateStatus(String id, ProjectStatus status) {
    return _repository.updateStatus(id, status);
  }
}
