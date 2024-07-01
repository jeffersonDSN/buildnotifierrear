import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/bloc/tasks_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/view/task_status_distribution_chart.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/view/task_board_widget.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/widgets/tasks_table_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksOverviewView extends IView {
  const TasksOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<TasksOverviewBloc>(context);

    bloc.add(const TasksOverviewEvent.load());

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Column(
        children: [
          Container(
            height: Sizes.size64,
            color: AppColor.lightColor,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: Sizes.size240,
                  child: Padding(
                    padding: const EdgeInsets.all(Sizes.size8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Sizes.size4,
                        ),
                        color: AppColor.greyColorSwatch.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: TabBar(
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Sizes.size4,
                              ),
                              color: Colors.white,
                            ),
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.black,
                            indicatorSize: TabBarIndicatorSize.tab,
                            dividerColor: Colors.transparent,
                            tabs: [
                              Row(
                                children: [
                                  const Icon(Icons.list),
                                  gapWidth4,
                                  Text(context.tr.table),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.view_column),
                                  gapWidth4,
                                  Text(context.tr.board),
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Sizes.size8),
                        child: FilledButton.icon(
                          icon: const Icon(Icons.add),
                          label: Text(context.tr.newTask),
                          onPressed: () {
                            appBloc(context).add(
                              const AppEvent.changeView(
                                mod: Mod.tasks(
                                  type: ViewType.create(),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              BlocBuilder<TasksOverviewBloc, TasksOverviewState>(
                bloc: bloc,
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Card(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    loaded: (tasks) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              TaskStatusDistributionChart(),
                            ],
                          ),
                          Expanded(
                            child: TasksTableWidget(
                              tasks: tasks,
                              onPressed: (task) {
                                appBloc(context).add(
                                  AppEvent.changeView(
                                    mod: Mod.tasks(
                                      type: ViewType.update(
                                        id: task.id,
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
              ),
              const TaskBoardWidget(),
            ]),
          ),
        ],
      ),
    );
  }
}
