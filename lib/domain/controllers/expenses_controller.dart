import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/enums/expense_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_expenses_repository.dart';

class ExpensesController extends CRUDController<Expense> {
  final AbsIExpensesRepository _repository;

  ExpensesController({required AbsIExpensesRepository repository})
      : _repository = repository,
        super(repository: repository);

  Future<bool> changeStatus(String invoiceId, ExpenseStatusEnums status) {
    return _repository.changeStatus(invoiceId, status);
  }
}
