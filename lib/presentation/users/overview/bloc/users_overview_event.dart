part of 'users_overview_bloc.dart';

@freezed
class UsersOverviewEvent with _$UsersOverviewEvent {
  const factory UsersOverviewEvent.load() = UsersOverviewEventLoad;

  const factory UsersOverviewEvent.changeselectedUser({
    required User selectedUser,
  }) = UsersOverviewEventChangeselectedUser;

  const factory UsersOverviewEvent.updateTimeCardState({
    required DependenteStateType timeCardsState,
  }) = UsersOverviewEventUpdateTimeCardState;

  const factory UsersOverviewEvent.updateSelectedDay({
    required DateTime selectedDay,
  }) = UsersOverviewEventUpdateSelectedDay;
}
