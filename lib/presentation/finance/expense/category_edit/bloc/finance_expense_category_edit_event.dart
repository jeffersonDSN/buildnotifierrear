part of 'finance_expense_category_edit_bloc.dart';

@freezed
class FinanceExpenseCategoryEditEvent with _$FinanceExpenseCategoryEditEvent {
  const factory FinanceExpenseCategoryEditEvent.load({
    required CrudType crudType,
  }) = FinanceExpenseCategoryEditEventtLoad;

  const factory FinanceExpenseCategoryEditEvent.changeTitle({
    required String title,
  }) = FinanceExpenseCategoryEditEventChangeName;

  const factory FinanceExpenseCategoryEditEvent.save({
    required ValueChanged<ExpenseCategory> callBack,
  }) = FinanceExpenseCategoryEditEventSave;
}
