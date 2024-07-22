import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/finance/expense/category_edit/bloc/finance_expense_category_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpensesCategoryEditView extends StatelessWidget {
  final CrudType crudType;

  const FinanceExpensesCategoryEditView({
    super.key,
    required this.crudType,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<FinanceExpenseCategoryEditBloc>(context);

    bloc.add(
      FinanceExpenseCategoryEditEvent.load(
        crudType: crudType,
      ),
    );

    return BlocBuilder<FinanceExpenseCategoryEditBloc,
        FinanceExpenseCategoryEditState>(
      bloc: bloc,
      builder: (context, state) {
        return AlertDialog(
          backgroundColor: AppColor.lightColor,
          title: Text(
            context.tr.newCategory,
            style: const TextStyle(
              color: AppColor.primaryColorSwatch,
            ),
          ),
          content: SizedBox(
            child: state.maybeWhen(
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loaded: (crudType, card) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    gapHeight16,
                    BaseTextFormField(
                      label: context.tr.title,
                      onChanged: (value) {
                        bloc.add(
                          FinanceExpenseCategoryEditEvent.changeTitle(
                            title: value,
                          ),
                        );
                      },
                    ),
                    gapHeight16,
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
                    FinanceExpenseCategoryEditEvent.save(
                      callBack: (category) async {
                        Navigator.pop(context, category);
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
