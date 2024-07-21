import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class InvoiceStatusWidget extends StatelessWidget {
  final List<Invoice> invoices;

  const InvoiceStatusWidget({
    super.key,
    required this.invoices,
  });

  @override
  Widget build(BuildContext context) {
    var totalOfOverdue = invoices.totalOf([InvoiceStatusEnums.overdue]);

    var totalOfNotDueYet = invoices.totalOf([
      InvoiceStatusEnums.sent,
      InvoiceStatusEnums.partiallyPaid,
    ]);

    var totalOfPaid = invoices.totalOf(
      [InvoiceStatusEnums.paid],
    );

    return Card(
      child: SizedBox(
        height: Sizes.size240,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.size16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.tr.invoices,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              gapHeight16,
              Row(
                children: [
                  Expanded(
                    child: SizedBox.square(
                      dimension: Sizes.size160,
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
                  ),
                  Expanded(
                    child: Column(
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
                              color: AppColor.green,
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
