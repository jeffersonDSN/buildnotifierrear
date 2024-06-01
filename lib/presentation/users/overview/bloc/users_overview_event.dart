part of 'users_overview_bloc.dart';

@freezed
class UsersOverviewEvent with _$UsersOverviewEvent {
  const factory UsersOverviewEvent.load() = UsersOverviewEventLoad;
}
