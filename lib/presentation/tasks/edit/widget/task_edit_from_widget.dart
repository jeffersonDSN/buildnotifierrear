import 'package:buildnotifierrear/domain/entities/task.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class TaskEditFromWidget extends StatelessWidget {
  final Task task;
  final ValueChanged<String> onTitleChanged;
  final ValueChanged<Task> onSave;

  const TaskEditFromWidget({
    super.key,
    required this.task,
    required this.onSave,
    required this.onTitleChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(Sizes.size16),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Title'),
                  ),
                  initialValue: task.title,
                  onChanged: onTitleChanged,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Sizes.size8),
            child: FilledButton.icon(
              icon: const Icon(
                Icons.check,
              ),
              label: const Text('Create task'),
              onPressed: () {
                onSave.call(task);
              },
            ),
          ),
        ],
      ),
    );
  }
}
