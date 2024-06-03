part of 'users_overview_bloc.dart';

@freezed
class UsersOverviewEvent with _$UsersOverviewEvent {
  const factory UsersOverviewEvent.load() = UsersOverviewEventLoad;

  const factory UsersOverviewEvent.changeUserSelected({
    required User userSelected,
  }) = UsersOverviewEventChangeUserSelected;

  const factory UsersOverviewEvent.updateTimeCardState({
    required DependenteStateType timeCardsState,
  }) = UsersOverviewEventUpdateTimeCardState;
}
