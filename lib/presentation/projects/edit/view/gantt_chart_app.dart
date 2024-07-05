import 'package:buildnotifierrear/presentation/projects/edit/bloc/tasks_project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/projects/edit/view/gantt_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GanttChartApp extends StatelessWidget {
  final String projectId;
  final DateTime startDate;
  final DateTime endDate;

  const GanttChartApp({
    super.key,
    required this.projectId,
    required this.startDate,
    required this.endDate,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<TasksProjectEditBloc>(context);

    bloc.add(
      TasksProjectEditEvent.load(
        projectId: projectId,
        projectStartDate: startDate,
        projectEndDate: endDate,
      ),
    );

    return BlocBuilder<TasksProjectEditBloc, TasksProjectEditState>(
      bloc: bloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: CircularProgressIndicator()),
          loaded: (
            projectId,
            startDate,
            endDate,
            viewRange,
            tasks,
            selectedTask,
            initX,
            width,
            startPanChartPos,
            isPanStartActive,
            isPanMiddleActive,
            isPanEndActive,
          ) {
            return GanttChart(
              userData: tasks,
              context: context,
            );
          },
        );
      },
    );
  }
}
