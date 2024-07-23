import 'package:buildnotifierrear/domain/core/utils.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/domain/entities/enums/expense_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/payment_method_enums.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class ExpensesTableWidget extends StatelessWidget {
  final List<Expense> expenses;
  final ValueChanged<Expense> onPaid;
  final ValueChanged<Expense> onCancel;

  const ExpensesTableWidget({
    super.key,
    required this.expenses,
    required this.onPaid,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.lightColor,
      child: Padding(
        padding: const EdgeInsets.all(
          Sizes.size16,
        ),
        child: DataTable2(
          empty: const Center(
            child: Text(
              '',
            ),
          ),
          columns: [
            DataColumn2(
              size: ColumnSize.M,
              label: Text(
                context.tr.dueDate,
              ),
            ),
            DataColumn2(
              fixedWidth: Sizes.size200,
              size: ColumnSize.L,
              label: Text(context.tr.description),
            ),
            DataColumn2(
              size: ColumnSize.M,
              label: Text(context.tr.method),
            ),
            DataColumn2(
              size: ColumnSize.M,
              numeric: true,
              label: Text(context.tr.amount),
            ),
            // DataColumn2(
            //   size: ColumnSize.M,
            //   numeric: true,
            //   label: Text(context.tr.balance),
            // ),
            DataColumn2(
              fixedWidth: Sizes.size240,
              numeric: true,
              label: Text(context.tr.status),
            ),
            DataColumn2(
              size: ColumnSize.S,
              numeric: true,
              label: Text(context.tr.action),
            ),
          ],
          rows: expenses.map((expense) {
            return DataRow(
              cells: [
                DataCell(
                  Text(
                    formatDate(
                      expense.dueDate!,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    expense.description,
                  ),
                ),
                DataCell(
                  Text(
                    expense.paymentMethod.name(context),
                  ),
                ),
                DataCell(
                  Text(
                    expense.total.toStringAsFixed(2),
                  ),
                ),
                // DataCell(
                //   Container(),
                // ),
                DataCell(
                  Container(
                    decoration: BoxDecoration(
                      color: expense.status.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.size12,
                      vertical: Sizes.size2,
                    ),
                    child: Text(
                      expense.status.name(context),
                      style: const TextStyle(
                        color: AppColor.lightColor,
                      ),
                    ),
                  ),
                ),
                if ([
                  ExpenseStatusEnums.cancelled,
                  ExpenseStatusEnums.refunded,
                ].contains(expense.status))
                  DataCell(
                    Container(),
                  ),
                if (![
                  ExpenseStatusEnums.cancelled,
                  ExpenseStatusEnums.refunded,
                ].contains(expense.status))
                  DataCell(
                    PopupMenuButton(
                      tooltip: '',
                      itemBuilder: (context) => [
                        if (ExpenseStatusEnums.pending == expense.status)
                          PopupMenuItem(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  Sizes.size4,
                                ),
                                color: AppColor.primaryColorSwatch,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(
                                  Sizes.size8,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Approve',
                                        style: TextStyle(
                                          color: AppColor.lightColor,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.share,
                                      color: AppColor.lightColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        PopupMenuItem(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Sizes.size4,
                              ),
                              color: AppColor.primaryColorSwatch,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(
                                Sizes.size8,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      context.tr.addAttachment,
                                      style: const TextStyle(
                                        color: AppColor.lightColor,
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.attach_file,
                                    color: AppColor.lightColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () async {},
                        ),
                        if (ExpenseStatusEnums.approved == expense.status)
                          PopupMenuItem(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  Sizes.size4,
                                ),
                                color: AppColor.success,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(
                                  Sizes.size8,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        context.tr.markAsPaid,
                                        style: const TextStyle(
                                          color: AppColor.lightColor,
                                        ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.done,
                                      color: AppColor.lightColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () async {
                              onPaid.call(expense);
                            },
                          ),
                        if (ExpenseStatusEnums.approved != expense.status)
                          PopupMenuItem(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  Sizes.size4,
                                ),
                                color: AppColor.warning,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(
                                  Sizes.size8,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        context.tr.cancelInvoice,
                                        style: const TextStyle(
                                          color: AppColor.lightColor,
                                        ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.cancel,
                                      color: AppColor.lightColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () async {
                              onCancel.call(expense);
                            },
                          ),
                      ],
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
