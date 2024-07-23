import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/overview/bloc/finance_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/overview/view/finance_expenses_overview_view.dart';
import 'package:buildnotifierrear/presentation/finance/overview/widget/invoice_status_widget.dart';
import 'package:buildnotifierrear/presentation/finance/overview/widget/invoice_table_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphic/graphic.dart';

class FinanceOverviewView extends IView {
  const FinanceOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<FinanceOverviewBloc>(context);

    bloc.add(
      const FinanceOverviewEvent.load(),
    );

    return DefaultTabController(
      initialIndex: 0,
      length: 3,
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
                                const Icon(Icons.dashboard_outlined),
                                gapWidth4,
                                Text(context.tr.overview),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.payments_outlined),
                                gapWidth4,
                                Text(context.tr.expenses),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.request_quote_outlined),
                                gapWidth4,
                                Text(context.tr.invoices),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Sizes.size8),
                        child: FilledButton.icon(
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              AppColor.warning,
                            ),
                          ),
                          icon: const Icon(Icons.add),
                          label: Text(context.tr.newExpenses),
                          onPressed: () {
                            appBloc(context).add(
                              const AppEvent.changeView(
                                mod: Mod.financeExpenses(
                                  type: ViewType.create(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(Sizes.size8),
                        child: FilledButton.icon(
                          icon: const Icon(Icons.add),
                          label: Text(context.tr.newInvoices),
                          onPressed: () {
                            appBloc(context).add(
                              const AppEvent.changeView(
                                mod: Mod.financeInvoice(
                                  type: ViewType.create(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          BlocBuilder<FinanceOverviewBloc, FinanceOverviewState>(
            bloc: bloc,
            builder: (context, state) {
              return Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: state.maybeWhen(
                    orElse: () {
                      return [
                        Padding(
                          padding: const EdgeInsets.all(
                            Sizes.size8,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                      child: SizedBox(
                                        height: Sizes.size240,
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            Sizes.size16,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                context.tr.expenses,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              gapHeight16,
                                              const Expanded(
                                                child: Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Card(
                                      child: SizedBox(
                                        height: Sizes.size240,
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            Sizes.size16,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                context.tr.invoices,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              gapHeight16,
                                              const Expanded(
                                                child: Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Expanded(
                                child: Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(Sizes.size8),
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Card(
                            child: Expanded(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Card(
                            child: Expanded(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ),
                        ),
                      ];
                    },
                    loaded: (invoices, expenses) {
                      return [
                        Padding(
                          padding: const EdgeInsets.all(
                            Sizes.size8,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                      child: SizedBox(
                                        height: Sizes.size240,
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                              Sizes.size16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                context.tr.expenses,
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
                                                        data: const [
                                                          {
                                                            'genre':
                                                                'Rent & mortgage ',
                                                            'sold': 2500.00,
                                                          },
                                                          {
                                                            'genre':
                                                                'Transport',
                                                            'sold': 6000.00,
                                                          },
                                                          {
                                                            'genre': 'Employee',
                                                            'sold': 12000.00,
                                                          },
                                                        ],
                                                        variables: {
                                                          'genre': Variable(
                                                            accessor: (Map
                                                                    map) =>
                                                                map['genre']
                                                                    as String,
                                                          ),
                                                          'sold': Variable(
                                                            accessor:
                                                                (Map map) =>
                                                                    map['sold']
                                                                        as num,
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
                                                            position: Varset(
                                                                    'percent') /
                                                                Varset('genre'),
                                                            color: ColorEncode(
                                                                variable:
                                                                    'genre',
                                                                values: [
                                                                  AppColor
                                                                      .warning
                                                                      .shade400,
                                                                  AppColor
                                                                      .warning
                                                                      .shade500,
                                                                  AppColor
                                                                      .warning
                                                                      .shade600,
                                                                ]),
                                                            modifiers: [
                                                              StackModifier()
                                                            ],
                                                          )
                                                        ],
                                                        coord: PolarCoord(
                                                          transposed: true,
                                                          dimCount: 1,
                                                          startRadius: 0.6,
                                                        ),
                                                        selections: {
                                                          'tap':
                                                              PointSelection()
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(
                                                              color: AppColor
                                                                  .warning
                                                                  .shade400,
                                                              width:
                                                                  Sizes.size12,
                                                              height: 10,
                                                            ),
                                                            gapWidth8,
                                                            const Text(
                                                              'Rent & mortgage: 2,500.00',
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              color: AppColor
                                                                  .warning
                                                                  .shade500,
                                                              width:
                                                                  Sizes.size12,
                                                              height: 10,
                                                            ),
                                                            gapWidth8,
                                                            const Text(
                                                              'Travel Expenses: 6,000.00',
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              color: AppColor
                                                                  .warning
                                                                  .shade500,
                                                              width:
                                                                  Sizes.size12,
                                                              height: 10,
                                                            ),
                                                            gapWidth8,
                                                            const Text(
                                                              'Payroll Expenses: 12,000.00',
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
                                    ),
                                  ),
                                  Expanded(
                                    child: InvoiceStatusWidget(
                                      invoices: invoices,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(Sizes.size8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Cash Flow',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Text(
                                          '6,000.00',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Text('Current cash balance'),
                                        gapWidth8,
                                        Expanded(
                                          child: Chart(
                                            padding: (_) =>
                                                const EdgeInsets.fromLTRB(
                                                    40, 5, 10, 40),
                                            data: adjustData,
                                            variables: {
                                              'index': Variable(
                                                accessor: (Map map) =>
                                                    map['index'].toString(),
                                              ),
                                              'type': Variable(
                                                accessor: (Map map) =>
                                                    map['type'] as String,
                                              ),
                                              'value': Variable(
                                                accessor: (Map map) =>
                                                    map['value'] as double,
                                              ),
                                            },
                                            marks: [
                                              IntervalMark(
                                                position: Varset('index') *
                                                    Varset('value') /
                                                    Varset('type'),
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
                                              horizontalRangeUpdater:
                                                  Defaults.horizontalRangeEvent,
                                            ),
                                            axes: [
                                              Defaults.horizontalAxis
                                                ..tickLine = TickLine(),
                                              Defaults.verticalAxis,
                                            ],
                                            selections: {
                                              'tap': PointSelection(
                                                variable: 'index',
                                              )
                                            },
                                            tooltip:
                                                TooltipGuide(multiTuples: true),
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
                                                  const Text('Money in'),
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
                                                  const Text('Money out'),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        FinanceExpensesOverviewView(
                          expenses: expenses,
                          onPaid: (value) {},
                          onCancel: (value) {},
                        ),
                        InvoiceTableWidget(
                          invoices: invoices,
                          onPaid: (invoice) {
                            bloc.add(
                              FinanceOverviewEvent.changeInvoiceStatus(
                                invoiceId: invoice.id,
                                status: InvoiceStatusEnums.paid,
                              ),
                            );
                          },
                          onCancel: (invoice) {
                            bloc.add(
                              FinanceOverviewEvent.changeInvoiceStatus(
                                invoiceId: invoice.id,
                                status: InvoiceStatusEnums.cancelled,
                              ),
                            );
                          },
                        ),
                      ];
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

const adjustData = [
  {"type": "Money in", "index": 'January', "value": 12000.00},
  {"type": "Money in", "index": 'February', "value": 10000.00},
  {"type": "Money in", "index": 'March', "value": 8000.00},
  {"type": "Money in", "index": 'April', "value": 11000.00},
  {"type": "Money in", "index": 'May', "value": 7500.00},
  {"type": "Money in", "index": 'June', "value": 5300.00},
  {"type": "Money in", "index": 'July', "value": 5500.00},
  {"type": "Money out", "index": 'January', "value": 8000.00},
  {"type": "Money out", "index": 'February', "value": 8000.00},
  {"type": "Money out", "index": 'March', "value": 8000.00},
  {"type": "Money out", "index": 'April', "value": 8000.00},
  {"type": "Money out", "index": 'May', "value": 8000.00},
  {"type": "Money out", "index": 'June', "value": 8000.00},
  {"type": "Money out", "index": 'July', "value": 12000.00},
];
