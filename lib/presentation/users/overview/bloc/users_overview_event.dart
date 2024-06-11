part of 'users_overview_bloc.dart';

@freezed
class UsersOverviewEvent with _$UsersOverviewEvent {
  const factory UsersOverviewEvent.load() = UsersOverviewEventLoad;

  const factory UsersOverviewEvent.changeselectedUser({
    required User selectedUser,
  }) = UsersOverviewEventChangeselectedUser;

  const factory UsersOverviewEvent.updateTimecardState({
    required DependenteStateType timecardsState,
  }) = UsersOverviewEventUpdateTimecardState;

  const factory UsersOverviewEvent.updateSelectedDay({
    required DateTime selectedDay,
  }) = UsersOverviewEventUpdateSelectedDay;

  const factory UsersOverviewEvent.deleteAppointment({
    required String appointmentId,
  }) = UsersOverviewEventDeleteAppointment;
}
