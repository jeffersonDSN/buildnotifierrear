import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/expense_category/expense_category.dart';
import 'package:buildnotifierrear/infrastructure/firestore/expense_categories_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/expense/category/category_overview/bloc/finance_expense_category_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/expense/category/category_overview/view/finance_expenses_card_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpenseCategoryOverview extends IView {
  const FinanceExpenseCategoryOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => FinanceExpenseCategoryOverviewBloc(
        controller: CRUDController<ExpenseCategory>(
          repository: ExpenseCategoriesFirestoreRepository(tenantId: tenantId),
        ),
      ),
      child: const FinanceExpensesCategoryOverview(),
    );
  }
}
