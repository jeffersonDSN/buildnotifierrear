import 'package:buildnotifierrear/domain/core/utils.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/finance/expense/edit/item_edit/bloc/finance_expense_item_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpenseItemEditView extends StatelessWidget {
  final ExpenseItem? item;

  const FinanceExpenseItemEditView({
    super.key,
    this.item,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<FinanceExpenseItemEditBloc>(context);

    bloc.add(
      FinanceExpenseItemEditEvent.load(
        item: item,
      ),
    );

    return AlertDialog(
      title: Text(context.tr.addItem),
      content: SizedBox(
        width: Sizes.size800,
        height: Sizes.size80,
        child: BlocBuilder<FinanceExpenseItemEditBloc,
            FinanceExpenseItemEditState>(
          bloc: bloc,
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loaded: (item) {
                return Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: BaseTextFormField(
                        initialValue: item.productService,
                        label: '${context.tr.product}/${context.tr.service}',
                        onChanged: (value) {
                          bloc.add(
                            FinanceExpenseItemEditEvent.changeProductService(
                              productService: value,
                            ),
                          );
                        },
                      ),
                    ),
                    gapWidth16,
                    Expanded(
                      flex: 2,
                      child: BaseTextFormField(
                        initialValue: item.description,
                        label: context.tr.description,
                        onChanged: (value) {
                          bloc.add(
                            FinanceExpenseItemEditEvent.changeDescription(
                              description: value,
                            ),
                          );
                        },
                      ),
                    ),
                    gapWidth16,
                    Expanded(
                      flex: 1,
                      child: BaseTextFormField(
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(
                            RegExp(r'^\d+\:?\d{0,2}'),
                          ),
                        ],
                        initialValue: convertHoursToFormattedTime(item.qtyHrs),
                        label: '${context.tr.qty}/${context.tr.hrs}',
                        onChanged: (value) {
                          double hoursMinutes = 0;

                          if (value.isNotEmpty) {
                            int hours = 0;
                            int minutes = 0;

                            if (value.contains(':')) {
                              var result = value.split(':');
                              hours = int.parse(result[0]);
                              minutes = int.tryParse(result[1]) ?? 0;
                            } else {
                              hours = int.parse(value);
                            }

                            hoursMinutes = parseTimeToDouble(hours, minutes);
                          }

                          bloc.add(
                            FinanceExpenseItemEditEvent.changeQtyHrs(
                              qtyHrs: hoursMinutes,
                            ),
                          );
                        },
                      ),
                    ),
                    gapWidth16,
                    Expanded(
                      flex: 1,
                      child: BaseTextFormField(
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(
                            RegExp(r'^\d+\.?\d{0,2}'),
                          ),
                        ],
                        initialValue:
                            item.rate > 0 ? item.rate.toStringAsFixed(2) : '',
                        label: context.tr.rate,
                        onChanged: (value) {
                          bloc.add(
                            FinanceExpenseItemEditEvent.changeRate(
                              rate: double.tryParse(value) ?? 0,
                            ),
                          );
                        },
                      ),
                    ),
                    gapWidth16,
                    Expanded(
                      flex: 1,
                      child: BaseTextFormField(
                        key: Key(item.amount.toString()),
                        initialValue: item.amount.toStringAsFixed(2),
                        label: context.tr.amount,
                        enabled: false,
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
      actions: [
        TextButton(
          child: Text(context.tr.cancel),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FilledButton(
          child: Text(context.tr.submit),
          onPressed: () {
            Navigator.pop(
              context,
              bloc.state.asLoaded.item,
            );
          },
        )
      ],
    );
  }
}
