import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/widget/tasks_list_widget.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/widget/tasks_status_widget.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/widget/tasks_total_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class TasksOverviewWidget extends StatelessWidget {
  final List<Task> tasks;
  final ValueChanged<Task> onCalendar;
  final ValueChanged<Task> onEdit;
  final VoidCallback onCreateNewTask;

  const TasksOverviewWidget({
    super.key,
    required this.tasks,
    required this.onCalendar,
    required this.onEdit,
    required this.onCreateNewTask,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.size16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TasksTotalWidget(
                  total: tasks.length,
                  onCreateNewTask: onCreateNewTask,
                ),
              ),
              gapWidth8,
              const Expanded(
                child: TasksStatusWidget(),
              ),
            ],
          ),
          TasksListWidget(
            tasks: tasks,
            onCalendar: onCalendar,
            onEdit: onEdit,
          ),
        ],
      ),
    );
  }
}
