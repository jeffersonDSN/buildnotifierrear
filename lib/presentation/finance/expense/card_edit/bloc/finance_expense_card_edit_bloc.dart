import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/card/payment_card.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_expense_card_edit_bloc.freezed.dart';
part 'finance_expense_card_edit_event.dart';
part 'finance_expense_card_edit_state.dart';

class FinanceExpenseCardEditBloc
    extends Bloc<FinanceExpenseCardEditEvent, FinanceExpenseCardEditState> {
  FinanceExpenseCardEditBloc({
    required CRUDController<PaymentCard> controller,
  }) : super(const FinanceExpenseCardEditState.init()) {
    on<FinanceExpenseCardEditEvent>((event, emit) async {
      await event.when(
        load: (crudType) async {
          emit(
            FinanceExpenseCardEditState.loading(
              crudType: crudType,
            ),
          );

          var paymentCards = await crudType.when(
            create: () async {
              return PaymentCard();
            },
            update: (id) async {
              return controller.getById(id);
            },
          );

          emit(
            FinanceExpenseCardEditState.loaded(
              crudType: crudType,
              card: paymentCards,
            ),
          );
        },
        changeBankName: (bankName) {
          var lasState = state.asLoaded;

          emit(
            lasState.copyWith(
              card: lasState.card.copyWith(
                bankName: bankName,
              ),
            ),
          );
        },
        changeNumber: (number) {
          var lasState = state.asLoaded;

          emit(
            lasState.copyWith(
              card: lasState.card.copyWith(
                number: number,
              ),
            ),
          );
        },
        changeName: (name) {
          var lasState = state.asLoaded;

          emit(
            lasState.copyWith(
              card: lasState.card.copyWith(
                name: name,
              ),
            ),
          );
        },
        changeDueDay: (dueDay) {
          var lasState = state.asLoaded;

          emit(
            lasState.copyWith(
              card: lasState.card.copyWith(
                dueDay: dueDay,
              ),
            ),
          );
        },
        save: (callBack) async {
          var lasState = state.asLoaded;

          var id = await lasState.crudType.when(
            create: () async {
              return controller.create(lasState.card).then(
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
              await controller.update(lasState.card);
              return lasState.card.id;
            },
          );

          callBack.call(
            lasState.card.copyWith(id: id),
          );
        },
      );
    });
  }
}
