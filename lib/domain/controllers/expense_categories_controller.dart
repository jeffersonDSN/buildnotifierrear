import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/expense_category/expense_category.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

class ExpenseCategoriesController extends CRUDController<ExpenseCategory> {
  final AbsICRUDRepository<ExpenseCategory> _repository;

  ExpenseCategoriesController({required super.repository})
      : _repository = repository;

  @override
  Future<List<ExpenseCategory>> getAll() async {
    var expenseCategorie = await _repository.getAll();

    return [
      ExpenseCategory(
        id: '1',
        title: 'Payroll expenses',
        system: true,
      ),
      ExpenseCategory(
        id: '2',
        title: 'Credit card bill',
        system: true,
      ),
      ...expenseCategorie,
    ];
  }
}
