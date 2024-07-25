import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:buildnotifierrear/domain/entities/enums/expense_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class ExpenseForecastStatusWidget extends StatelessWidget {
  final List<Expense> expenses;
  final List<Timecard> timecards;
  final List<Employee> employees;

  const ExpenseForecastStatusWidget({
    super.key,
    required this.expenses,
    required this.timecards,
    required this.employees,
  });

  @override
  Widget build(BuildContext context) {
    var totalOfDraft = expenses.totalOf([ExpenseStatusEnums.draft]);

    var totalOfPending = expenses.totalOf([ExpenseStatusEnums.pending]);

    var totalOfPayroll = employees.getGrossPay(timecards);

    return Card(
      child: SizedBox(
        height: Sizes.size180,
        child: Padding(
          padding: const EdgeInsets.only(
            top: Sizes.size8,
            left: Sizes.size8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.tr.expectedExpenses,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  SizedBox.square(
                    dimension: Sizes.size152,
                    child: Chart(
                      data: [
                        {'genre': 'Draft', 'sold': totalOfDraft},
                        {'genre': 'Pending', 'sold': totalOfPending},
                        {'genre': 'Paid', 'sold': totalOfPayroll},
                      ],
                      variables: {
                        'genre': Variable(
                          accessor: (Map map) => map['genre'] as String,
                        ),
                        'sold': Variable(
                          accessor: (Map map) => map['sold'] as num,
                        ),
                      },
                      transforms: [
                        Proportion(
                          variable: 'sold',
                          as: 'percent',
                        )
                      ],
                      marks: [
                        IntervalMark(
                          position: Varset('percent') / Varset('genre'),
                          color: ColorEncode(variable: 'genre', values: [
                            AppColor.warning,
                            AppColor.orange,
                            AppColor.primaryColorSwatch,
                          ]),
                          modifiers: [StackModifier()],
                        )
                      ],
                      coord: PolarCoord(
                        transposed: true,
                        dimCount: 1,
                        startRadius: 0.6,
                      ),
                      selections: {'tap': PointSelection()},
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              color: AppColor.warning,
                              width: Sizes.size12,
                              height: 10,
                            ),
                            gapWidth8,
                            Text(
                              '${context.tr.draft} ${totalOfDraft.toStringAsFixed(2)}',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              color: AppColor.orange,
                              width: Sizes.size12,
                              height: 10,
                            ),
                            gapWidth8,
                            Text(
                              '${context.tr.pending} ${totalOfPending.toStringAsFixed(2)}',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              color: AppColor.primaryColorSwatch,
                              width: Sizes.size12,
                              height: 10,
                            ),
                            gapWidth8,
                            Text(
                              '${context.tr.payroll} ${totalOfPayroll.toStringAsFixed(2)}',
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
