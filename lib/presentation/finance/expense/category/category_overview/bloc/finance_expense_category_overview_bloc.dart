import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/controllers/expense_categories_controller.dart';
import 'package:buildnotifierrear/domain/entities/expense_category/expense_category.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_expense_category_overview_bloc.freezed.dart';
part 'finance_expense_category_overview_event.dart';
part 'finance_expense_category_overview_state.dart';

class FinanceExpenseCategoryOverviewBloc extends Bloc<
    FinanceExpenseCategoryOverviewEvent, FinanceExpenseCategoryOverviewState> {
  FinanceExpenseCategoryOverviewBloc({
    required ExpenseCategoriesController controller,
  }) : super(const FinanceExpenseCategoryOverviewState.init()) {
    on<FinanceExpenseCategoryOverviewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(
            const FinanceExpenseCategoryOverviewState.loading(),
          );

          var categories = await controller.getAll();

          emit(
            FinanceExpenseCategoryOverviewState.loaded(
              categories: categories,
            ),
          );
        },
        addCategory: (category) {
          var lastState = state.asLoaded;

          emit(
            lastState.copyWith(
              categories: [...lastState.categories, category],
            ),
          );
        },
        editCategory: (category) {},
      );
    });
  }
}
