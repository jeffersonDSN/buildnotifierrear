import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';
import 'package:dartz/dartz.dart';

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

  Future<Either<ErrorFields, String>> create(T value) async {
    return await _repository.post(value);
  }

  Future<Either<ErrorFields, bool>> update(T value) {
    return _repository.put(value);
  }

  Future<bool> delete(String id) {
    return _repository.delete(id);
  }
}
