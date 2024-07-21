import 'package:buildnotifierrear/domain/controllers/invoices_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/invoices_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/overview/bloc/finance_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/overview/view/finance_overview_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceOverview extends IView {
  const FinanceOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => FinanceOverviewBloc(
        invoicesController: InvoicesController(
          repository: InvoicesFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: const FinanceOverviewView(),
    );
  }
}
