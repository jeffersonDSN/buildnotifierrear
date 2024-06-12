import 'package:buildnotifierrear/domain/controllers/appointment_controller.dart';
import 'package:buildnotifierrear/domain/controllers/period_controller.dart';
import 'package:buildnotifierrear/domain/controllers/timecards_controller.dart';
import 'package:buildnotifierrear/domain/controllers/users_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'users_overview_bloc.freezed.dart';
part 'users_overview_event.dart';
part 'users_overview_state.dart';

class UsersOverviewBloc extends Bloc<UsersOverviewEvent, UsersOverviewState> {
  UsersOverviewBloc({
    required UsersController controller,
    required TimecardsController timecardsController,
    required AppointmentController appointmentController,
    required PeriodController periodController,
  }) : super(const UsersOverviewState.empty()) {
    on<UsersOverviewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const UsersOverviewState.loading());

          var result = await Future.wait([
            controller.getAll(),
            periodController.getPeriods(),
          ]);

          var users = result[0] as List<User>;
          var periods = result[1] as List<Period>;

          emit(
            UsersOverviewState.loaded(
              users: users,
              timecardsOfselectedUser: [],
              periods: periods,
              selectedPeriod: periods[0],
              timecardsState: const DependenteStateType.listing(),
              selectedDay: DateTime.now(),
              appoitmentOfSelecedDay: [],
              appoitmentCardsState: const DependenteStateType.listing(),
            ),
          );

          if (users.isNotEmpty) {
            add(
              UsersOverviewEvent.changeselectedUser(
                selectedUser: users[0],
              ),
            );
          }
        },
        changeselectedUser: (selectedUser) async {
          emit(
            state.asLoaded.copyWith(
              selectedUser: selectedUser,
              timecardsState: const DependenteStateType.loading(),
              appoitmentCardsState: const DependenteStateType.loading(),
            ),
          );

          var result = await Future.wait([
            timecardsController.getAllOfPeriod(
              selectedUser.id,
              state.asLoaded.selectedPeriod,
            ),
            appointmentController.getByDayAndUser(
              state.asLoaded.selectedDay,
              selectedUser.id,
            ),
          ]);

          emit(
            state.asLoaded.copyWith(
              timecardsOfselectedUser: result[0] as List<Timecard>,
              appoitmentOfSelecedDay: result[1] as List<Appointment>,
              timecardsState: const DependenteStateType.listing(),
              appoitmentCardsState: const DependenteStateType.listing(),
            ),
          );
        },
        updateTimecardState: (timecardsState) {
          emit(
            state.asLoaded.copyWith(
              timecardsState: timecardsState,
            ),
          );
        },
        updateSelectedDay: (selectedDay) async {
          emit(
            state.asLoaded.copyWith(
              selectedDay: selectedDay,
              appoitmentCardsState: const DependenteStateType.loading(),
            ),
          );

          var appointment = await appointmentController.getByDayAndUser(
            selectedDay,
            state.asLoaded.selectedUser!.id,
          );

          emit(
            state.asLoaded.copyWith(
              selectedDay: selectedDay,
              appoitmentOfSelecedDay: appointment,
              appoitmentCardsState: const DependenteStateType.listing(),
            ),
          );
        },
        changeSelectedPeriod: (selectedPeriod) async {
          emit(
            state.asLoaded.copyWith(
              selectedPeriod: selectedPeriod,
              timecardsState: const DependenteStateType.loading(),
            ),
          );

          var periods = await timecardsController.getAllOfPeriod(
            state.asLoaded.selectedUser!.id,
            selectedPeriod,
          );

          emit(
            state.asLoaded.copyWith(
              timecardsOfselectedUser: periods,
              timecardsState: const DependenteStateType.listing(),
            ),
          );
        },
        deleteAppointment: (appointmentId) async {
          await appointmentController.delete(appointmentId);

          add(
            UsersOverviewEvent.updateSelectedDay(
              selectedDay: state.asLoaded.selectedDay,
            ),
          );
        },
      );
    });
  }
}
