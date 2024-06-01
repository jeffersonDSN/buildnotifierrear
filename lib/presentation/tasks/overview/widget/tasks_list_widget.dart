import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class TasksListWidget extends StatelessWidget {
  final List<Task> tasks;
  final ValueChanged<Task> onCalendar;
  final ValueChanged<Task> onEdit;

  const TasksListWidget({
    super.key,
    required this.tasks,
    required this.onCalendar,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 1,
        child: tasks.isEmpty
            ? const Center(
                child: Text(
                  'has no tasks',
                ),
              )
            : ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  var task = tasks[index];
                  return ListTile(
                    title: Text(task.title),
                    subtitle: const LinearProgressIndicator(
                      value: 0,
                      color: AppColor.green,
                    ),
                    trailing: SizedBox(
                      width: Sizes.size80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.calendar_month,
                              color: AppColor.primaryColorSwatch,
                            ),
                            onPressed: () {
                              onCalendar.call(task);
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.edit,
                              color: AppColor.warning,
                            ),
                            onPressed: () {
                              onEdit.call(task);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
