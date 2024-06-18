import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
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
          Padding(
            padding: const EdgeInsets.all(Sizes.size16),
            child: Column(
              children: [
                BaseTextFormField(
                  label: 'Title',
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
