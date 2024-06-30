import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_priority_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:buildnotifierrear/presentation/assign_to/assign_to_list.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_date_input_widget.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/bloc/task_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskEditFormView extends StatelessWidget {
  const TaskEditFormView({super.key});

  @override
  Widget build(BuildContext context) {
    Future<DateTime?> getDate() async {
      return showDatePicker(
        context: context,
        firstDate: DateTime.utc(2010, 10, 16),
        lastDate: DateTime.utc(2030, 3, 14),
        initialDate: DateTime.now(),
      );
    }

    var bloc = BlocProvider.of<TaskEditBloc>(context);

    return BlocBuilder<TaskEditBloc, TaskEditState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          loaded: (crudType, task, projects) {
            return SingleChildScrollView(
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    Sizes.size32,
                    Sizes.size16,
                    Sizes.size32,
                    Sizes.size16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: BaseTextFormField(
                              label: context.tr.title,
                              initialValue: task.title,
                              onChanged: (value) {
                                bloc.add(
                                  TaskEditEvent.updateTitle(
                                    value: value,
                                  ),
                                );
                              },
                            ),
                          ),
                          gapWidth8,
                          Expanded(
                            child: BaseDropdownButtonField(
                              label: context.tr.project,
                              value: (
                                id: task.productId,
                                name: task.projectName,
                              ),
                              isExpanded: true,
                              items: [
                                DropdownItem(
                                  value: (
                                    id: '',
                                    name: '',
                                  ),
                                  title: '',
                                ),
                                ...projects.map(
                                  (project) {
                                    return DropdownItem(
                                      value: (
                                        id: project.id,
                                        name: project.name,
                                      ),
                                      title: project.name,
                                    );
                                  },
                                ),
                              ],
                              onChanged: (value) {
                                if (value != null) {
                                  bloc.add(
                                    TaskEditEvent.changeProject(
                                      projectId: value.id,
                                      projectName: value.name,
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      gapHeight8,
                      Row(
                        children: [
                          BaseDateInputWidget(
                            label: context.tr.startDate,
                            value: task.startDate,
                            onPressedChangeDate: () async {
                              var date = await getDate();

                              if (date != null) {
                                bloc.add(
                                  TaskEditEvent.changeStartDate(
                                    value: date,
                                  ),
                                );
                              }
                            },
                            onChangeDate: (value) {
                              bloc.add(
                                TaskEditEvent.changeStartDate(
                                  value: value,
                                ),
                              );
                            },
                          ),
                          gapWidth8,
                          BaseDateInputWidget(
                            label: context.tr.expectedEndDate,
                            value: task.expectedEndDate,
                            onPressedChangeDate: () async {
                              var date = await getDate();

                              if (date != null) {
                                bloc.add(
                                  TaskEditEvent.changeEndDate(
                                    value: date,
                                  ),
                                );
                              }
                            },
                            onChangeDate: (value) {
                              bloc.add(
                                TaskEditEvent.changeEndDate(
                                  value: value,
                                ),
                              );
                            },
                          ),
                          gapWidth8,
                          Expanded(
                            child: BaseTextFormField(
                              label: context.tr.estEffort,
                              initialValue: task.estimatedEffort,
                              hintText: context.tr.hours,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'^\d+\:?\d{0,2}'),
                                ),
                              ],
                              onChanged: (value) {
                                bloc.add(
                                  TaskEditEvent.changeEstimatedEffort(
                                    value: value,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      gapHeight8,
                      const Divider(),
                      Text(
                        context.tr.details,
                        style: const TextStyle(
                          fontSize: Sizes.size16,
                          color: AppColor.primaryColorSwatch,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      gapHeight24,
                      Row(
                        children: [
                          Expanded(
                            child: BaseDropdownButtonField(
                              label: context.tr.priority,
                              value: task.priority,
                              isExpanded: true,
                              items: TaskPriority.values.map((priority) {
                                return DropdownItem(
                                  value: priority,
                                  title: priority.name(context),
                                );
                              }).toList(),
                              onChanged: (value) {
                                if (value != null) {
                                  bloc.add(
                                    TaskEditEvent.changePriority(
                                      value: value,
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          gapWidth16,
                          Expanded(
                            child: BaseDropdownButtonField(
                              label: context.tr.status,
                              value: task.status,
                              isExpanded: true,
                              items: TaskStatus.values.map((status) {
                                return DropdownItem(
                                  value: status,
                                  title: status.name(context),
                                );
                              }).toList(),
                              onChanged: (value) {
                                if (value != null) {
                                  bloc.add(
                                    TaskEditEvent.changeStatus(
                                      value: value,
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      gapHeight8,
                      BaseTextFormField(
                        key: Key('notes-${context.languageCode}'),
                        label: context.tr.notes,
                        maxLines: 5,
                        initialValue: task.notesList[context.languageCode],
                        onChanged: (value) {
                          bloc.add(
                            TaskEditEvent.changeNotes(
                              value: value,
                            ),
                          );
                        },
                      ),
                      gapHeight8,
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            context.tr.assignTo,
                            style: const TextStyle(
                              color: AppColor.primaryColorSwatch,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          FilledButton.icon(
                            icon: const Icon(
                              Icons.add,
                            ),
                            label: Text(context.tr.addEmployee),
                            onPressed: () async {
                              var result =
                                  await showDialog<List<AppointmentUser>?>(
                                context: context,
                                builder: (context) {
                                  return AssignToList(
                                    assignTo: task.assignTo,
                                  );
                                },
                              );

                              if (result != null) {
                                bloc.add(
                                  TaskEditEvent.changeSelectedTaskAssignTo(
                                    employees: result,
                                  ),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                      gapHeight8,
                      SizedBox(
                        height: Sizes.size152,
                        child: ListView.builder(
                          itemCount: task.assignTo.length,
                          itemBuilder: (context, index) {
                            var employee = task.assignTo[index];

                            return ListTile(
                              title: Text(
                                '${employee.firstName} ${employee.lastName}',
                              ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.delete,
                                  color: AppColor.red,
                                ),
                                onPressed: () {
                                  bloc.add(
                                    TaskEditEvent.removeSelectedTaskAssignTo(
                                      employee: employee,
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
