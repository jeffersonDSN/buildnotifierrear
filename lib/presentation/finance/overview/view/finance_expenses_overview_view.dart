import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/expense/card/card_overview/finance_expense_card_overview.dart';
import 'package:buildnotifierrear/presentation/finance/expense/category/category_overview/finance_expense_category_overview.dart';
import 'package:buildnotifierrear/presentation/finance/overview/widget/expenses_table_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class FinanceExpensesOverviewView extends IView {
  final List<Expense> expenses;
  final ValueChanged<Expense> onPaid;
  final ValueChanged<Expense> onCancel;

  const FinanceExpensesOverviewView({
    super.key,
    required this.expenses,
    required this.onPaid,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Column(
        children: [
          Container(
            height: Sizes.size64,
            color: AppColor.lightColor,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: Sizes.size500,
                  child: Padding(
                    padding: const EdgeInsets.all(Sizes.size8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Sizes.size4,
                        ),
                        color: AppColor.greyColorSwatch.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              Sizes.size4,
                            ),
                            color: Colors.white,
                          ),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.transparent,
                          tabs: [
                            Row(
                              children: [
                                const Icon(Icons.payments_outlined),
                                gapWidth4,
                                Text(context.tr.expenses),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.settings),
                                gapWidth4,
                                Text(context.tr.expenseSettings),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: AppColor.lightColor,
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ExpensesTableWidget(
                    expenses: expenses,
                    onEdit: (value) {
                      appBloc(context).add(
                        AppEvent.changeView(
                          mod: Mod.financeExpenses(
                            type: ViewType.update(
                              id: value.id,
                            ),
                          ),
                        ),
                      );
                    },
                    onPaid: onPaid,
                    onCancel: onCancel,
                  ),
                  const Row(
                    children: [
                      FinanceExpenseCategoryOverview(),
                      FinanceExpenseCardOverview(),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
