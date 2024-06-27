import 'package:buildnotifierrear/domain/controllers/employees_controller.dart';
import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'employees_overview_bloc.freezed.dart';
part 'employees_overview_event.dart';
part 'employees_overview_state.dart';

class EmployeesOverviewBloc
    extends Bloc<EmployeesOverviewEvent, EmployeesOverviewState> {
  EmployeesOverviewBloc({required EmployeesController controller})
      : super(const EmployeesOverviewState.empty()) {
    on<EmployeesOverviewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const EmployeesOverviewState.loading());

          var employees = await controller.getAll();

          emit(EmployeesOverviewState.loaded(employees: employees));
        },
      );
    });
  }
}
