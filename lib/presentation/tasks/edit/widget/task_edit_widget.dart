import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/widget/task_edit_from_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class TaskEditWidget extends StatelessWidget {
  final String title;
  final Task task;
  final ValueChanged<String> onTitleChanged;
  final VoidCallback onCancel;
  final ValueChanged<Task> onSave;

  const TaskEditWidget({
    super.key,
    required this.title,
    required this.task,
    required this.onTitleChanged,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: Sizes.size32,
          ),
          onPressed: onCancel,
        ),
        title: Center(
          child: Text(
            title,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Divider(),
          gapHeight16,
          TaskEditFromWidget(
            task: task,
            onTitleChanged: onTitleChanged,
            onSave: onSave,
          ),
        ],
      ),
    );
  }
}
