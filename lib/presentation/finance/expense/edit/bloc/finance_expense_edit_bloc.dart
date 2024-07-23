import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/controllers/attachment_controller.dart';
import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/expenses_controller.dart';
import 'package:buildnotifierrear/domain/entities/card/payment_card.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/enums/payment_method_enums.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/domain/entities/expense_category/expense_category.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_expense_edit_bloc.freezed.dart';
part 'finance_expense_edit_event.dart';
part 'finance_expense_edit_state.dart';

class FinanceExpenseEditBloc
    extends Bloc<FinanceExpenseEditEvent, FinanceExpenseEditState> {
  FinanceExpenseEditBloc({
    required ExpensesController controller,
    required CRUDController<ExpenseCategory> expenseCategoryController,
    required CRUDController<PaymentCard> paymentCardController,
    required AttachmentController attachmentController,
  }) : super(const FinanceExpenseEditState.init()) {
    on<FinanceExpenseEditEvent>((event, emit) async {
      await event.when(
        load: (crudType) async {
          emit(
            FinanceExpenseEditState.loading(crudType: crudType),
          );

          var result = await Future.wait([
            crudType.when(
              create: () async {
                return Expense(issueDate: DateTime.now());
              },
              update: (id) async {
                return controller.getById(id);
              },
            ),
            expenseCategoryController.getAll(),
            paymentCardController.getAll(),
          ]);

          emit(
            FinanceExpenseEditState.loaded(
              crudType: crudType,
              expense: result[0] as Expense,
              categories: result[1] as List<ExpenseCategory>,
              cards: result[2] as List<PaymentCard>,
            ),
          );
        },
        changeDueDate: (dueDate) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              expense: lastState.expense.copyWith(
                dueDate: dueDate,
              ),
            ),
          );
        },
        changeDescription: (description) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              expense: lastState.expense.copyWith(
                description: description,
              ),
            ),
          );
        },
        changeCategory: (id, title) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              expense: lastState.expense.copyWith(
                categoryId: id,
                categoryTitle: title,
              ),
            ),
          );
        },
        changePaymentMethod: (paymentMethod) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              expense: lastState.expense.copyWith(
                paymentMethod: paymentMethod,
              ),
            ),
          );
        },
        changePaymentMethodCreditCard: (id, number) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              expense: lastState.expense.copyWith(
                paymentMethodCardId: id,
                paymentMethodCardNumber: number,
              ),
            ),
          );
        },
        addExpenseItem: (item) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              expense: lastState.expense.copyWith(
                items: [
                  ...lastState.expense.items,
                  item,
                ],
              ),
            ),
          );
        },
        linkProject: (projectId, projectName, taskId, taskTitle) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              expense: lastState.expense.copyWith(
                projectId: projectId,
                projectName: projectName,
                taskId: taskId,
                taskTitle: taskTitle,
              ),
            ),
          );
        },
        addAttachment: (attachment) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              expense: lastState.expense.copyWith(
                attachments: [
                  ...lastState.expense.attachments,
                  attachment,
                ],
              ),
            ),
          );
        },
        save: (callBack) async {
          var lastState = state.asLoaded;

          await lastState.crudType.when(
            create: () async {
              await controller.create(
                lastState.asLoaded.expense,
              );
            },
            update: (id) async {
              await controller.update(
                lastState.asLoaded.expense,
              );
            },
          );

          callBack.call();
        },
      );
    });
  }
}
