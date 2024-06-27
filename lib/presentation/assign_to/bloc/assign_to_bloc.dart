import 'package:buildnotifierrear/domain/controllers/employees_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'assign_to_bloc.freezed.dart';
part 'assign_to_event.dart';
part 'assign_to_state.dart';

class AssignToBloc extends Bloc<AssignToEvent, AssignToState> {
  AssignToBloc({
    required EmployeesController controller,
  }) : super(
          const AssignToState.empty(),
        ) {
    on<AssignToEvent>((event, emit) async {
      await event.when(
        load: (assignTo) async {
          emit(
            AssignToState.loading(
              assignTo: assignTo,
            ),
          );

          var users = await controller.getAll();

          emit(
            AssignToState.loaded(
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
