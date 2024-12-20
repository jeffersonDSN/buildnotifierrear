part of 'finance_expense_edit_bloc.dart';

@freezed
class FinanceExpenseEditEvent with _$FinanceExpenseEditEvent {
  const factory FinanceExpenseEditEvent.load({
    required CrudType crudType,
  }) = FinanceExpenseEditEventLoad;

  const factory FinanceExpenseEditEvent.changeDueDate({
    required DateTime dueDate,
  }) = FinanceExpenseEditEventChangeDueDate;

  const factory FinanceExpenseEditEvent.changeDescription({
    required String description,
  }) = FinanceExpenseEditEventChangeDescription;

  const factory FinanceExpenseEditEvent.changeCategory({
    required String id,
    required String title,
  }) = FinanceExpenseEditEventChangeCategory;

  const factory FinanceExpenseEditEvent.changeCreditCard({
    required String id,
    required String number,
  }) = FinanceExpenseEditEventChangeCreditCard;

  const factory FinanceExpenseEditEvent.changePaymentMethod({
    required PaymentMethodEnums paymentMethod,
  }) = FinanceExpenseEditEventChangePaymentMethod;

  const factory FinanceExpenseEditEvent.changePaymentMethodCreditCard({
    required String id,
    required String number,
  }) = FinanceExpenseEditEventChangePaymentMethodCreditCard;

  const factory FinanceExpenseEditEvent.addExpenseItem({
    required ExpenseItem item,
  }) = FinanceExpenseEditEventChangeAddExpenseItem;

  const factory FinanceExpenseEditEvent.linkProject({
    required String projectId,
    required String projectName,
    required String taskId,
    required String taskTitle,
  }) = FinanceExpenseEditEventChangeLinkProject;

  const factory FinanceExpenseEditEvent.addAttachment({
    required Attachment attachment,
  }) = FinanceExpenseEditEventChangeAddAttachment;

  const factory FinanceExpenseEditEvent.save(VoidCallback callBack) =
      FinanceExpenseEditEventChangeSave;
}
