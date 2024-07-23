import 'package:buildnotifierrear/domain/entities/expense_category/expense_category.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/finance/expense/category/category_edit/finance_expense_category_edit.dart';
import 'package:buildnotifierrear/presentation/finance/expense/category/category_overview/bloc/finance_expense_category_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpensesCategoryOverview extends StatelessWidget {
  const FinanceExpensesCategoryOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<FinanceExpenseCategoryOverviewBloc>(context);

    bloc.add(
      const FinanceExpenseCategoryOverviewEvent.load(),
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
                      context.tr.categories,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FilledButton.icon(
                      icon: const Icon(Icons.add),
                      label: Text(
                        context.tr.newCategory,
                      ),
                      onPressed: () async {
                        var category = await showDialog<ExpenseCategory?>(
                          context: context,
                          builder: (context) {
                            return const FinanceExpenseCategorydEdit();
                          },
                        );

                        if (category != null) {
                          bloc.add(
                            FinanceExpenseCategoryOverviewEvent.addCategory(
                              category: category,
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
                const Divider(),
                Expanded(
                  child: BlocBuilder<FinanceExpenseCategoryOverviewBloc,
                      FinanceExpenseCategoryOverviewState>(
                    bloc: bloc,
                    builder: (context, state) {
                      return state.when(
                        init: () => Container(),
                        loading: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        loaded: (categories) {
                          return ListView.separated(
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              var category = categories[index];

                              return ListTile(
                                title: Text(category.title),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const Divider();
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
