import 'package:buildnotifierrear/domain/entities/enums/expense_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsIExpensesRepository
    implements AbsICRUDRepository<Expense> {
  Future<bool> changeStatus(String expenseId, ExpenseStatusEnums status);
}
