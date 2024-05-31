import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/domain/entities/task.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/projects/overview/bloc/projects_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/widget/task_edit_from_widget.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Projects'),
            Divider(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.size16),
        child: BlocBuilder<ProjectsOverviewBloc, ProjectsOverviewState>(
          bloc: bloc,
          builder: (context, state) {
            return state.when(
              empty: () => Container(),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (
                projectSelected,
                projects,
                tasksOfprojectSelected,
                tasksState,
              ) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Card(
                          child: SizedBox(
                            width: 240,
                            height: 125,
                            child: Padding(
                              padding: const EdgeInsets.all(Sizes.size8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Total active projects',
                                    style: TextStyle(
                                      fontSize: Sizes.size16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  gapHeight8,
                                  Text(
                                    '${projects.length}',
                                    style: const TextStyle(
                                      fontSize: Sizes.size20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  gapHeight8,
                                  Center(
                                    child: FilledButton(
                                      child: const Text('Create new project'),
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
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        gapWidth8,
                        Card(
                          child: SizedBox(
                            width: 240,
                            height: 125,
                            child: Padding(
                              padding: const EdgeInsets.all(Sizes.size8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Project status',
                                    style: TextStyle(
                                      fontSize: Sizes.size16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  gapHeight16,
                                  SizedBox(
                                    height: 50,
                                    child: PieChart(
                                      PieChartData(
                                        centerSpaceRadius: 25,
                                        sections: [
                                          PieChartSectionData(
                                            value: 10,
                                            radius: 15,
                                            color: AppColor.red,
                                            showTitle: false,
                                          ),
                                          PieChartSectionData(
                                            value: 25,
                                            radius: 15,
                                            showTitle: false,
                                            color: AppColor.warning,
                                          ),
                                          PieChartSectionData(
                                            value: 50,
                                            radius: 15,
                                            showTitle: false,
                                            color: AppColor.green,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        gapWidth8,
                        Card(
                          child: SizedBox(
                            width: 240,
                            height: 125,
                            child: Padding(
                              padding: const EdgeInsets.all(Sizes.size8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Task status',
                                    style: TextStyle(
                                      fontSize: Sizes.size16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  gapHeight16,
                                  SizedBox(
                                    height: 50,
                                    child: PieChart(
                                      PieChartData(
                                        centerSpaceRadius: 25,
                                        sections: [
                                          PieChartSectionData(
                                            value: 10,
                                            radius: 15,
                                            color: AppColor.red,
                                            showTitle: false,
                                          ),
                                          PieChartSectionData(
                                            value: 25,
                                            radius: 15,
                                            showTitle: false,
                                            color: AppColor.warning,
                                          ),
                                          PieChartSectionData(
                                            value: 50,
                                            radius: 15,
                                            showTitle: false,
                                            color: AppColor.green,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        gapWidth8,
                        Card(
                          child: SizedBox(
                            width: 200,
                            height: 125,
                            child: Padding(
                              padding: const EdgeInsets.all(Sizes.size8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Description',
                                    style: TextStyle(
                                      fontSize: Sizes.size16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  gapHeight8,
                                  Row(
                                    children: [
                                      Container(
                                        color: AppColor.green,
                                        width: 10,
                                        height: 10,
                                      ),
                                      gapWidth8,
                                      const Text('On Track')
                                    ],
                                  ),
                                  gapHeight8,
                                  Row(
                                    children: [
                                      Container(
                                        color: AppColor.warning,
                                        width: 10,
                                        height: 10,
                                      ),
                                      gapWidth8,
                                      const Text('At Risk of Delay')
                                    ],
                                  ),
                                  gapHeight8,
                                  Row(
                                    children: [
                                      Container(
                                        color: AppColor.red,
                                        width: 10,
                                        height: 10,
                                      ),
                                      gapWidth8,
                                      const Text('Delayed')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                                      selected: project == projectSelected,
                                      title: Text(project.name),
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
                                            if (projectSelected == project)
                                              const Icon(
                                                Icons.arrow_forward,
                                                color:
                                                    AppColor.primaryColorSwatch,
                                              ),
                                          ],
                                        ),
                                      ),
                                      subtitle: const LinearProgressIndicator(
                                        value: 0.5,
                                        color: AppColor.green,
                                      ),
                                      onTap: () {
                                        bloc.add(
                                          ProjectsOverviewEvent
                                              .changeProjectSelected(
                                            projectSelected: project,
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
                                          indicatorSize:
                                              TabBarIndicatorSize.tab,
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
                                                onEdit: (task) {},
                                                onCreateNewTask: () {
                                                  bloc.add(
                                                    const ProjectsOverviewEvent
                                                        .updateTasksState(
                                                      tasksState:
                                                          DependenteStateType
                                                              .creating(),
                                                    ),
                                                  );
                                                },
                                              ),
                                              // TableCalendar(
                                              //   firstDay:
                                              //       DateTime.utc(2010, 10, 16),
                                              //   lastDay:
                                              //       DateTime.utc(2030, 3, 14),
                                              //   focusedDay: DateTime.now(),
                                              //   currentDay: DateTime.now(),
                                              //   calendarStyle: CalendarStyle(
                                              //     defaultTextStyle:
                                              //         const TextStyle(
                                              //       color: AppColor
                                              //           .primaryColorSwatch,
                                              //     ),
                                              //     weekendTextStyle:
                                              //         const TextStyle(
                                              //       color: AppColor.warning,
                                              //     ),
                                              //     selectedDecoration:
                                              //         const BoxDecoration(
                                              //       color: AppColor
                                              //           .primaryColorSwatch,
                                              //       shape: BoxShape.circle,
                                              //     ),
                                              //     todayDecoration: BoxDecoration(
                                              //       color: AppColor
                                              //           .primaryColorSwatch
                                              //           .shade300,
                                              //       shape: BoxShape.circle,
                                              //     ),
                                              //   ),
                                              //   // selectedDayPredicate: (day) {
                                              //   //   // return isSameDay(
                                              //   //   //     selectedDay, day);
                                              //   // },
                                              //   onDaySelected:
                                              //       (selectedDay, focusedDay) {
                                              //     // bloc.add(
                                              //     //   ScheduleEvent.load(
                                              //     //     selectDay: focusedDay,
                                              //     //   ),
                                              //     // );
                                              //   },
                                              //   calendarFormat:
                                              //       CalendarFormat.week,
                                              //   headerStyle: const HeaderStyle(
                                              //     titleCentered: true,
                                              //     formatButtonVisible: false,
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  reading: () => Container(),
                                  creating: () {
                                    return Scaffold(
                                      appBar: AppBar(
                                        backgroundColor: Colors.transparent,
                                        leading: IconButton(
                                          icon: const Icon(
                                            Icons.arrow_back,
                                            size: Sizes.size32,
                                          ),
                                          onPressed: () {
                                            bloc.add(
                                              const ProjectsOverviewEvent
                                                  .updateTasksState(
                                                tasksState: DependenteStateType
                                                    .listing(),
                                              ),
                                            );
                                          },
                                        ),
                                        title: const Center(
                                          child: Text(
                                            'New task',
                                          ),
                                        ),
                                      ),
                                      backgroundColor: Colors.transparent,
                                      body: Column(
                                        children: [
                                          const Divider(),
                                          gapHeight16,
                                          TaskEditFromWidget(
                                            task: const Task(),
                                            onTitleChanged: (value) {},
                                            onSave: (value) {
                                              bloc.add(
                                                const ProjectsOverviewEvent
                                                    .updateTasksState(
                                                  tasksState:
                                                      DependenteStateType
                                                          .listing(),
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  updating: () => Container(),
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
      ),
    );
  }
}
