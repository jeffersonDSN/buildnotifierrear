import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/card/payment_card.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/infrastructure/firestore/payment_card_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/expense/card_edit/bloc/finance_expense_card_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/expense/card_edit/view/finance_expenses_card_edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpenseCardEdit extends IView {
  final CrudType? crudType;

  const FinanceExpenseCardEdit({
    super.key,
    this.crudType,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => FinanceExpenseCardEditBloc(
        controller: CRUDController<PaymentCard>(
          repository: PaymentCardFirestoreRepository(tenantId: tenantId),
        ),
      ),
      child: FinanceExpensesCardEditView(
        crudType: crudType ?? const CrudType.create(),
      ),
    );
  }
}
