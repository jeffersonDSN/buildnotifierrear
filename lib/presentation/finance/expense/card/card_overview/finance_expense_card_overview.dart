import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/card/payment_card.dart';
import 'package:buildnotifierrear/infrastructure/firestore/payment_card_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/expense/card/card_overview/bloc/finance_expense_card_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/expense/card/card_overview/view/finance_expenses_card_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpenseCardOverview extends IView {
  const FinanceExpenseCardOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => FinanceExpenseCardOverviewBloc(
        controller: CRUDController<PaymentCard>(
          repository: PaymentCardFirestoreRepository(tenantId: tenantId),
        ),
      ),
      child: const FinanceExpensesCardOverview(),
    );
  }
}
