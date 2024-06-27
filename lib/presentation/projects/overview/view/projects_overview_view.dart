import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/projects/overview/bloc/projects_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/projects/overview/widgets/projects_table_widget.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectsOverviewView extends IView {
  const ProjectsOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ProjectsOverviewBloc>(context);

    bloc.add(const ProjectsOverviewEvent.load());

    return BaseScaffold(
      title: context.tr.projects,
      actions: [
        FilledButton.icon(
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
        )
      ],
      child: BlocBuilder<ProjectsOverviewBloc, ProjectsOverviewState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            empty: () => Container(),
            loading: () => const Card(
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
                      // TotalActive(
                      //   title: 'projects',
                      //   total: projects.length,
                      //   onPressed: () {
                      //     appBloc(context).add(
                      //       const AppEvent.changeView(
                      //         mod: Mod.projects(
                      //           type: ViewType.create(),
                      //         ),
                      //       ),
                      //     );
                      //   },
                      // ),
                      // gapWidth8,
                      // Card(
                      //   child: SizedBox(
                      //     width: 240,
                      //     height: 125,
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(Sizes.size8),
                      //       child: Column(
                      //         crossAxisAlignment:
                      //             CrossAxisAlignment.center,
                      //         children: [
                      //           const Text(
                      //             'Project status',
                      //             style: TextStyle(
                      //               fontSize: Sizes.size16,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           gapHeight16,
                      //           SizedBox(
                      //             height: 50,
                      //             child: PieChart(
                      //               PieChartData(
                      //                 centerSpaceRadius: 25,
                      //                 sections: [
                      //                   PieChartSectionData(
                      //                     value: 0,
                      //                     radius: 15,
                      //                     color: AppColor.red,
                      //                     showTitle: false,
                      //                   ),
                      //                   PieChartSectionData(
                      //                     value: 0,
                      //                     radius: 15,
                      //                     showTitle: false,
                      //                     color: AppColor.warning,
                      //                   ),
                      //                   PieChartSectionData(
                      //                     value: 100,
                      //                     radius: 15,
                      //                     showTitle: false,
                      //                     color: AppColor.green,
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // gapWidth8,
                      // Card(
                      //   child: SizedBox(
                      //     width: 240,
                      //     height: 125,
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(Sizes.size8),
                      //       child: Column(
                      //         crossAxisAlignment:
                      //             CrossAxisAlignment.center,
                      //         children: [
                      //           const Text(
                      //             'Task status',
                      //             style: TextStyle(
                      //               fontSize: Sizes.size16,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           gapHeight16,
                      //           SizedBox(
                      //             height: 50,
                      //             child: PieChart(
                      //               PieChartData(
                      //                 centerSpaceRadius: 25,
                      //                 sections: [
                      //                   PieChartSectionData(
                      //                     value: 0,
                      //                     radius: 15,
                      //                     color: AppColor.red,
                      //                     showTitle: false,
                      //                   ),
                      //                   PieChartSectionData(
                      //                     value: 0,
                      //                     radius: 15,
                      //                     showTitle: false,
                      //                     color: AppColor.warning,
                      //                   ),
                      //                   PieChartSectionData(
                      //                     value: 100,
                      //                     radius: 15,
                      //                     showTitle: false,
                      //                     color: AppColor.green,
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // gapWidth8,
                      // Card(
                      //   child: SizedBox(
                      //     width: 200,
                      //     height: 125,
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(Sizes.size8),
                      //       child: Column(
                      //         crossAxisAlignment:
                      //             CrossAxisAlignment.center,
                      //         children: [
                      //           const Text(
                      //             'Description',
                      //             style: TextStyle(
                      //               fontSize: Sizes.size16,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           gapHeight8,
                      //           Row(
                      //             children: [
                      //               Container(
                      //                 color: AppColor.green,
                      //                 width: 10,
                      //                 height: 10,
                      //               ),
                      //               gapWidth8,
                      //               const Text('On Track')
                      //             ],
                      //           ),
                      //           gapHeight8,
                      //           Row(
                      //             children: [
                      //               Container(
                      //                 color: AppColor.warning,
                      //                 width: 10,
                      //                 height: 10,
                      //               ),
                      //               gapWidth8,
                      //               const Text('At Risk of Delay')
                      //             ],
                      //           ),
                      //           gapHeight8,
                      //           Row(
                      //             children: [
                      //               Container(
                      //                 color: AppColor.red,
                      //                 width: 10,
                      //                 height: 10,
                      //               ),
                      //               gapWidth8,
                      //               const Text('Delayed')
                      //             ],
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  ProjectsTableWidget(
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
                ],
              );
            },
          );
        },
      ),
    );
  }
}
