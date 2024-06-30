import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_custom_card_widget.dart';
import 'package:buildnotifierrear/presentation/schedule/edit/bloc/schedule_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/schedule/edit/widget/appointment_dates_form.dart';
import 'package:buildnotifierrear/presentation/schedule/edit/widget/appointment_details_form.dart';
import 'package:buildnotifierrear/presentation/assign_to/assign_to_list.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScheduleEditView extends IView {
  final CrudType type;

  const ScheduleEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ScheduleEditBloc>(context);

    TextEditingController titleController = TextEditingController();
    TextEditingController locationController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    bloc.add(
      ScheduleEditEvent.load(
        type: type,
      ),
    );

    return BaseCustomCardWidget(
      body: BlocBuilder<ScheduleEditBloc, ScheduleEditState>(
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
                titleController.text = selectedAppointment.title;
              }

              if (locationController.text != selectedAppointment.location) {
                locationController.text = selectedAppointment.location;
              }

              return Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(Sizes.size16),
                      child: Form(
                        child: Row(
                          children: [
                            SizedBox(
                              width: Sizes.size564,
                              child: AppointmentDatesForm(
                                periodType: periodType,
                                appointments: appointments,
                                selectedAppointment: selectedAppointment,
                                onChangedPeriodType: (value) {
                                  if (value != null) {
                                    bloc.add(
                                      ScheduleEditEvent.changePeriodType(
                                        value: value,
                                      ),
                                    );
                                  }
                                },
                                onPressedAddPeriod: (value) {
                                  bloc.add(
                                    ScheduleEditEvent.addDate(
                                      date: value.endDateTime.add(
                                        const Duration(
                                          hours: 1,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                onPressedRemoveAppointment: (value) {
                                  bloc.add(
                                    ScheduleEditEvent.remodeAppointment(
                                      value: value,
                                    ),
                                  );
                                },
                                onChangeSelectedAppointment: (value) {
                                  bloc.add(
                                    ScheduleEditEvent.changeSelectedAppointment(
                                      value: value,
                                    ),
                                  );
                                },
                                onPressedAddAdd: (value) {
                                  bloc.add(
                                    ScheduleEditEvent.addDate(
                                      date: value,
                                    ),
                                  );
                                },
                                onChangeDate: (value) {
                                  bloc.add(
                                    ScheduleEditEvent
                                        .changeSelectedAppointmentDate(
                                      value: value,
                                    ),
                                  );
                                },
                                onChangeStart: (value) {
                                  bloc.add(
                                    ScheduleEditEvent
                                        .changeSelectedAppointmentStart(
                                      value: value,
                                    ),
                                  );
                                },
                                onChangeEnd: (value) {
                                  bloc.add(
                                    ScheduleEditEvent
                                        .changeSelectedAppointmentEnd(
                                      value: value,
                                    ),
                                  );
                                },
                              ),
                            ),
                            gapWidth4,
                            const VerticalDivider(),
                            gapWidth4,
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: Sizes.size332,
                                    child: AppointmentDetailsForm(
                                      titleController: titleController,
                                      locationController: locationController,
                                      descriptionController:
                                          descriptionController,
                                      project: (
                                        id: selectedAppointment.projectId,
                                        name: selectedAppointment.projectName,
                                      ),
                                      task: (
                                        id: selectedAppointment.taskId,
                                        title: selectedAppointment.taskName,
                                      ),
                                      projects: projects,
                                      tasks: tasks,
                                      onChangedTitle: (value) {
                                        bloc.add(
                                          ScheduleEditEvent
                                              .changeSelectedAppointmentTitle(
                                            value: value,
                                          ),
                                        );
                                      },
                                      onChangedLocation: (value) {
                                        bloc.add(
                                          ScheduleEditEvent
                                              .changeSelectedAppointmentLocation(
                                            value: value,
                                          ),
                                        );
                                      },
                                      onChangedDescription: (value) {
                                        bloc.add(
                                          ScheduleEditEvent
                                              .changeSelectedAppointmentDescription(
                                            value: value,
                                          ),
                                        );
                                      },
                                      onChangedProject: (value) {
                                        bloc.add(
                                          ScheduleEditEvent
                                              .changeSelectedAppointmentProject(
                                            id: value.id,
                                            value: value.name,
                                          ),
                                        );
                                      },
                                      onChangedTask: (value) {
                                        bloc.add(
                                          ScheduleEditEvent
                                              .changeSelectedAppointmentTask(
                                            id: value.id,
                                            value: value.title,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapHeight16,
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                              return AssignToList(
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
                                        var user =
                                            selectedAppointment.assignTo[index];

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
                ],
              );
            },
          );
        },
      ),
      footer: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(Sizes.size8),
            child: FilledButton.icon(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  AppColor.warning,
                ),
              ),
              icon: const Icon(Icons.close),
              label: Text(context.tr.close),
              onPressed: () {
                appBloc(context).add(
                  const AppEvent.goBack(),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Sizes.size8),
            child: FilledButton.icon(
              icon: const Icon(
                Icons.check,
              ),
              label: Text(context.tr.save),
              onPressed: () {
                bloc.add(
                  ScheduleEditEvent.save(
                    callBack: () {
                      appBloc(context).add(
                        const AppEvent.goBack(),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
