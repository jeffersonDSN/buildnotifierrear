import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class TasksTotalWidget extends StatelessWidget {
  final int _total;
  final VoidCallback _onCreateNewTask;

  const TasksTotalWidget({
    super.key,
    required int total,
    required VoidCallback onCreateNewTask,
  })  : _total = total,
        _onCreateNewTask = onCreateNewTask;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: SizedBox(
        height: Sizes.size120,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.size8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Total active tasks',
                style: TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              gapHeight8,
              Text(
                _total.toString(),
                style: const TextStyle(
                  fontSize: Sizes.size20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              gapHeight8,
              Center(
                child: FilledButton(
                  onPressed: _onCreateNewTask,
                  child: const Text(
                    'Create new task',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
