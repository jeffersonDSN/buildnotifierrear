part of 'users_overview_bloc.dart';

@freezed
class UsersOverviewState with _$UsersOverviewState {
  const factory UsersOverviewState.empty() = UsersOverviewStateEmpty;
  const factory UsersOverviewState.loading() = UsersOverviewStateLoading;
  const factory UsersOverviewState.loaded({
    required List<User> users,
  }) = UsersOverviewStateLoaded;
}
