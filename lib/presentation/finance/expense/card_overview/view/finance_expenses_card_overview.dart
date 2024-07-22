import 'package:buildnotifierrear/domain/entities/card/payment_card.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/finance/expense/card_edit/finance_expense_card_edit.dart';
import 'package:buildnotifierrear/presentation/finance/expense/card_overview/bloc/finance_expense_card_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/expense/widget/credit_card_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpensesCardOverview extends StatelessWidget {
  const FinanceExpensesCardOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<FinanceExpenseCardOverviewBloc>(context);

    bloc.add(
      const FinanceExpenseCardOverviewEvent.load(),
    );

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.size16),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(Sizes.size16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.tr.creditCard,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FilledButton.icon(
                      icon: const Icon(Icons.add),
                      label: Text(
                        context.tr.newCreditCard,
                      ),
                      onPressed: () async {
                        var paymentCard = await showDialog<PaymentCard?>(
                          context: context,
                          builder: (context) {
                            return const FinanceExpenseCardEdit();
                          },
                        );

                        if (paymentCard != null) {
                          bloc.add(
                            FinanceExpenseCardOverviewEvent.addCard(
                              paymentCard: paymentCard,
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
                const Divider(),
                Expanded(
                  child: BlocBuilder<FinanceExpenseCardOverviewBloc,
                      FinanceExpenseCardOverviewState>(
                    bloc: bloc,
                    builder: (context, state) {
                      return state.when(
                        init: () => Container(),
                        loading: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        loaded: (cards) {
                          return ListView.builder(
                            itemCount: cards.length,
                            itemBuilder: (context, index) {
                              var card = cards[index];

                              return CreditCardWidget(
                                bankName: card.bankName,
                                cardHolderName: card.name,
                                cardNumber: '**** **** **** ${card.number}',
                                expirationDate: card.dueDay.toString(),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
