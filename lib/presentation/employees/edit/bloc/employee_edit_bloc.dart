import 'package:buildnotifierrear/domain/controllers/states_controller.dart';
import 'package:buildnotifierrear/domain/controllers/employees_controller.dart';
import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/state/state.dart';
import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:flutter/material.dart' hide State;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_edit_bloc.freezed.dart';
part 'employee_edit_event.dart';
part 'employee_edit_state.dart';

class EmployeeEditBloc extends Bloc<EmployeeEditEvent, EmployeeEditState> {
  EmployeeEditBloc({
    required EmployeesController controller,
    required StatesController statesController,
  }) : super(
          const EmployeeEditState.empty(),
        ) {
    on<EmployeeEditEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          emit(const EmployeeEditState.loading());

          var result = await Future.wait([
            type.when(
              create: () async {
                return const Employee();
              },
              update: (id) async {
                return await controller.getById(id);
              },
            ),
            statesController.getAll(),
          ]);

          emit(
            EmployeeEditState.loaded(
              type: type,
              employee: result[0] as Employee,
              states: result[1] as List<State>,
            ),
          );
        },
        changeFirstName: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                firstName: value,
              ),
            ),
          );
        },
        changeMiddleName: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                middleName: value,
              ),
            ),
          );
        },
        changeLastName: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                lastName: value,
              ),
            ),
          );
        },
        changePhoneNumber: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                phoneNumber: value,
              ),
            ),
          );
        },
        changeEmail: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                email: value,
              ),
            ),
          );
        },
        changeAddress: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                address: value,
              ),
            ),
          );
        },
        changeAddress2: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                address2: value,
              ),
            ),
          );
        },
        changeCity: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                city: value,
              ),
            ),
          );
        },
        changeState: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                state: value,
              ),
            ),
          );
        },
        changeZipCode: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                zipCode: value,
              ),
            ),
          );
        },
        changeDepartment: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                department: value,
              ),
            ),
          );
        },
        changePosition: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                position: value,
              ),
            ),
          );
        },
        changeHourlyRate: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                hourlyRate: value,
              ),
            ),
          );
        },
        changeEmployeename: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                userName: value,
              ),
            ),
          );
        },
        changePassword: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                password: value,
              ),
            ),
          );
        },
        changeEmployeeType: (value) {
          emit(
            state.asLoaded.copyWith(
              employee: state.asLoaded.employee.copyWith(
                userType: value,
              ),
            ),
          );
        },
        save: (callback) async {
          await state.asLoaded.type.when(
            create: () {
              return controller.create(state.asLoaded.employee);
            },
            update: (id) {
              return controller.update(
                state.asLoaded.employee,
              );
            },
          ).then(
            (either) => either.fold(
              (error) {
                emit(
                  state.asLoaded.copyWith(
                    error: error,
                  ),
                );
              },
              (response) {
                callback.call();
              },
            ),
          );
        },
      );
    });
  }
}
