import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/expense_category/expense_category.dart';
import 'package:buildnotifierrear/infrastructure/firestore/expense_categories_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/expense/category_edit/bloc/finance_expense_category_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/expense/category_edit/view/finance_expenses_category_edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpenseCategorydEdit extends IView {
  final CrudType? crudType;

  const FinanceExpenseCategorydEdit({
    super.key,
    this.crudType,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => FinanceExpenseCategoryEditBloc(
        controller: CRUDController<ExpenseCategory>(
          repository: ExpenseCategoriesFirestoreRepository(tenantId: tenantId),
        ),
      ),
      child: FinanceExpensesCategoryEditView(
        crudType: crudType ?? const CrudType.create(),
      ),
    );
  }
}
