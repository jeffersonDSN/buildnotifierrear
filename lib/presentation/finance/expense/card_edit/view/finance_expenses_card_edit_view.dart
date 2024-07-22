import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/finance/expense/card_edit/bloc/finance_expense_card_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/expense/widget/credit_card_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpensesCardEditView extends StatelessWidget {
  final CrudType crudType;

  const FinanceExpensesCardEditView({
    super.key,
    required this.crudType,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<FinanceExpenseCardEditBloc>(context);

    bloc.add(
      FinanceExpenseCardEditEvent.load(
        crudType: crudType,
      ),
    );

    return BlocBuilder<FinanceExpenseCardEditBloc, FinanceExpenseCardEditState>(
      bloc: bloc,
      builder: (context, state) {
        return AlertDialog(
          backgroundColor: AppColor.lightColor,
          title: Text(
            context.tr.newCreditCard,
            style: const TextStyle(
              color: AppColor.primaryColorSwatch,
            ),
          ),
          content: SizedBox(
            width: Sizes.size360,
            height: Sizes.size600,
            child: state.maybeWhen(
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loaded: (crudType, card) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    CreditCardWidget(
                      bankName: card.bankName,
                      cardNumber: '**** **** **** ${card.number}',
                      cardHolderName: card.name,
                      expirationDate:
                          card.dueDay != null ? card.dueDay.toString() : '',
                    ),
                    gapHeight16,
                    BaseTextFormField(
                      label: context.tr.bankName,
                      onChanged: (value) {
                        bloc.add(
                          FinanceExpenseCardEditEvent.changeBankName(
                            bankName: value,
                          ),
                        );
                      },
                    ),
                    gapHeight8,
                    Text(
                      context.tr.number,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            '**** ',
                            style: TextStyle(
                              fontSize: 24,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '**** ',
                            style: TextStyle(
                              fontSize: 24,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '**** ',
                            style: TextStyle(
                              fontSize: 24,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            onChanged: (value) {
                              bloc.add(
                                FinanceExpenseCardEditEvent.changeNumber(
                                  number: value,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    gapHeight16,
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: BaseTextFormField(
                            label: context.tr.name,
                            onChanged: (value) {
                              bloc.add(
                                FinanceExpenseCardEditEvent.changeName(
                                  name: value,
                                ),
                              );
                            },
                          ),
                        ),
                        gapWidth16,
                        Expanded(
                          flex: 1,
                          child: BaseTextFormField(
                            label: context.tr.dueDate,
                            onChanged: (value) {
                              bloc.add(
                                FinanceExpenseCardEditEvent.changeDueDay(
                                  dueDay: int.tryParse(value) ?? 1,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
          actions: [
            FilledButton.icon(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  AppColor.warning,
                ),
              ),
              label: Text(context.tr.close),
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            if (state.isLoaded)
              FilledButton.icon(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    AppColor.success,
                  ),
                ),
                label: Text(context.tr.save),
                icon: const Icon(Icons.check),
                onPressed: () {
                  bloc.add(
                    FinanceExpenseCardEditEvent.save(
                      callBack: (card) async {
                        Navigator.pop(context, card);
                      },
                    ),
                  );
                },
              )
          ],
        );
      },
    );
  }
}
