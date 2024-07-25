import 'package:buildnotifierrear/domain/entities/enums/expense_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/payment_method_enums.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:collection/collection.dart';

class ExpensesCashFlow extends StatelessWidget {
  final List<Expense> expenses;
  final List<Invoice> invoices;

  const ExpensesCashFlow({
    super.key,
    required this.expenses,
    required this.invoices,
  });

  List<Map<String, dynamic>> _prepareChartData(
      List<Invoice> invoices, List<Expense> expenses) {
    List<Map<String, dynamic>> data = [];

    for (var invoice in invoices) {
      if (invoice.status == InvoiceStatusEnums.paid) {
        data.add({
          'type': 'Invoice',
          'paymentDate': invoice.paymentDate!,
          'value': invoice.total,
        });
      }
    }

    for (var expense in expenses) {
      if (expense.status == ExpenseStatusEnums.paid &&
          expense.paymentMethod != PaymentMethodEnums.creditCard) {
        data.add({
          'type': 'Expense',
          'paymentDate': expense.paymentDate!,
          'value': expense.total,
        });
      }
    }

    var groupedData = groupBy(data, (Map<String, dynamic> entry) {
      final date = entry['paymentDate'] as DateTime;
      return '${date.year}-${date.month.toString().padLeft(2, '0')}';
    });

    List<Map<String, dynamic>> chartData = [];
    groupedData.forEach((month, entries) {
      var totalInvoice = entries.any((e) => e['type'] == 'Invoice')
          ? entries
              .where((e) => e['type'] == 'Invoice')
              .map((e) => e['value'] as double)
              .reduce((a, b) => a + b)
          : 0;
      var totalExpense = entries.any((e) => e['type'] == 'Expense')
          ? entries
              .where((e) => e['type'] == 'Expense')
              .map((e) => e['value'] as double)
              .reduce((a, b) => a + b)
          : 0;
      chartData.add({
        'index': month,
        'type': 'Invoice',
        'value': totalInvoice,
      });
      chartData.add({
        'index': month,
        'type': 'Expense',
        'value': totalExpense,
      });
    });

    return chartData;
  }

  double _calculateCurrentCashBalance(
      List<Invoice> invoices, List<Expense> expenses) {
    double totalIncome = invoices.isNotEmpty
        ? invoices
            .where((invoice) => invoice.status == InvoiceStatusEnums.paid)
            .map((invoice) => invoice.total)
            .reduce((a, b) => a + b)
        : 0;

    double totalExpenses = expenses.isNotEmpty
        ? expenses
            .where((expense) =>
                expense.status == ExpenseStatusEnums.paid &&
                expense.paymentMethod != PaymentMethodEnums.creditCard)
            .map((expense) => expense.total)
            .reduce((a, b) => a + b)
        : 0;

    return totalIncome - totalExpenses;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.size8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.tr.cashFlow,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _calculateCurrentCashBalance(
                  invoices,
                  expenses,
                ).toStringAsFixed(2),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                context.tr.currentCashBalance,
              ),
              gapWidth8,
              Expanded(
                child: Chart(
                  padding: (_) => const EdgeInsets.fromLTRB(40, 5, 10, 40),
                  data: _prepareChartData(
                    invoices,
                    expenses,
                  ),
                  variables: {
                    'index': Variable(
                      accessor: (Map map) => map['index'].toString(),
                    ),
                    'type': Variable(
                      accessor: (Map map) => map['type'] as String,
                    ),
                    'value': Variable(
                      accessor: (Map map) => map['value'] as double,
                    ),
                  },
                  marks: [
                    IntervalMark(
                      position:
                          Varset('index') * Varset('value') / Varset('type'),
                      color: ColorEncode(
                        variable: 'type',
                        values: [
                          AppColor.green,
                          AppColor.warning,
                        ],
                      ),
                      size: SizeEncode(value: 16),
                      modifiers: [
                        DodgeModifier(ratio: 0.3),
                      ],
                    )
                  ],
                  coord: RectCoord(
                    horizontalRangeUpdater: Defaults.horizontalRangeEvent,
                  ),
                  axes: [
                    Defaults.horizontalAxis..tickLine = TickLine(),
                    Defaults.verticalAxis,
                  ],
                  selections: {
                    'tap': PointSelection(
                      variable: 'index',
                    )
                  },
                  tooltip: TooltipGuide(multiTuples: true),
                  crosshair: CrosshairGuide(),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          color: AppColor.green,
                          width: Sizes.size12,
                          height: 10,
                        ),
                        gapWidth8,
                        Text(
                          context.tr.income,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          color: AppColor.warning,
                          width: Sizes.size12,
                          height: 10,
                        ),
                        gapWidth8,
                        Text(
                          context.tr.expense,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
