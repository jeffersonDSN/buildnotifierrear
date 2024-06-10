import 'package:buildnotifierrear/domain/controllers/users_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'schedule_edit_assign_to_bloc.freezed.dart';
part 'schedule_edit_assign_to_event.dart';
part 'schedule_edit_assign_to_state.dart';

class ScheduleEditAssignToBloc
    extends Bloc<ScheduleEditAssignToEvent, ScheduleEditAssignToState> {
  ScheduleEditAssignToBloc({
    required UsersController controller,
  }) : super(
          const ScheduleEditAssignToState.empty(),
        ) {
    on<ScheduleEditAssignToEvent>((event, emit) async {
      await event.when(
        load: (assignTo) async {
          emit(
            ScheduleEditAssignToState.loading(
              assignTo: assignTo,
            ),
          );

          var users = await controller.getAll();

          emit(
            ScheduleEditAssignToState.loaded(
              users: users,
              assignTo: assignTo,
            ),
          );
        },
        check: (check, user) {
          if (check) {
            emit(
              state.asLoaded.copyWith(
                assignTo: [
                  ...state.asLoaded.assignTo,
                  AppointmentUser(
                    id: user.id,
                    firstName: user.firstName,
                    lastName: user.lastName,
                  ),
                ],
              ),
            );
          } else {
            var list = [...state.asLoaded.assignTo];
            var result = list.where(
              (element) => element.id == user.id,
            );

            list.remove(result.first);

            emit(
              state.asLoaded.copyWith(
                assignTo: list,
              ),
            );
          }
        },
      );
    });
  }
}
