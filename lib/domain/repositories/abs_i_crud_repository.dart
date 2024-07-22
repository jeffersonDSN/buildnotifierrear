import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:dartz/dartz.dart';

abstract interface class AbsICRUDRepository<T> {
  Future<List<T>> getAll();
  Future<T> getById(String id);
  Future<Either<ErrorFields, String>> post(T value);
  Future<Either<ErrorFields, bool>> put(T value);
  Future<bool> delete(String id);
}
