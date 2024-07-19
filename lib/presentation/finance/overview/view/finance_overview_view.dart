import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class FinanceOverviewView extends IView {
  const FinanceOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
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
                  width: Sizes.size440,
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
                                Icon(Icons.dashboard_outlined),
                                gapWidth4,
                                Text('Overview'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.payments_outlined),
                                gapWidth4,
                                Text('Expenses'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.request_quote_outlined),
                                gapWidth4,
                                Text('Invoices'),
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
                          label: const Text('New expenses'),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(Sizes.size8),
                        child: FilledButton.icon(
                          icon: const Icon(Icons.add),
                          label: const Text('New invoices'),
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
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
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
                                  padding: const EdgeInsets.all(Sizes.size16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        'Expenses',
                                        style: TextStyle(
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
                                                    'genre': 'Rent & mortgage ',
                                                    'sold': 2500.00,
                                                  },
                                                  {
                                                    'genre': 'Transport',
                                                    'sold': 6000.00,
                                                  },
                                                  {
                                                    'genre': 'Employee',
                                                    'sold': 12000.00,
                                                  },
                                                ],
                                                variables: {
                                                  'genre': Variable(
                                                    accessor: (Map map) =>
                                                        map['genre'] as String,
                                                  ),
                                                  'sold': Variable(
                                                    accessor: (Map map) =>
                                                        map['sold'] as num,
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
                                                    position:
                                                        Varset('percent') /
                                                            Varset('genre'),
                                                    color: ColorEncode(
                                                        variable: 'genre',
                                                        values: [
                                                          AppColor
                                                              .warning.shade400,
                                                          AppColor
                                                              .warning.shade500,
                                                          AppColor
                                                              .warning.shade600,
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
                                                  'tap': PointSelection()
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
                                                          .warning.shade400,
                                                      width: Sizes.size12,
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
                                                          .warning.shade500,
                                                      width: Sizes.size12,
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
                                                          .warning.shade500,
                                                      width: Sizes.size12,
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
                            child: Card(
                              child: SizedBox(
                                height: Sizes.size240,
                                child: Padding(
                                  padding: const EdgeInsets.all(Sizes.size16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        'Invoices',
                                        style: TextStyle(
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
                                                    'genre': 'Overdue ',
                                                    'sold': 5000.00
                                                  },
                                                  {
                                                    'genre': 'Not due yet',
                                                    'sold': 10000.00
                                                  },
                                                  {
                                                    'genre': 'Paid',
                                                    'sold': 5500.00
                                                  },
                                                ],
                                                variables: {
                                                  'genre': Variable(
                                                    accessor: (Map map) =>
                                                        map['genre'] as String,
                                                  ),
                                                  'sold': Variable(
                                                    accessor: (Map map) =>
                                                        map['sold'] as num,
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
                                                    position:
                                                        Varset('percent') /
                                                            Varset('genre'),
                                                    color: ColorEncode(
                                                        variable: 'genre',
                                                        values: [
                                                          AppColor.red,
                                                          AppColor
                                                              .greyColorSwatch,
                                                          AppColor.green,
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
                                                  'tap': PointSelection()
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
                                                      color: AppColor.red,
                                                      width: Sizes.size12,
                                                      height: 10,
                                                    ),
                                                    gapWidth8,
                                                    const Text(
                                                      'Overdue: 5,000.00',
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      color: AppColor
                                                          .greyColorSwatch,
                                                      width: Sizes.size12,
                                                      height: 10,
                                                    ),
                                                    gapWidth8,
                                                    const Text(
                                                      'Not due yet: 10,000.00',
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
                                                    const Text(
                                                      'Paid: 5,500.00',
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
                        ],
                      ),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(Sizes.size8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    padding: (_) => const EdgeInsets.fromLTRB(
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
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(
                      Sizes.size8,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Card(
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
                                columns: const [
                                  DataColumn2(
                                    size: ColumnSize.M,
                                    label: Text('Date'),
                                  ),
                                  DataColumn2(
                                    size: ColumnSize.M,
                                    label: Text('Invoice'),
                                  ),
                                  DataColumn2(
                                    fixedWidth: Sizes.size136,
                                    label: Text('Client'),
                                  ),
                                  DataColumn2(
                                    size: ColumnSize.M,
                                    label: Text('Amount'),
                                  ),
                                  DataColumn2(
                                    size: ColumnSize.M,
                                    label: Text('Balance'),
                                  ),
                                  DataColumn2(
                                    size: ColumnSize.M,
                                    numeric: true,
                                    label: Text('Status'),
                                  ),
                                  DataColumn2(
                                    size: ColumnSize.S,
                                    numeric: true,
                                    label: Text(''),
                                  ),
                                ],
                                rows: invoices.map((invoice) {
                                  return DataRow(
                                    cells: [
                                      DataCell(
                                        Text(
                                          invoice['date'] as String,
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          (invoice['invoice'] as int)
                                              .toString(),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          invoice['client'] as String,
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          (invoice['amount'] as double)
                                              .toString(),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          (invoice['paid'] as double)
                                              .toString(),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          invoice['status'] as String,
                                        ),
                                      ),
                                      DataCell(
                                        PopupMenuButton(
                                          itemBuilder: (context) => [
                                            const PopupMenuItem(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    size: 20,
                                                    color: AppColor.green,
                                                    Icons.shopping_bag_outlined,
                                                  ),
                                                  SizedBox(width: 10),
                                                  Text('Adicionar Pedido'),
                                                ],
                                              ),
                                            ),
                                            PopupMenuItem(
                                                child: const Row(
                                                  children: [
                                                    Icon(
                                                      size: 20,
                                                      color: AppColor.orange,
                                                      Icons.edit_outlined,
                                                    ),
                                                    SizedBox(width: 10),
                                                    Text('Editar'),
                                                  ],
                                                ),
                                                onTap: () {}),
                                            PopupMenuItem(
                                              child: const Row(
                                                children: [
                                                  Icon(
                                                    size: 20,
                                                    color: AppColor.red,
                                                    Icons.delete_outline,
                                                  ),
                                                  SizedBox(width: 10),
                                                  Text('Excluir'),
                                                ],
                                              ),
                                              onTap: () {},
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(
                      Sizes.size8,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Card(
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
                                columns: const [
                                  DataColumn2(
                                    size: ColumnSize.M,
                                    label: Text('Date'),
                                  ),
                                  DataColumn2(
                                    size: ColumnSize.M,
                                    label: Text('Invoice'),
                                  ),
                                  DataColumn2(
                                    fixedWidth: Sizes.size136,
                                    label: Text('Client'),
                                  ),
                                  DataColumn2(
                                    size: ColumnSize.M,
                                    label: Text('Amount'),
                                  ),
                                  DataColumn2(
                                    size: ColumnSize.M,
                                    label: Text('Balance'),
                                  ),
                                  DataColumn2(
                                    size: ColumnSize.M,
                                    numeric: true,
                                    label: Text('Status'),
                                  ),
                                  DataColumn2(
                                    size: ColumnSize.S,
                                    numeric: true,
                                    label: Text(''),
                                  ),
                                ],
                                rows: invoices.map((invoice) {
                                  return DataRow(
                                    cells: [
                                      DataCell(
                                        Text(
                                          invoice['date'] as String,
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          (invoice['invoice'] as int)
                                              .toString(),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          invoice['client'] as String,
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          (invoice['amount'] as double)
                                              .toString(),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          (invoice['paid'] as double)
                                              .toString(),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          invoice['status'] as String,
                                        ),
                                      ),
                                      DataCell(
                                        PopupMenuButton(
                                          itemBuilder: (context) => [
                                            const PopupMenuItem(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    size: 20,
                                                    color: AppColor.green,
                                                    Icons.shopping_bag_outlined,
                                                  ),
                                                  SizedBox(width: 10),
                                                  Text('Adicionar Pedido'),
                                                ],
                                              ),
                                            ),
                                            PopupMenuItem(
                                                child: const Row(
                                                  children: [
                                                    Icon(
                                                      size: 20,
                                                      color: AppColor.orange,
                                                      Icons.edit_outlined,
                                                    ),
                                                    SizedBox(width: 10),
                                                    Text('Editar'),
                                                  ],
                                                ),
                                                onTap: () {}),
                                            PopupMenuItem(
                                              child: const Row(
                                                children: [
                                                  Icon(
                                                    size: 20,
                                                    color: AppColor.red,
                                                    Icons.delete_outline,
                                                  ),
                                                  SizedBox(width: 10),
                                                  Text('Excluir'),
                                                ],
                                              ),
                                              onTap: () {},
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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

const invoices = [
  {
    "date": "07/17/2024",
    "invoice": 1,
    "client": 'Jefferson Pereira',
    "amount": 37000.00,
    "paid": 0,
    "status": 'Sent',
  },
  {
    "date": "07/17/2024",
    "invoice": 2,
    "client": 'Jefferson Pereira',
    "amount": 37000.00,
    "paid": 0,
    "status": 'Sent',
  },
  {
    "date": "07/17/2024",
    "invoice": 3,
    "client": 'Jefferson Pereira',
    "amount": 37000.00,
    "paid": 0,
    "status": 'Sent',
  },
  {
    "date": "07/17/2024",
    "invoice": 4,
    "client": 'Jefferson Pereira',
    "amount": 37000.00,
    "paid": 0,
    "status": 'Sent',
  },
  {
    "date": "07/17/2024",
    "invoice": 5,
    "client": 'Jefferson Pereira',
    "amount": 37000.00,
    "paid": 0,
    "status": 'Sent',
  },
  {
    "date": "07/17/2024",
    "invoice": 6,
    "client": 'Jefferson Pereira',
    "amount": 37000.00,
    "paid": 0,
    "status": 'Sent',
  },
];
