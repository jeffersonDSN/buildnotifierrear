import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/expense_category/expense_category.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_expense_category_edit_bloc.freezed.dart';
part 'finance_expense_category_edit_event.dart';
part 'finance_expense_category_edit_state.dart';

class FinanceExpenseCategoryEditBloc extends Bloc<
    FinanceExpenseCategoryEditEvent, FinanceExpenseCategoryEditState> {
  FinanceExpenseCategoryEditBloc({
    required CRUDController<ExpenseCategory> controller,
  }) : super(const FinanceExpenseCategoryEditState.init()) {
    on<FinanceExpenseCategoryEditEvent>((event, emit) async {
      await event.when(
        load: (crudType) async {
          emit(
            FinanceExpenseCategoryEditState.loading(
              crudType: crudType,
            ),
          );

          var category = await crudType.when(
            create: () async {
              return ExpenseCategory();
            },
            update: (id) async {
              return controller.getById(id);
            },
          );

          emit(
            FinanceExpenseCategoryEditState.loaded(
              crudType: crudType,
              category: category,
            ),
          );
        },
        changeTitle: (title) {
          var lasState = state.asLoaded;

          emit(
            lasState.copyWith(
              category: lasState.category.copyWith(
                title: title,
              ),
            ),
          );
        },
        save: (callBack) async {
          var lasState = state.asLoaded;

          var id = await lasState.crudType.when(
            create: () async {
              return controller.create(lasState.category).then(
                    (either) => either.fold(
                      (error) {
                        return '';
                      },
                      (id) {
                        return id;
                      },
                    ),
                  );
            },
            update: (id) async {
              await controller.update(lasState.category);
              return lasState.category.id;
            },
          );

          callBack.call(
            lasState.category.copyWith(id: id),
          );
        },
      );
    });
  }
}
