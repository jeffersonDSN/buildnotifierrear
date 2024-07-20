import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/invoices_controller.dart';
import 'package:buildnotifierrear/domain/entities/client/client.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_invoice_edit_bloc.freezed.dart';
part 'finance_invoice_edit_event.dart';
part 'finance_invoice_edit_state.dart';

class FinanceInvoiceEditBloc
    extends Bloc<FinanceInvoiceEditEvent, FinanceInvoiceEditState> {
  FinanceInvoiceEditBloc({
    required InvoicesController controller,
    required CRUDController<Client> clientController,
  }) : super(const FinanceInvoiceEditState.init()) {
    on<FinanceInvoiceEditEvent>((event, emit) async {
      await event.when(
        load: (crudType) async {
          emit(
            FinanceInvoiceEditState.loading(
              crudType: crudType,
            ),
          );

          var result = await Future.wait([
            crudType.when(
              create: () async {
                return Invoice(
                  id: await controller.generateInvoiceNumber(),
                );
              },
              update: (id) async {
                return controller.getById(id);
              },
            ),
            clientController.getAll(),
          ]);

          emit(
            FinanceInvoiceEditState.loaded(
              crudType: crudType,
              invoice: result[0] as Invoice,
              clients: result[1] as List<Client>,
            ),
          );
        },
        changeDate: (date) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              invoice: lastState.invoice.copyWith(
                dueDate: date,
              ),
            ),
          );
        },
        changeClient: (clientId) {
          var lastState = state.asLoaded;
          var client =
              lastState.clients.where((client) => client.id == clientId).first;

          emit(
            lastState.copyWith(
              invoice: lastState.invoice.copyWith(
                clientId: client.id,
                clientFirstName: client.firstName,
                clientlastName: client.lastName,
                clientAddress: client.address,
                clientAddress2: client.address2,
                clientCity: client.city,
                clientState: client.state,
                clientZipCode: client.zipCode,
              ),
            ),
          );
        },
        addItems: (invoiceItems) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              invoice: lastState.invoice.copyWith(
                items: [
                  ...lastState.invoice.items,
                  ...invoiceItems,
                ],
              ),
            ),
          );
        },
        changeCustomerMessage: (message) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              invoice: lastState.invoice.copyWith(
                customerMessage: message,
              ),
            ),
          );
        },
        save: (callback) async {
          var lastState = state.asLoaded;

          await lastState.crudType.when(
            create: () async {
              await controller.create(lastState.invoice);
            },
            update: (id) async {
              await controller.update(lastState.invoice);
            },
          );

          callback.call();
        },
      );
    });
  }
}
