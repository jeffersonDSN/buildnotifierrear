import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/expense/edit/item_edit/bloc/finance_expense_item_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/expense/edit/item_edit/view/finance_expense_item_edit_view.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpenseItemEdit extends IView {
  final ExpenseItem? item;

  const FinanceExpenseItemEdit({
    super.key,
    this.item,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FinanceExpenseItemEditBloc(),
      child: FinanceExpenseItemEditView(
        item: item,
      ),
    );
  }
}
