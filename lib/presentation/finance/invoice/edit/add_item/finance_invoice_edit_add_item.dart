import 'package:buildnotifierrear/domain/controllers/activities_controller.dart';
import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/activities_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/projects_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tasks_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/finance/invoice/edit/add_item/bloc/finance_invoice_edit_add_item_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/invoice/edit/add_item/view/finance_invoice_edit_add_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceInvoiceEditAddItem extends IView {
  final String clientId;
  final String invoiceId;

  const FinanceInvoiceEditAddItem({
    super.key,
    required this.clientId,
    required this.invoiceId,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => FinanceInvoiceEditAddItemBloc(
        projectController: ProjectsController(
          repository: ProjectsFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
        tasksController: TasksController(
          repository: TasksFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
        activitiesController: ActivitiesController(
          repository: ActivitiesFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: FinanceInvoiceEditAddItemView(
        clientId: clientId,
        invoiceId: invoiceId,
      ),
    );
  }
}
