import 'package:buildnotifierrear/presentation/finance/expense/card_overview/finance_expense_card_overview.dart';
import 'package:buildnotifierrear/presentation/finance/expense/category_overview/finance_expense_category_overview.dart';
import 'package:buildnotifierrear/presentation/finance/overview/widget/expenses_table_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class FinanceExpensesOverviewView extends StatelessWidget {
  const FinanceExpensesOverviewView({super.key});

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
                  width: Sizes.size360,
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
                          tabs: const [
                            Row(
                              children: [
                                Icon(Icons.payments_outlined),
                                gapWidth4,
                                Text('Expenses'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.settings),
                                gapWidth4,
                                Text('Expense settings'),
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
                children: [
                  ExpensesTableWidget(
                    expenses: const [],
                    onPaid: (value) {},
                    onCancel: (value) {},
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
