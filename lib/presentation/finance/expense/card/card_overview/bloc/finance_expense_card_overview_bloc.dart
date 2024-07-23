import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/card/payment_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_expense_card_overview_bloc.freezed.dart';
part 'finance_expense_card_overview_event.dart';
part 'finance_expense_card_overview_state.dart';

class FinanceExpenseCardOverviewBloc extends Bloc<
    FinanceExpenseCardOverviewEvent, FinanceExpenseCardOverviewState> {
  FinanceExpenseCardOverviewBloc({
    required CRUDController<PaymentCard> controller,
  }) : super(const FinanceExpenseCardOverviewState.init()) {
    on<FinanceExpenseCardOverviewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(
            const FinanceExpenseCardOverviewState.loading(),
          );

          var paymentCards = await controller.getAll();

          emit(
            FinanceExpenseCardOverviewState.loaded(
              cards: paymentCards,
            ),
          );
        },
        addCard: (paymentCard) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              cards: [...lastState.cards, paymentCard],
            ),
          );
        },
        editCard: (paymentCard) {},
      );
    });
  }
}
