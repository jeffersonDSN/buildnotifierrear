import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/controllers/expenses_controller.dart';
import 'package:buildnotifierrear/domain/controllers/invoices_controller.dart';
import 'package:buildnotifierrear/domain/entities/enums/expense_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_overview_bloc.freezed.dart';
part 'finance_overview_event.dart';
part 'finance_overview_state.dart';

class FinanceOverviewBloc
    extends Bloc<FinanceOverviewEvent, FinanceOverviewState> {
  FinanceOverviewBloc({
    required InvoicesController invoicesController,
    required ExpensesController expensesController,
  }) : super(const FinanceOverviewState.init()) {
    on<FinanceOverviewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(
            const FinanceOverviewState.loading(),
          );

          var result = await Future.wait([
            invoicesController.getAll(),
            expensesController.getAll(),
          ]);

          emit(
            FinanceOverviewState.loaded(
              invoices: result[0] as List<Invoice>,
              expenses: result[1] as List<Expense>,
            ),
          );
        },
        changeInvoiceStatus: (invoiceId, status) async {
          await invoicesController.changeStatus(invoiceId, status);

          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              invoices: lastState.invoices.map((invoice) {
                if (invoice.id == invoiceId) {
                  return invoice.copyWith(
                    status: status,
                    paymentDate: status == InvoiceStatusEnums.paid
                        ? DateTime.now()
                        : null,
                  );
                } else {
                  return invoice;
                }
              }).toList(),
            ),
          );
        },
        changeExpenseStatus: (expenseId, status) async {
          await expensesController.changeStatus(expenseId, status);

          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              expenses: lastState.expenses.map((expense) {
                if (expense.id == expenseId) {
                  return expense.copyWith(
                    status: status,
                    paymentDate: status == ExpenseStatusEnums.paid
                        ? DateTime.now()
                        : null,
                  );
                } else {
                  return expense;
                }
              }).toList(),
            ),
          );
        },
      );
    });
  }
}
