import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
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

class TaskEditView extends StatelessWidget {
  final String projectID;
  final CrudType type;

  final VoidCallback onCancel;
  final VoidCallback onSave;

  const TaskEditView({
    super.key,
    required this.projectID,
    required this.type,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<TaskEditBloc>(context);

    bloc.add(
      TaskEditEvent.load(
        projectId: projectID,
        crudType: type,
      ),
    );

    Future<DateTime?> getDate() async {
      return showDatePicker(
        context: context,
        firstDate: DateTime.utc(2010, 10, 16),
        lastDate: DateTime.utc(2030, 3, 14),
        initialDate: DateTime.now(),
      );
    }

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
            type.when(
              create: () => context.tr.newTask,
              update: (id) => context.tr.editTask,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: BlocBuilder<TaskEditBloc, TaskEditState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            empty: () => Container(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (crudType, task) {
              return Column(
                children: [
                  const Divider(),
                  gapHeight16,
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(Sizes.size8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BaseTextFormField(
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
                              gapHeight16,
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
                              gapHeight24,
                              const Divider(),
                              gapHeight8,
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
                                      items: [
                                        DropdownItem(
                                          value: 0,
                                          title: 'Low',
                                        ),
                                        DropdownItem(
                                          value: 1,
                                          title: 'Medium',
                                        ),
                                        DropdownItem(
                                          value: 2,
                                          title: 'High',
                                        ),
                                      ],
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
                                      items: [
                                        DropdownItem(
                                          value: 0,
                                          title: 'To do',
                                        ),
                                        DropdownItem(
                                          value: 1,
                                          title: 'Doing',
                                        ),
                                        DropdownItem(
                                          value: 2,
                                          title: 'Blocked',
                                        ),
                                        DropdownItem(
                                          value: 3,
                                          title: 'Done',
                                        ),
                                      ],
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
                              // gapHeight16,
                              // BaseTextFormField(
                              //   label: 'Notes',
                              //   maxLines: 2,
                              //   initialValue: task.notes,
                              //   onChanged: (value) {
                              //     // bloc.add(
                              //     //   ProjectEditEvent.changeDescription(value: value),
                              //     // );
                              //   },
                              // ),
                              // gapHeight16,
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   children: [
                              //     const Text(
                              //       'Assign to:',
                              //       style: TextStyle(
                              //         color: AppColor.primaryColorSwatch,
                              //         fontWeight: FontWeight.bold,
                              //       ),
                              //     ),
                              //     const Spacer(),
                              //     FilledButton.icon(
                              //       icon: const Icon(
                              //         Icons.add,
                              //       ),
                              //       label: const Text('Add a user'),
                              //       onPressed: () async {
                              //         var result = await showDialog<List<AppointmentUser>?>(
                              //           context: context,
                              //           builder: (context) {
                              //             return const AssignToList(
                              //               //assignTo: selectedAppointment.assignTo,
                              //               assignTo: [],
                              //             );
                              //           },
                              //         );

                              //         if (result != null) {
                              //           // bloc.add(
                              //           //   ScheduleEditEvent.changeSelectedAppointmentAssignTo(
                              //           //     value: result,
                              //           //   ),
                              //           // );
                              //         }
                              //       },
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(
                              //   height: 50,
                              //   child: ListView.builder(
                              //     itemCount: 0,
                              //     itemBuilder: (context, index) {
                              //       //var user = selectedAppointment.assignTo[index];

                              //       return ListTile(
                              //         title: const Text(
                              //           '',
                              //           //'${user.firstName} ${user.lastName}',
                              //         ),
                              //         trailing: IconButton(
                              //           icon: const Icon(
                              //             Icons.delete,
                              //             color: AppColor.red,
                              //           ),
                              //           onPressed: () {
                              //             // bloc.add(
                              //             //   ScheduleEditEvent
                              //             //       .removeSelectedAppointmentAssignTo(
                              //             //     user: user,
                              //             //   ),
                              //             // );
                              //           },
                              //         ),
                              //       );
                              //     },
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(Sizes.size8),
                          child: FilledButton.icon(
                            icon: const Icon(
                              Icons.check,
                            ),
                            label: Text(
                              type.when(
                                create: () => context.tr.createTask,
                                update: (id) => context.tr.updateTask,
                              ),
                            ),
                            onPressed: () {
                              bloc.add(TaskEditEvent.save(onSave: onSave));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
