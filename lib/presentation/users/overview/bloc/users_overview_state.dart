part of 'users_overview_bloc.dart';

@freezed
class UsersOverviewState with _$UsersOverviewState {
  const factory UsersOverviewState.empty() = UsersOverviewStateEmpty;
  const factory UsersOverviewState.loading() = UsersOverviewStateLoading;
  const factory UsersOverviewState.loaded({
    required List<User> users,
    User? selectedUser,
    required List<TimeCard> timeCardsOfselectedUser,
    required DependenteStateType timeCardsState,
    required DateTime selectedDay,
    required List<Appointment> appoitmentOfSelecedDayAndUser,
    required DependenteStateType appoitmentCardsState,
  }) = UsersOverviewStateLoaded;
}

extension OnUsersOverviewState on UsersOverviewState {
  UsersOverviewStateEmpty get asEmpty => this as UsersOverviewStateEmpty;
  UsersOverviewStateLoading get asLoading => this as UsersOverviewStateLoading;
  UsersOverviewStateLoaded get asLoaded => this as UsersOverviewStateLoaded;
}
