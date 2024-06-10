import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/schedule/edit/bloc/schedule_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/schedule/schedule_edit_assign_to/schedule_edit_assign_to_list.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ScheduleEditView extends IView {
  final CrudType type;

  final DateFormat hourFormat = DateFormat.jm();
  final DateFormat dayFormat = DateFormat.yMEd();

  ScheduleEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ScheduleEditBloc>(context);

    TextEditingController titleController = TextEditingController();

    bloc.add(
      ScheduleEditEvent.load(
        type: type,
      ),
    );

    return BaseScaffold(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          size: Sizes.size32,
        ),
        onPressed: () {
          appBloc(context).add(
            const AppEvent.changeView(
              mod: Mod.schedule(
                type: ViewType.overview(),
              ),
            ),
          );
        },
      ),
      title: type.when(
        create: () => 'New appointment',
        update: (id) => 'Edit appointment',
      ),
      child: BlocBuilder<ScheduleEditBloc, ScheduleEditState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            empty: () => Container(),
            loaded: (
              periodType,
              appointments,
              selectedAppointment,
              projects,
              tasks,
            ) {
              if (titleController.text != selectedAppointment!.title) {
                titleController.text = selectedAppointment.taskName;
              }

              return Column(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.size16),
                        child: Form(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Dates:',
                                      style: TextStyle(
                                        color: AppColor.primaryColorSwatch,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    DropdownButton<SchedulePeriodType>(
                                      value: periodType,
                                      items: const [
                                        DropdownMenuItem(
                                          value: SchedulePeriodType.noRepeat,
                                          child: Text('Does not repeat'),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              SchedulePeriodType.repeatInPeriod,
                                          child: Text('Repeat in period'),
                                        ),
                                      ],
                                      onChanged: (value) {
                                        if (value != null) {
                                          bloc.add(
                                            ScheduleEditEvent.changePeriodType(
                                              value: value,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    Expanded(
                                      child: ListView(
                                        children: [
                                          ...appointments.map(
                                            (appointment) {
                                              return InkWell(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                    Sizes.size8,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Flexible(
                                                        flex: 2,
                                                        child: TextFormField(
                                                          enabled: appointment ==
                                                              selectedAppointment,
                                                          initialValue:
                                                              dayFormat.format(
                                                            appointment
                                                                .startDateTime,
                                                          ),
                                                          decoration:
                                                              const InputDecoration(
                                                            labelText: 'Date',
                                                            labelStyle:
                                                                TextStyle(
                                                              fontSize:
                                                                  Sizes.size12,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      gapWidth4,
                                                      Flexible(
                                                        flex: 1,
                                                        child: TextFormField(
                                                          enabled: appointment ==
                                                              selectedAppointment,
                                                          initialValue: hourFormat
                                                              .format(appointment
                                                                  .startDateTime),
                                                          decoration:
                                                              const InputDecoration(
                                                            labelText: 'Start',
                                                            labelStyle:
                                                                TextStyle(
                                                              fontSize:
                                                                  Sizes.size12,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      gapWidth4,
                                                      Flexible(
                                                        flex: 1,
                                                        child: TextFormField(
                                                          enabled: appointment ==
                                                              selectedAppointment,
                                                          initialValue: hourFormat
                                                              .format(appointment
                                                                  .endDateTime),
                                                          decoration:
                                                              const InputDecoration(
                                                            labelText: 'End',
                                                            labelStyle:
                                                                TextStyle(
                                                              fontSize:
                                                                  Sizes.size12,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      gapWidth16,
                                                      Tooltip(
                                                        message:
                                                            'Add another period to this day',
                                                        child: IconButton(
                                                          icon: const Icon(
                                                            Icons.add_circle,
                                                            color: AppColor
                                                                .primaryColorSwatch,
                                                          ),
                                                          onPressed: () {
                                                            bloc.add(
                                                              ScheduleEditEvent
                                                                  .addDate(
                                                                date: appointment
                                                                    .endDateTime
                                                                    .add(
                                                                  const Duration(
                                                                    hours: 1,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      IconButton(
                                                        icon: const Icon(
                                                          Icons.delete,
                                                          color: AppColor.red,
                                                        ),
                                                        onPressed: () {
                                                          bloc.add(
                                                            ScheduleEditEvent
                                                                .remodeAppointment(
                                                              value:
                                                                  appointment,
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                      Icon(
                                                        Icons.arrow_forward,
                                                        color: appointment ==
                                                                selectedAppointment
                                                            ? AppColor
                                                                .primaryColorSwatch
                                                            : Colors
                                                                .transparent,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                onTap: () {
                                                  bloc.add(
                                                    ScheduleEditEvent
                                                        .changeSelectedAppointment(
                                                      value: appointment,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                          if (periodType.isNoRepeat)
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: Sizes.size16,
                                              ),
                                              child: Row(
                                                children: [
                                                  TextButton(
                                                    child:
                                                        const Text('Add a day'),
                                                    onPressed: () async {
                                                      var selectedDay =
                                                          await showDatePicker(
                                                        context: context,
                                                        firstDate: DateTime.utc(
                                                          2010,
                                                          10,
                                                          16,
                                                        ),
                                                        lastDate: DateTime.utc(
                                                          2030,
                                                          3,
                                                          14,
                                                        ),
                                                        initialDate:
                                                            DateTime.now(),
                                                      );

                                                      if (selectedDay != null) {
                                                        bloc.add(
                                                          ScheduleEditEvent
                                                              .addDate(
                                                            date: selectedDay,
                                                          ),
                                                        );
                                                      }
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              gapWidth16,
                              const VerticalDivider(),
                              gapWidth16,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'Title',
                                      ),
                                      controller: titleController,
                                      onChanged: (value) {
                                        bloc.add(
                                          ScheduleEditEvent
                                              .changeSelectedAppointmentTitle(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                    gapHeight8,
                                    DropdownButtonFormField<
                                        ({String id, String name})>(
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Project',
                                        ),
                                      ),
                                      isExpanded: true,
                                      value: (
                                        id: selectedAppointment.projectId,
                                        name: selectedAppointment.projectName,
                                      ),
                                      items: [
                                        const DropdownMenuItem(
                                          value: (id: '', name: ''),
                                          child: Text(''),
                                        ),
                                        ...projects.map((project) {
                                          return DropdownMenuItem(
                                            value: (
                                              id: project.id,
                                              name: project.name,
                                            ),
                                            child: Text(project.name),
                                          );
                                        }),
                                      ],
                                      onChanged: (value) {
                                        if (value != null) {
                                          bloc.add(
                                            ScheduleEditEvent
                                                .changeSelectedAppointmentProject(
                                              id: value.id,
                                              value: value.name,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    gapHeight8,
                                    DropdownButtonFormField<
                                        ({String id, String title})>(
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Task',
                                        ),
                                      ),
                                      isExpanded: true,
                                      value: (
                                        id: selectedAppointment.taskId,
                                        title: selectedAppointment.taskName,
                                      ),
                                      items: [
                                        const DropdownMenuItem(
                                          value: (id: '', title: ''),
                                          child: Text(''),
                                        ),
                                        ...tasks.map(
                                          (task) {
                                            return DropdownMenuItem(
                                              value: (
                                                id: task.id,
                                                title: task.title
                                              ),
                                              child: Text(task.title),
                                            );
                                          },
                                        ),
                                      ],
                                      onChanged: (value) {
                                        if (value != null) {
                                          bloc.add(
                                            ScheduleEditEvent
                                                .changeSelectedAppointmentTask(
                                              id: value.id,
                                              value: value.title,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    gapHeight8,
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'Location',
                                      ),
                                    ),
                                    gapHeight8,
                                    TextFormField(
                                      maxLines: 3,
                                      decoration: const InputDecoration(
                                        labelText: 'Description',
                                      ),
                                    ),
                                    gapHeight16,
                                    const Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Assign to:',
                                          style: TextStyle(
                                            color: AppColor.primaryColorSwatch,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Spacer(),
                                        FilledButton.icon(
                                          icon: const Icon(
                                            Icons.add,
                                          ),
                                          label: const Text('Add a user'),
                                          onPressed: () async {
                                            var result = await showDialog<
                                                List<AppointmentUser>?>(
                                              context: context,
                                              builder: (context) {
                                                return ScheduleEditAssignToList(
                                                  assignTo: selectedAppointment
                                                      .assignTo,
                                                );
                                              },
                                            );

                                            if (result != null) {
                                              bloc.add(
                                                ScheduleEditEvent
                                                    .changeSelectedAppointmentAssignTo(
                                                  value: result,
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount:
                                            selectedAppointment.assignTo.length,
                                        itemBuilder: (context, index) {
                                          var user = selectedAppointment
                                              .assignTo[index];

                                          return ListTile(
                                            title: Text(
                                              '${user.firstName} ${user.lastName}',
                                            ),
                                            trailing: IconButton(
                                              icon: const Icon(
                                                Icons.delete,
                                                color: AppColor.red,
                                              ),
                                              onPressed: () {
                                                bloc.add(
                                                  ScheduleEditEvent
                                                      .removeSelectedAppointmentAssignTo(
                                                    user: user,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  gapHeight16,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Sizes.size8),
                        child: FilledButton.icon(
                          icon: const Icon(
                            Icons.check,
                          ),
                          label: type.when(
                            create: () => const Text('Create appointment'),
                            update: (id) => const Text('Update appointment'),
                          ),
                          onPressed: () {
                            bloc.add(
                              ScheduleEditEvent.save(
                                callBack: () {
                                  appBloc(context).add(
                                    const AppEventChangeView(
                                      mod: Mod.schedule(
                                        type: ViewType.overview(),
                                      ),
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
                ],
              );
            },
          );
        },
      ),
    );
  }
}