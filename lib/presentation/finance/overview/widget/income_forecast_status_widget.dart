import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class IncomeForecastStatusWidget extends StatelessWidget {
  final List<Invoice> invoices;
  final List<Project> projects;

  const IncomeForecastStatusWidget({
    super.key,
    required this.invoices,
    required this.projects,
  });

  @override
  Widget build(BuildContext context) {
    var totalOfDraft = invoices.totalOf([InvoiceStatusEnums.draft]);

    var totalForecastProjectRevenues =
        projects.totalBudget - invoices.totalByProjects();

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
                context.tr.forecastedRevenues,
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
                        {
                          'genre': 'Draft Invoices',
                          'sold': totalOfDraft,
                        },
                        {
                          'genre': 'Forecasted project revenues',
                          'sold': totalForecastProjectRevenues
                        },
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
                            AppColor.green,
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
                              '${context.tr.draftInvoices} ${totalOfDraft.toStringAsFixed(2)}',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              color: AppColor.green,
                              width: Sizes.size12,
                              height: 10,
                            ),
                            gapWidth8,
                            Text(
                              '${context.tr.forecastedProjectRevenues} ${totalForecastProjectRevenues.toStringAsFixed(2)}',
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
