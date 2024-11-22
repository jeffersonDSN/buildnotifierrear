import 'package:buildnotifierrear/domain/entities/enums/expense_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class ExpensesCategoryWidget extends StatelessWidget {
  final List<Expense> expenses;

  const ExpensesCategoryWidget({
    super.key,
    required this.expenses,
  });

  @override
  Widget build(BuildContext context) {
    var totalOfOverdue = expenses.totalOf([ExpenseStatusEnums.overdue]);

    var totalOfNotDueYet = expenses.totalOf([
      ExpenseStatusEnums.approved,
      ExpenseStatusEnums.partiallyPaid,
    ]);

    var totalOfPaid = expenses.totalOf(
      [ExpenseStatusEnums.paid],
    );

    return Card(
      child: SizedBox(
        height: 368,
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
                context.tr.expensesByCategory,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox.square(
                dimension: Sizes.size152,
                child: Chart(
                  data: [
                    {'genre': 'Overdue', 'sold': totalOfOverdue},
                    {'genre': 'Not due yet', 'sold': totalOfNotDueYet},
                    {'genre': 'Paid', 'sold': totalOfPaid},
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
                        AppColor.red,
                        AppColor.greyColorSwatch,
                        AppColor.warning,
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
                          color: AppColor.red,
                          width: Sizes.size12,
                          height: 10,
                        ),
                        gapWidth8,
                        Text(
                          '${context.tr.overdue} ${totalOfOverdue.toStringAsFixed(2)}',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          color: AppColor.greyColorSwatch,
                          width: Sizes.size12,
                          height: 10,
                        ),
                        gapWidth8,
                        Text(
                          '${context.tr.notDueYet} ${totalOfNotDueYet.toStringAsFixed(2)}',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          color: AppColor.warning,
                          width: Sizes.size12,
                          height: 10,
                        ),
                        gapWidth8,
                        Text(
                          '${context.tr.paid} ${totalOfPaid.toStringAsFixed(2)}',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
