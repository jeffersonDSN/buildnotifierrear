import 'package:buildnotifierrear/domain/entities/enums/project_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsIProjectsRepository
    implements AbsICRUDRepository<Project> {
  Future<List<Project>> getAllByClient(String clientId);

  Future<bool> updateStatus(String id, ProjectStatus status);
}
