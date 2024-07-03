import 'package:buildnotifierrear/domain/entities/task/task.dart';
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
            if (tasks.isNotEmpty) {
              List<Task> data = [...tasks];

              data.sort((a, b) {
                int startOrder = a.startDate!.compareTo(b.startDate!);

                if (startOrder == 0) {
                  startOrder = a.expectedEndDate!.compareTo(b.expectedEndDate!);

                  if (startOrder == 0) {
                    startOrder = a.startDate!.compareTo(b.startDate!);
                    return startOrder;
                  } else {
                    return startOrder;
                  }
                } else {
                  return startOrder;
                }
              });

              return GanttChart(
                userData: data,
                context: context,
                color: Colors.blueAccent,
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Não possui tarefas'),
                TextButton(
                  onPressed: () async {},
                  child: const Text('Criar a primeira agora'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
