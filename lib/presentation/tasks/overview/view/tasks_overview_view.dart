import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/bloc/tasks_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/view/task_status_distribution_chart.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/widgets/tasks_table_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksOverviewView extends IView {
  const TasksOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<TasksOverviewBloc>(context);

    bloc.add(const TasksOverviewEvent.load());

    return BlocBuilder<TasksOverviewBloc, TasksOverviewState>(
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
    );
  }
}
