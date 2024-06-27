import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsIEmployeesRepository
    implements AbsICRUDRepository<Employee> {
  Future<Employee?> getEmployeeByUserNamePassword(
    String userName,
    String password,
  );

  Future<List<Employee>> getEmployeesByID(List<String> ids);
}
