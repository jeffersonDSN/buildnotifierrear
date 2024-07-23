part of 'finance_expense_card_edit_bloc.dart';

@freezed
class FinanceExpenseCardEditEvent with _$FinanceExpenseCardEditEvent {
  const factory FinanceExpenseCardEditEvent.load({
    required CrudType crudType,
  }) = FinanceExpenseCardEditEventLoad;

  const factory FinanceExpenseCardEditEvent.changeBankName({
    required String bankName,
  }) = FinanceExpenseCardEditEventChangeBankName;

  const factory FinanceExpenseCardEditEvent.changeNumber({
    required String number,
  }) = FinanceExpenseCardEditEventChangeNumber;

  const factory FinanceExpenseCardEditEvent.changeName({
    required String name,
  }) = FinanceExpenseCardEditEventChangeName;

  const factory FinanceExpenseCardEditEvent.changeDueDay({
    required int dueDay,
  }) = FinanceExpenseCardEditEventChangDueDay;

  const factory FinanceExpenseCardEditEvent.save({
    required ValueChanged<PaymentCard> callBack,
  }) = FinanceExpenseCardEditEventSave;
}
