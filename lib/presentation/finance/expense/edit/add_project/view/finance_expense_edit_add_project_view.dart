import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/finance/expense/edit/add_project/bloc/finance_expense_edit_add_project_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceExpenseEditAddProjectView extends StatelessWidget {
  const FinanceExpenseEditAddProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<FinanceExpenseEditAddProjectBloc>(context);

    bloc.add(
      const FinanceExpenseEditAddProjectEvent.load(),
    );

    return BlocBuilder<FinanceExpenseEditAddProjectBloc,
        FinanceExpenseEditAddProjectState>(
      builder: (context, state) {
        return AlertDialog(
          title: Text(
            context.tr.linkExpenseToProject,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(),
              SizedBox(
                width: Sizes.size800,
                height: Sizes.size80,
                child: state.maybeWhen(
                  orElse: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loaded: (projects, selectedProject, tasks, selectedTask) {
                    var projectId =
                        selectedProject != null ? selectedProject.id : '';
                    var taskId = selectedTask != null ? selectedTask.id : '';

                    return Row(
                      children: [
                        Expanded(
                          child: BaseDropdownButtonField(
                            label: context.tr.project,
                            value: projectId,
                            items: [
                              DropdownItem(
                                value: '',
                                title: '',
                              ),
                              ...projects.map((project) {
                                return DropdownItem(
                                  value: project.id,
                                  title: project.name,
                                );
                              }),
                            ],
                            onChanged: (value) {
                              bloc.add(
                                FinanceExpenseEditAddProjectEvent
                                    .changeSelectedProject(
                                  id: value ?? '',
                                ),
                              );
                            },
                          ),
                        ),
                        gapWidth16,
                        Expanded(
                          child: BaseDropdownButtonField(
                            label: context.tr.task,
                            value: taskId,
                            items: [
                              DropdownItem(
                                value: '',
                                title: '',
                              ),
                              ...tasks.map((task) {
                                return DropdownItem(
                                  value: task.id,
                                  title: task.title,
                                );
                              }),
                            ],
                            onChanged: (value) {
                              bloc.add(
                                FinanceExpenseEditAddProjectEvent
                                    .changeSelectedTask(
                                  id: value ?? '',
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text(context.tr.cancel),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            if (state.isLoaded)
              FilledButton(
                child: Text(context.tr.submit),
                onPressed: () {
                  var asLoaded = state.asLoaded;
                  var selectedProject = asLoaded.selectedProject!;
                  var selectedTask = asLoaded.selectedTask;

                  Navigator.pop(
                    context,
                    (
                      projectId: selectedProject.id,
                      projectName: selectedProject.name,
                      taskId: selectedTask != null ? selectedTask.id : '',
                      taskTitle: selectedTask != null ? selectedTask.title : '',
                    ),
                  );
                },
              )
          ],
        );
      },
    );
  }
}
