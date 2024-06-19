import 'package:buildnotifierrear/domain/controllers/appointment_controller.dart';
import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'projects_overview_bloc.freezed.dart';
part 'projects_overview_event.dart';
part 'projects_overview_state.dart';

class ProjectsOverviewBloc
    extends Bloc<ProjectsOverviewEvent, ProjectsOverviewState> {
  ProjectsOverviewBloc({
    required CRUDController<Project> controller,
    required TasksController tasksController,
    required AppointmentController appointmentController,
  }) : super(const ProjectsOverviewState.empty()) {
    on<ProjectsOverviewEvent>(
      (event, emit) async {
        await event.when(
          load: () async {
            emit(const ProjectsOverviewState.loading());

            var projects = await controller.getAll();

            emit(
              ProjectsOverviewState.loaded(
                projects: projects,
                tasksOfprojectSelected: [],
                tasksState: const DependenteStateType.listing(),
                selectedDay: DateTime.now(),
                appoitmentOfSelecedDay: [],
                appoitmentCardsState: const DependenteStateType.listing(),
              ),
            );

            if (projects.isNotEmpty) {
              add(
                ProjectsOverviewEvent.changeSelectedProject(
                  selectedProject: projects[0],
                ),
              );
            }
          },
          changeSelectedProject: (selectedProject) async {
            emit(
              state.asLoaded.copyWith(
                selectedProject: selectedProject,
                tasksState: const DependenteStateType.loading(),
                appoitmentCardsState: const DependenteStateType.loading(),
              ),
            );

            var result = await Future.wait([
              tasksController.getAllByProject(
                selectedProject.id,
              ),
              appointmentController.getByDayAndProject(
                state.asLoaded.selectedDay,
                selectedProject.id,
              ),
            ]);

            emit(
              state.asLoaded.copyWith(
                tasksOfprojectSelected: result[0] as List<Task>,
                appoitmentOfSelecedDay: result[1] as List<Appointment>,
                tasksState: const DependenteStateType.listing(),
                appoitmentCardsState: const DependenteStateType.listing(),
              ),
            );
          },
          loadTasksOfSelectedProject: () async {
            emit(
              state.asLoaded.copyWith(
                tasksState: const DependenteStateType.loading(),
              ),
            );

            var result = await tasksController.getAllByProject(
              state.asLoaded.selectedProject!.id,
            );

            emit(
              state.asLoaded.copyWith(
                tasksOfprojectSelected: result,
                tasksState: const DependenteStateType.listing(),
              ),
            );
          },
          changeTasksState: (tasksState) {
            tasksState.maybeWhen(
              orElse: () {
                emit(
                  state.asLoaded.copyWith(
                    tasksState: tasksState,
                  ),
                );
              },
              creating: () {
                emit(
                  state.asLoaded.copyWith(
                    tasksState: tasksState,
                    taskSelected: null,
                  ),
                );
              },
              updating: (value) {
                emit(
                  state.asLoaded.copyWith(
                    tasksState: tasksState,
                    taskSelected: value,
                  ),
                );
              },
            );
          },
          changeSelectedDay: (selectedDay) async {
            emit(
              state.asLoaded.copyWith(
                selectedDay: selectedDay,
                appoitmentCardsState: const DependenteStateType.loading(),
              ),
            );

            var appointments = await appointmentController.getByDayAndProject(
              selectedDay,
              state.asLoaded.selectedProject!.id,
            );

            emit(
              state.asLoaded.copyWith(
                appoitmentOfSelecedDay: appointments,
                appoitmentCardsState: const DependenteStateType.listing(),
              ),
            );
          },
          deleteAppointment: (appointmentId) async {
            await appointmentController.delete(appointmentId);

            add(
              ProjectsOverviewEvent.changeSelectedDay(
                selectedDay: state.asLoaded.selectedDay,
              ),
            );
          },
        );
      },
    );
  }
}
