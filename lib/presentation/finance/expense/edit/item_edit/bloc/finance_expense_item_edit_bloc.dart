import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_expense_item_edit_bloc.freezed.dart';
part 'finance_expense_item_edit_event.dart';
part 'finance_expense_item_edit_state.dart';

class FinanceExpenseItemEditBloc
    extends Bloc<FinanceExpenseItemEditEvent, FinanceExpenseItemEditState> {
  FinanceExpenseItemEditBloc()
      : super(const FinanceExpenseItemEditState.init()) {
    on<FinanceExpenseItemEditEvent>((event, emit) async {
      await event.when(
        load: (item) async {
          emit(
            FinanceExpenseItemEditState.loaded(
              item: item ?? ExpenseItem(),
            ),
          );
        },
        changeProductService: (productService) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              item: lastState.item.copyWith(
                productService: productService,
              ),
            ),
          );
        },
        changeDescription: (description) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              item: lastState.item.copyWith(
                description: description,
              ),
            ),
          );
        },
        changeQtyHrs: (qtyHrs) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              item: lastState.item.copyWith(
                qtyHrs: qtyHrs,
                amount: lastState.item.rate * qtyHrs,
              ),
            ),
          );
        },
        changeRate: (rate) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              item: lastState.item.copyWith(
                rate: rate,
                amount: rate * lastState.item.qtyHrs,
              ),
            ),
          );
        },
      );
    });
  }
}
