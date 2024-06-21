part of 'timecards_bloc.dart';

@freezed
class TimecardsOverviewEvent with _$TimecardsOverviewEvent {
  const factory TimecardsOverviewEvent.load({
    required String employeeId,
  }) = TimecardsOverviewEventLoad;

  const factory TimecardsOverviewEvent.loadUsers({
    required List<String> userIds,
  }) = TimecardsOverviewEventLoadUsers;

  const factory TimecardsOverviewEvent.changeSelectedPeriod({
    required Period period,
  }) = TimecardsOverviewEventChangeSelectedPeriod;
}
