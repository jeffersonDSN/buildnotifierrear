part of 'users_overview_bloc.dart';

@freezed
class UsersOverviewState with _$UsersOverviewState {
  const factory UsersOverviewState.empty() = UsersOverviewStateEmpty;
  const factory UsersOverviewState.loading() = UsersOverviewStateLoading;
  const factory UsersOverviewState.loaded({
    required List<User> users,
    User? userSelected,
    required List<TimeCard> timeCardsOfUserSelected,
    required DependenteStateType timeCardsState,
  }) = UsersOverviewStateLoaded;
}

extension OnUsersOverviewState on UsersOverviewState {
  UsersOverviewStateEmpty get asEmpty => this as UsersOverviewStateEmpty;
  UsersOverviewStateLoading get asLoading => this as UsersOverviewStateLoading;
  UsersOverviewStateLoaded get asLoaded => this as UsersOverviewStateLoaded;
}
