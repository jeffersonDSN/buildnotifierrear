import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'projects_overview_bloc.freezed.dart';
part 'projects_overview_event.dart';
part 'projects_overview_state.dart';

class ProjectsOverviewBloc
    extends Bloc<ProjectsOverviewEvent, ProjectsOverviewState> {
  ProjectsOverviewBloc({
    required ProjectsController controller,
  }) : super(const ProjectsOverviewState.empty()) {
    on<ProjectsOverviewEvent>(
      (event, emit) async {
        await event.when(
          load: () async {
            emit(const ProjectsOverviewState.loading());

            var projects = await controller.getAll();

            emit(ProjectsOverviewState.loaded(projects: projects));
          },
        );
      },
    );
  }
}
