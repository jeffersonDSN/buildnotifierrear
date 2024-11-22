import 'package:buildnotifierrear/domain/entities/enums/expense_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/overview/bloc/finance_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/overview/view/finance_expenses_overview_view.dart';
import 'package:buildnotifierrear/presentation/finance/overview/widget/expense_forecast_status_widget.dart';
import 'package:buildnotifierrear/presentation/finance/overview/widget/expenses_cash_flow_widget.dart';
import 'package:buildnotifierrear/presentation/finance/overview/widget/expenses_category_widget.dart';
import 'package:buildnotifierrear/presentation/finance/overview/widget/expenses_status_widget.dart';
import 'package:buildnotifierrear/presentation/finance/overview/widget/income_forecast_status_widget.dart';
import 'package:buildnotifierrear/presentation/finance/overview/widget/invoice_status_widget.dart';
import 'package:buildnotifierrear/presentation/finance/overview/widget/invoice_table_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                                        height: Sizes.size180,
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            Sizes.size16,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                context.tr.invoice,
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
                                        height: Sizes.size180,
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            Sizes.size16,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                context.tr.expense,
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
                              Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                      child: SizedBox(
                                        height: Sizes.size180,
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            Sizes.size16,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                context.tr.forecastedRevenues,
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
                                        height: Sizes.size180,
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            Sizes.size16,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                context.tr.forecastedExpenses,
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
                    loaded: (
                      invoices,
                      expenses,
                      timecards,
                      employees,
                      projects,
                    ) {
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
                                    child: InvoiceStatusWidget(
                                      invoices: invoices,
                                    ),
                                  ),
                                  Expanded(
                                    child: ExpensesStatusWidget(
                                      expenses: expenses,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: IncomeForecastStatusWidget(
                                      invoices: invoices,
                                      projects: projects,
                                    ),
                                  ),
                                  Expanded(
                                    child: ExpenseForecastStatusWidget(
                                      expenses: expenses,
                                      timecards: timecards,
                                      employees: employees,
                                    ),
                                  ),
                                ],
                              ),
                              ExpensesCashFlowWidget(
                                expenses: expenses,
                                invoices: invoices,
                              ),
                            ],
                          ),
                        ),
                        FinanceExpensesOverviewView(
                          expenses: expenses,
                          onRequestApproval: (value) {
                            bloc.add(
                              FinanceOverviewEvent.changeExpenseStatus(
                                expenseId: value.id,
                                status: ExpenseStatusEnums.pending,
                              ),
                            );
                          },
                          onApprove: (value) {
                            bloc.add(
                              FinanceOverviewEvent.changeExpenseStatus(
                                expenseId: value.id,
                                status: ExpenseStatusEnums.approved,
                              ),
                            );
                          },
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
                          onPaid: (value) {
                            bloc.add(
                              FinanceOverviewEvent.changeExpenseStatus(
                                expenseId: value.id,
                                status: ExpenseStatusEnums.paid,
                              ),
                            );
                          },
                          onCancel: (value) {
                            bloc.add(
                              FinanceOverviewEvent.changeExpenseStatus(
                                expenseId: value.id,
                                status: ExpenseStatusEnums.cancelled,
                              ),
                            );
                          },
                        ),
                        InvoiceTableWidget(
                          invoices: invoices,
                          onShareWithClient: (invoice) {
                            bloc.add(
                              FinanceOverviewEvent.changeInvoiceStatus(
                                invoiceId: invoice.id,
                                status: InvoiceStatusEnums.sent,
                              ),
                            );
                          },
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
