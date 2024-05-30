import 'package:buildnotifierrear/domain/entities/project.dart';

abstract interface class AbsIProjectsRepository {
  Future<List<Project>> getAll();
  Future<Project> getById(String id);
  Future<bool> post(Project project);
  Future<bool> put(Project project);
  Future<bool> delete(String id);
}
