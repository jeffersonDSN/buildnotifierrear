import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/overview/view/finance_overview_view.dart';
import 'package:flutter/material.dart';

class FinanceOverview extends IView {
  const FinanceOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return const FinanceOverviewView();

    // return const FinanceInvoiceEdit(
    //   crudType: CrudType.create(),
    // );
  }
}
