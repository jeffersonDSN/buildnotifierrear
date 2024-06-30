import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/projects/overview/bloc/projects_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/projects/overview/view/project_status_distribution_chart.dart';
import 'package:buildnotifierrear/presentation/projects/overview/widgets/projects_table_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectsOverviewView extends IView {
  const ProjectsOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ProjectsOverviewBloc>(context);

    bloc.add(const ProjectsOverviewEvent.load());

    return BlocBuilder<ProjectsOverviewBloc, ProjectsOverviewState>(
      bloc: bloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Card(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          loaded: (projects) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    ProjectStatusDistributionChart(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(Sizes.size8),
                  child: FilledButton.icon(
                    icon: const Icon(Icons.add),
                    label: Text(context.tr.newProject),
                    onPressed: () {
                      appBloc(context).add(
                        const AppEvent.changeView(
                          mod: Mod.projects(
                            type: ViewType.create(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ProjectsTableWidget(
                    projects: projects,
                    onPressed: (project) {
                      appBloc(context).add(
                        AppEvent.changeView(
                          mod: Mod.projects(
                            type: ViewType.update(
                              id: project.id,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
