part of 'finance_expense_item_edit_bloc.dart';

@freezed
class FinanceExpenseItemEditEvent with _$FinanceExpenseItemEditEvent {
  const factory FinanceExpenseItemEditEvent.load({
    ExpenseItem? item,
  }) = FinanceExpenseItemEditEventLoad;

  const factory FinanceExpenseItemEditEvent.changeProductService({
    required String productService,
  }) = FinanceExpenseItemEditEventChangeProductService;

  const factory FinanceExpenseItemEditEvent.changeDescription({
    required String description,
  }) = FinanceExpenseItemEditEventChangeDescription;

  const factory FinanceExpenseItemEditEvent.changeQtyHrs({
    required double qtyHrs,
  }) = FinanceExpenseItemEditEventChangeQtyHrs;

  const factory FinanceExpenseItemEditEvent.changeRate({
    required double rate,
  }) = FinanceExpenseItemEditEventChangeRate;
}
