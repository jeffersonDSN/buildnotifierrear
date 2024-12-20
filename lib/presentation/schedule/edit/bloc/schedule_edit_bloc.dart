import 'package:buildnotifierrear/domain/controllers/appointment_controller.dart';
import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'schedule_edit_bloc.freezed.dart';
part 'schedule_edit_event.dart';
part 'schedule_edit_state.dart';

enum SchedulePeriodType {
  noRepeat,
  repeatInPeriod,
}

extension OnSchedulePeriodType on SchedulePeriodType {
  T when<T extends Object?>({
    required T Function() noRepeat,
    required T Function() repeatInPeriod,
  }) {
    switch (this) {
      case SchedulePeriodType.noRepeat:
        return noRepeat();
      case SchedulePeriodType.repeatInPeriod:
        return repeatInPeriod();
    }
  }

  bool get isNoRepeat => this == SchedulePeriodType.noRepeat;
}

class ScheduleEditBloc extends Bloc<ScheduleEditEvent, ScheduleEditState> {
  ScheduleEditBloc({
    required AppointmentController controller,
    required ProjectsController projectController,
    required TasksController tasksController,
  }) : super(const ScheduleEditState.empty()) {
    on<ScheduleEditEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          var appointment = Appointment(
            startDateTime: DateTime.now(),
            endDateTime: DateTime.now().add(
              const Duration(hours: 1),
            ),
          );

          var projects = await projectController.getAll();

          emit(
            ScheduleEditState.loaded(
              appointments: [
                appointment,
              ],
              selectedAppointment: appointment,
              periodType: SchedulePeriodType.noRepeat,
              projects: projects,
              tasks: [],
            ),
          );
        },
        changePeriodType: (value) {
          emit(
            state.asLoaded.copyWith(
              periodType: value,
            ),
          );
        },
        changeSelectedAppointment: (value) async {
          List<Task> tasks = [];
          if (value.projectId.isNotEmpty) {
            tasks = await tasksController.getAllByProject(value.projectId);
          }

          emit(
            state.asLoaded.copyWith(
              selectedAppointment: value,
              tasks: tasks,
            ),
          );
        },
        addDate: (date) {
          var appointment = Appointment(
            startDateTime: date,
            endDateTime: date.add(
              const Duration(hours: 1),
            ),
          );

          emit(
            state.asLoaded.copyWith(
              tasks: [],
              appointments: [
                ...state.asLoaded.appointments,
                appointment,
              ],
              selectedAppointment: appointment,
            ),
          );
        },
        changeSelectedAppointmentTitle: (valeu) {
          emit(
            state.asLoaded.copyWith(
              appointments: state.asLoaded.appointments.map((appointment) {
                if (appointment == state.asLoaded.selectedAppointment) {
                  return appointment.copyWith(title: valeu);
                } else {
                  return appointment;
                }
              }).toList(),
              selectedAppointment: state.asLoaded.selectedAppointment?.copyWith(
                title: valeu,
              ),
            ),
          );
        },
        changeSelectedAppointmentProject: (id, valeu) async {
          var tasks = await tasksController.getAllByProject(id);
          var project = state.asLoaded.projects.where((project) {
            return project.id == id;
          }).firstOrNull;

          var location = '';
          if (project != null) {
            location = project.address;
            location += location.isNotEmpty && project.city.isNotEmpty
                ? ', ${project.city}'
                : project.city;
            location += location.isNotEmpty && project.state.isNotEmpty
                ? ', ${project.state}'
                : project.state;
            location += location.isNotEmpty && project.zipCode.isNotEmpty
                ? ', ${project.zipCode}'
                : project.zipCode;
          }

          emit(
            state.asLoaded.copyWith(
              appointments: state.asLoaded.appointments.map((appointment) {
                if (appointment == state.asLoaded.selectedAppointment) {
                  return appointment.copyWith(
                    projectId: id,
                    projectName: valeu,
                    taskId: '',
                    taskName: '',
                    location: location,
                  );
                } else {
                  return appointment;
                }
              }).toList(),
              selectedAppointment: state.asLoaded.selectedAppointment?.copyWith(
                projectId: id,
                projectName: valeu,
                taskId: '',
                taskName: '',
                location: location,
              ),
              tasks: tasks,
            ),
          );
        },
        changeSelectedAppointmentTask: (id, valeu) {
          emit(
            state.asLoaded.copyWith(
              appointments: state.asLoaded.appointments.map((appointment) {
                if (appointment == state.asLoaded.selectedAppointment) {
                  return appointment.copyWith(
                    taskId: id,
                    taskName: valeu,
                  );
                } else {
                  return appointment;
                }
              }).toList(),
              selectedAppointment: state.asLoaded.selectedAppointment?.copyWith(
                taskId: id,
                taskName: valeu,
              ),
            ),
          );
        },
        changeSelectedAppointmentLocation: (valeu) {
          emit(
            state.asLoaded.copyWith(
              appointments: state.asLoaded.appointments.map((appointment) {
                if (appointment == state.asLoaded.selectedAppointment) {
                  return appointment.copyWith(location: valeu);
                } else {
                  return appointment;
                }
              }).toList(),
              selectedAppointment: state.asLoaded.selectedAppointment?.copyWith(
                location: valeu,
              ),
            ),
          );
        },
        changeSelectedAppointmentDescription: (valeu) {
          emit(
            state.asLoaded.copyWith(
              appointments: state.asLoaded.appointments.map((appointment) {
                if (appointment == state.asLoaded.selectedAppointment) {
                  return appointment.copyWith(description: valeu);
                } else {
                  return appointment;
                }
              }).toList(),
              selectedAppointment: state.asLoaded.selectedAppointment?.copyWith(
                description: valeu,
              ),
            ),
          );
        },
        changeSelectedAppointmentAssignTo: (value) {
          emit(
            state.asLoaded.copyWith(
              appointments: state.asLoaded.appointments.map((appointment) {
                if (appointment == state.asLoaded.selectedAppointment) {
                  return appointment.copyWith(
                    assignTo: value,
                  );
                } else {
                  return appointment;
                }
              }).toList(),
              selectedAppointment: state.asLoaded.selectedAppointment?.copyWith(
                assignTo: value,
              ),
            ),
          );
        },
        changeSelectedAppointmentDate: (value) {
          var selectedAppointment = state.asLoaded.selectedAppointment;

          emit(
            state.asLoaded.copyWith(
              appointments: state.asLoaded.appointments.map((appointment) {
                if (appointment == state.asLoaded.selectedAppointment) {
                  return appointment.copyWith(
                    startDateTime: value.copyWith(
                      hour: appointment.startDateTime.hour,
                      minute: appointment.startDateTime.minute,
                    ),
                    endDateTime: value.copyWith(
                      hour: appointment.startDateTime.hour,
                      minute: appointment.startDateTime.minute,
                    ),
                  );
                } else {
                  return appointment;
                }
              }).toList(),
              selectedAppointment: selectedAppointment?.copyWith(
                startDateTime: value.copyWith(
                  hour: selectedAppointment.startDateTime.hour,
                  minute: selectedAppointment.startDateTime.minute,
                ),
                endDateTime: value.copyWith(
                  hour: selectedAppointment.startDateTime.hour,
                  minute: selectedAppointment.startDateTime.minute,
                ),
              ),
            ),
          );
        },
        changeSelectedAppointmentStart: (value) {
          var selectedAppointment = state.asLoaded.selectedAppointment;

          emit(
            state.asLoaded.copyWith(
              appointments: state.asLoaded.appointments.map((appointment) {
                if (appointment == state.asLoaded.selectedAppointment) {
                  return appointment.copyWith(
                    startDateTime: value,
                  );
                } else {
                  return appointment;
                }
              }).toList(),
              selectedAppointment: selectedAppointment?.copyWith(
                startDateTime: value,
              ),
            ),
          );
        },
        changeSelectedAppointmentEnd: (value) {
          var selectedAppointment = state.asLoaded.selectedAppointment;

          emit(
            state.asLoaded.copyWith(
              appointments: state.asLoaded.appointments.map((appointment) {
                if (appointment == state.asLoaded.selectedAppointment) {
                  return appointment.copyWith(
                    endDateTime: value,
                  );
                } else {
                  return appointment;
                }
              }).toList(),
              selectedAppointment: selectedAppointment?.copyWith(
                endDateTime: value,
              ),
            ),
          );
        },
        removeSelectedAppointmentAssignTo: (user) {
          var list = [...state.asLoaded.selectedAppointment!.assignTo];
          list.remove(user);

          emit(
            state.asLoaded.copyWith(
              appointments: state.asLoaded.appointments.map((appointment) {
                if (appointment == state.asLoaded.selectedAppointment) {
                  return appointment.copyWith(
                    assignTo: list,
                  );
                } else {
                  return appointment;
                }
              }).toList(),
              selectedAppointment: state.asLoaded.selectedAppointment?.copyWith(
                assignTo: list,
              ),
            ),
          );
        },
        remodeAppointment: (value) {
          var list = [...state.asLoaded.appointments];
          list.remove(value);

          emit(
            state.asLoaded.copyWith(
              appointments: list,
            ),
          );
        },
        save: (callBack) async {
          for (var i = 0; i < state.asLoaded.appointments.length; i++) {
            await controller.create(state.asLoaded.appointments[i]);
          }

          callBack.call();
        },
      );
    });
  }
}
