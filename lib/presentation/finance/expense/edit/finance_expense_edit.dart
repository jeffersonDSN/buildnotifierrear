import 'package:buildnotifierrear/domain/controllers/attachment_controller.dart';
import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/expense_categories_controller.dart';
import 'package:buildnotifierrear/domain/controllers/expenses_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/infrastructure/firestore/attachment_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/expense_categories_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/expenses_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/payment_card_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/expense/edit/bloc/finance_expense_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/expense/edit/view/finance_expense_edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpenseEdit extends IView {
  final CrudType? crudType;

  const FinanceExpenseEdit({
    super.key,
    this.crudType,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => FinanceExpenseEditBloc(
        controller: ExpensesController(
          repository: ExpensesFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
        expenseCategoryController: ExpenseCategoriesController(
          repository: ExpenseCategoriesFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
        paymentCardController: CRUDController(
          repository: PaymentCardFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
        attachmentController: AttachmentController(
          repository: AttachmentFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: FinanceExpenseEditView(
        crudType: crudType ?? const CrudType.create(),
      ),
    );
  }
}
