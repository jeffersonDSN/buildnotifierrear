import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

class CRUDController<T> {
  final AbsICRUDRepository<T> _repository;

  CRUDController({required AbsICRUDRepository<T> repository})
      : _repository = repository;

  Future<List<T>> getAll() {
    return _repository.getAll();
  }

  Future<T> getById(String id) {
    return _repository.getById(id);
  }

  Future<bool> create(T value) async {
    return await _repository.post(value);
  }

  Future<bool> update(T value) {
    return _repository.put(value);
  }

  Future<bool> delete(String id) {
    return _repository.delete(id);
  }
}
