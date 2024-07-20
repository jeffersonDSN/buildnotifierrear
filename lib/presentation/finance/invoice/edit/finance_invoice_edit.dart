import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/invoices_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/infrastructure/firestore/clients_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/invoices_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/invoice/edit/bloc/finance_invoice_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/invoice/edit/view/finance_invoice_edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceInvoiceEdit extends IView {
  final CrudType? crudType;
  const FinanceInvoiceEdit({
    super.key,
    this.crudType,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => FinanceInvoiceEditBloc(
        controller: InvoicesController(
          repository: InvoicesFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
        clientController: CRUDController(
          repository: ClientsFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: FinanceInvoiceEditView(
        crudType: crudType ?? const CrudType.create(),
      ),
    );
  }
}
