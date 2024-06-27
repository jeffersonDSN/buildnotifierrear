import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_employees_repository.dart';

class EmployeesController extends CRUDController<Employee> {
  final AbsIEmployeesRepository _repository;

  EmployeesController({required AbsIEmployeesRepository repository})
      : _repository = repository,
        super(repository: repository);

  Future<Employee?> getEmployeeByUserNamePassword(
    String userName,
    String password,
  ) {
    return _repository.getEmployeeByUserNamePassword(userName, password);
  }

  Future<List<Employee>> getEmployeesByID(List<String> ids) {
    return _repository.getEmployeesByID(ids);
  }
}
