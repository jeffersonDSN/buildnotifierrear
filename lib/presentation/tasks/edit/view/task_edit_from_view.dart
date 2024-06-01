import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tasks_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/bloc/task_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskEditFromView extends StatelessWidget {
  final String _projectId;
  final CrudType _crudType;
  final VoidCallback? _onCancel;
  final void Function(Task task)? _onSave;

  TaskEditFromView({
    super.key,
    String? projectId,
    CrudType? crudType,
    VoidCallback? onCancel,
    void Function(Task task)? onSave,
  })  : _onCancel = onCancel,
        _onSave = onSave,
        _projectId = projectId ?? '',
        _crudType = crudType ?? const CrudType.create();

  final TaskEditBloc bloc = TaskEditBloc(
    controller: TasksController(
      repository: TasksFirestoreRepository(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    bloc.add(
      TaskEditEvent.load(
        projectId: _projectId,
        crudType: _crudType,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: Sizes.size32,
          ),
          onPressed: _onCancel,
        ),
        title: const Center(
          child: Text('New task'),
        ),
      ),
      body: Expanded(
        child: Column(
          children: [
            const Divider(),
            BlocBuilder<TaskEditBloc, TaskEditState>(
              bloc: bloc,
              builder: (context, state) {
                return state.when(
                  empty: () => Container(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (crudType, task) {
                    return Padding(
                      padding: const EdgeInsets.all(Sizes.size16),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Title'),
                            ),
                            initialValue: task.title,
                            onChanged: (value) {
                              bloc.add(
                                TaskEditEvent.updateTitle(
                                  value: value,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
