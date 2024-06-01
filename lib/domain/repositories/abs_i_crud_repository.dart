abstract interface class AbsICRUDRepository<T> {
  Future<List<T>> getAll();
  Future<T> getById(String id);
  Future<bool> post(T value);
  Future<bool> put(T value);
  Future<bool> delete(String id);
}
