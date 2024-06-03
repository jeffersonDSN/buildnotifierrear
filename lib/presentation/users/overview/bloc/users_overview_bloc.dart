import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/time_cards_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'users_overview_bloc.freezed.dart';
part 'users_overview_event.dart';
part 'users_overview_state.dart';

class UsersOverviewBloc extends Bloc<UsersOverviewEvent, UsersOverviewState> {
  UsersOverviewBloc({
    required CRUDController<User> controller,
    required TimeCardsController timeCardsController,
  }) : super(const UsersOverviewState.empty()) {
    on<UsersOverviewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const UsersOverviewState.loading());

          var users = await controller.getAll();

          emit(
            UsersOverviewState.loaded(
              users: users,
              timeCardsOfUserSelected: [],
              timeCardsState: const DependenteStateType.listing(),
            ),
          );

          if (users.isNotEmpty) {
            add(
              UsersOverviewEvent.changeUserSelected(
                userSelected: users[0],
              ),
            );
          }
        },
        changeUserSelected: (userSelected) async {
          emit(
            state.asLoaded.copyWith(
              userSelected: userSelected,
              timeCardsState: const DependenteStateType.loading(),
            ),
          );

          var timeCards = await timeCardsController.getAllByUserId(
            userSelected.id,
          );

          emit(
            state.asLoaded.copyWith(
              timeCardsOfUserSelected: timeCards,
              timeCardsState: const DependenteStateType.listing(),
            ),
          );
        },
        updateTimeCardState: (timeCardsState) {
          emit(
            state.asLoaded.copyWith(
              timeCardsState: timeCardsState,
            ),
          );
        },
      );
    });
  }
}
