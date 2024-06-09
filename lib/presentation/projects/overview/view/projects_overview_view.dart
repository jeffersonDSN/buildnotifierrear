import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/core/widget/total_active_card.dart';
import 'package:buildnotifierrear/presentation/projects/overview/bloc/projects_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/widget/schedule_widget.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/widget/task_edit_widget.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/widget/tasks_overview_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
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
      title: 'Projects',
      actions: [
        FilledButton.icon(
          icon: const Icon(Icons.add),
          label: const Text('Add'),
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
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (
              projects,
              selectedProject,
              tasksOfprojectSelected,
              taskSelected,
              tasksState,
              selectedDay,
              appoitmentOfSelecedDay,
              appoitmentCardsState,
            ) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   children: [
                  //     TotalActive(
                  //       title: 'projects',
                  //       total: projects.length,
                  //       onPressed: () {
                  //         appBloc(context).add(
                  //           const AppEvent.changeView(
                  //             mod: Mod.projects(
                  //               type: ViewType.create(),
                  //             ),
                  //           ),
                  //         );
                  //       },
                  //     ),
                  //     gapWidth8,
                  //     Card(
                  //       child: SizedBox(
                  //         width: 240,
                  //         height: 125,
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(Sizes.size8),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               const Text(
                  //                 'Project status',
                  //                 style: TextStyle(
                  //                   fontSize: Sizes.size16,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //               gapHeight16,
                  //               SizedBox(
                  //                 height: 50,
                  //                 child: PieChart(
                  //                   PieChartData(
                  //                     centerSpaceRadius: 25,
                  //                     sections: [
                  //                       PieChartSectionData(
                  //                         value: 0,
                  //                         radius: 15,
                  //                         color: AppColor.red,
                  //                         showTitle: false,
                  //                       ),
                  //                       PieChartSectionData(
                  //                         value: 0,
                  //                         radius: 15,
                  //                         showTitle: false,
                  //                         color: AppColor.warning,
                  //                       ),
                  //                       PieChartSectionData(
                  //                         value: 100,
                  //                         radius: 15,
                  //                         showTitle: false,
                  //                         color: AppColor.green,
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     gapWidth8,
                  //     Card(
                  //       child: SizedBox(
                  //         width: 240,
                  //         height: 125,
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(Sizes.size8),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               const Text(
                  //                 'Task status',
                  //                 style: TextStyle(
                  //                   fontSize: Sizes.size16,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //               gapHeight16,
                  //               SizedBox(
                  //                 height: 50,
                  //                 child: PieChart(
                  //                   PieChartData(
                  //                     centerSpaceRadius: 25,
                  //                     sections: [
                  //                       PieChartSectionData(
                  //                         value: 0,
                  //                         radius: 15,
                  //                         color: AppColor.red,
                  //                         showTitle: false,
                  //                       ),
                  //                       PieChartSectionData(
                  //                         value: 0,
                  //                         radius: 15,
                  //                         showTitle: false,
                  //                         color: AppColor.warning,
                  //                       ),
                  //                       PieChartSectionData(
                  //                         value: 100,
                  //                         radius: 15,
                  //                         showTitle: false,
                  //                         color: AppColor.green,
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     gapWidth8,
                  //     Card(
                  //       child: SizedBox(
                  //         width: 200,
                  //         height: 125,
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(Sizes.size8),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               const Text(
                  //                 'Description',
                  //                 style: TextStyle(
                  //                   fontSize: Sizes.size16,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //               gapHeight8,
                  //               Row(
                  //                 children: [
                  //                   Container(
                  //                     color: AppColor.green,
                  //                     width: 10,
                  //                     height: 10,
                  //                   ),
                  //                   gapWidth8,
                  //                   const Text('On Track')
                  //                 ],
                  //               ),
                  //               gapHeight8,
                  //               Row(
                  //                 children: [
                  //                   Container(
                  //                     color: AppColor.warning,
                  //                     width: 10,
                  //                     height: 10,
                  //                   ),
                  //                   gapWidth8,
                  //                   const Text('At Risk of Delay')
                  //                 ],
                  //               ),
                  //               gapHeight8,
                  //               Row(
                  //                 children: [
                  //                   Container(
                  //                     color: AppColor.red,
                  //                     width: 10,
                  //                     height: 10,
                  //                   ),
                  //                   gapWidth8,
                  //                   const Text('Delayed')
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.size16),
                        child: Row(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                itemCount: projects.length,
                                itemBuilder: (context, index) {
                                  var project = projects[index];
                                  return ListTile(
                                    selected: project == selectedProject,
                                    title: Text(project.name),
                                    subtitle: const LinearProgressIndicator(
                                      value: 0,
                                      color: AppColor.green,
                                    ),
                                    trailing: SizedBox(
                                      width: Sizes.size72,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            icon: const Icon(
                                              Icons.edit,
                                              color: AppColor.warning,
                                            ),
                                            onPressed: () {
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
                                          if (selectedProject == project)
                                            const Icon(
                                              Icons.arrow_forward,
                                              color:
                                                  AppColor.primaryColorSwatch,
                                            ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      bloc.add(
                                        ProjectsOverviewEvent
                                            .changeSelectedProject(
                                          selectedProject: project,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            const VerticalDivider(),
                            Expanded(
                              child: tasksState.when(
                                loading: () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                listing: () => DefaultTabController(
                                  initialIndex: 0,
                                  length: 2,
                                  child: Column(
                                    children: [
                                      gapHeight8,
                                      TabBar(
                                        indicator: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            Sizes.size24,
                                          ),
                                          color: AppColor.primaryColorSwatch,
                                        ),
                                        labelColor: Colors.white,
                                        unselectedLabelColor: Colors.black,
                                        indicatorSize: TabBarIndicatorSize.tab,
                                        dividerColor: Colors.transparent,
                                        tabs: const [
                                          Tab(text: 'Tasks'),
                                          Tab(text: 'Schedule'),
                                        ],
                                      ),
                                      const Divider(),
                                      Expanded(
                                        child: TabBarView(
                                          children: [
                                            TasksOverviewWidget(
                                              tasks: tasksOfprojectSelected,
                                              onCalendar: (task) {},
                                              onEdit: (task) {
                                                bloc.add(
                                                  ProjectsOverviewEvent
                                                      .changeTasksState(
                                                    tasksState:
                                                        DependenteStateType
                                                            .updating(
                                                      value: task,
                                                    ),
                                                  ),
                                                );
                                              },
                                              onCreateNewTask: () {
                                                bloc.add(
                                                  const ProjectsOverviewEvent
                                                      .changeTasksState(
                                                    tasksState:
                                                        DependenteStateType
                                                            .creating(),
                                                  ),
                                                );
                                              },
                                            ),
                                            ScheduleWidget(
                                              selectedDay: selectedDay,
                                              isLoading: appoitmentCardsState
                                                  .isLoading,
                                              appointments:
                                                  appoitmentOfSelecedDay,
                                              scheduleType:
                                                  ScheduleType.project,
                                              onChangeSelectedDay: (value) {
                                                bloc.add(
                                                  ProjectsOverviewEvent
                                                      .changeSelectedDay(
                                                    selectedDay: value,
                                                  ),
                                                );
                                              },
                                              onCreate: () {},
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                reading: (value) {
                                  return Container();
                                },
                                creating: () {
                                  return TaskEditWidget(
                                    title: 'New task',
                                    task: taskSelected!,
                                    onTitleChanged: (value) {
                                      bloc.add(
                                        ProjectsOverviewEvent
                                            .changeTitleTaskSelected(
                                                value: value),
                                      );
                                    },
                                    onCancel: () {
                                      bloc.add(
                                        const ProjectsOverviewEvent
                                            .changeTasksState(
                                          tasksState:
                                              DependenteStateType.listing(),
                                        ),
                                      );
                                    },
                                    onSave: (value) {
                                      bloc.add(
                                        ProjectsOverviewEvent.saveTaskSelected(
                                          callback: () {
                                            bloc.add(
                                              const ProjectsOverviewEvent
                                                  .changeTasksState(
                                                tasksState: DependenteStateType
                                                    .listing(),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                                updating: (task) {
                                  return TaskEditWidget(
                                    title: 'Edit task',
                                    task: taskSelected!,
                                    onTitleChanged: (value) {
                                      bloc.add(
                                        ProjectsOverviewEvent
                                            .changeTitleTaskSelected(
                                                value: value),
                                      );
                                    },
                                    onCancel: () {
                                      bloc.add(
                                        const ProjectsOverviewEvent
                                            .changeTasksState(
                                          tasksState:
                                              DependenteStateType.listing(),
                                        ),
                                      );
                                    },
                                    onSave: (value) {
                                      bloc.add(
                                        ProjectsOverviewEvent.saveTaskSelected(
                                          callback: () {
                                            bloc.add(
                                              const ProjectsOverviewEvent
                                                  .changeTasksState(
                                                tasksState: DependenteStateType
                                                    .listing(),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
