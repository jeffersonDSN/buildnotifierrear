import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/schedule/edit/bloc/schedule_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppointmentDatesForm extends StatelessWidget {
  final SchedulePeriodType periodType;
  final List<Appointment> appointments;
  final Appointment selectedAppointment;
  final ValueChanged<SchedulePeriodType?> onChangedPeriodType;

  AppointmentDatesForm({
    super.key,
    required this.periodType,
    required this.appointments,
    required this.selectedAppointment,
    required this.onChangedPeriodType,
  });

  final DateFormat hourFormat = DateFormat.jm();
  final DateFormat dayFormat = DateFormat.yMEd();

  @override
  Widget build(BuildContext context) {
    return Column(
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
              value: SchedulePeriodType.repeatInPeriod,
              child: Text('Repeat in period'),
            ),
          ],
          onChanged: onChangedPeriodType,
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
                              readOnly: true,
                              enabled: appointment == selectedAppointment,
                              initialValue: dayFormat.format(
                                appointment.startDateTime,
                              ),
                              decoration: const InputDecoration(
                                labelText: 'Date',
                              ),
                              onTap: () async {
                                var picked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(
                                    2000,
                                  ),
                                  lastDate: DateTime(
                                    2101,
                                  ),
                                );
                              },
                            ),
                          ),
                          gapWidth4,
                          Flexible(
                            flex: 1,
                            child: TextFormField(
                              enabled: appointment == selectedAppointment,
                              initialValue:
                                  hourFormat.format(appointment.startDateTime),
                              decoration: const InputDecoration(
                                labelText: 'Start',
                              ),
                            ),
                          ),
                          gapWidth4,
                          Flexible(
                            flex: 1,
                            child: TextFormField(
                              enabled: appointment == selectedAppointment,
                              initialValue:
                                  hourFormat.format(appointment.endDateTime),
                              decoration: const InputDecoration(
                                labelText: 'End',
                              ),
                            ),
                          ),
                          gapWidth16,
                          Tooltip(
                            message: 'Add another period to this day',
                            child: IconButton(
                              icon: const Icon(
                                Icons.add_circle,
                                color: AppColor.primaryColorSwatch,
                              ),
                              onPressed: () {
                                bloc.add(
                                  ScheduleEditEvent.addDate(
                                    date: appointment.endDateTime.add(
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
                                ScheduleEditEvent.remodeAppointment(
                                  value: appointment,
                                ),
                              );
                            },
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: appointment == selectedAppointment
                                ? AppColor.primaryColorSwatch
                                : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      bloc.add(
                        ScheduleEditEvent.changeSelectedAppointment(
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
                        child: const Text('Add a day'),
                        onPressed: () async {
                          var selectedDay = await showDatePicker(
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
                            initialDate: DateTime.now(),
                          );

                          if (selectedDay != null) {
                            bloc.add(
                              ScheduleEditEvent.addDate(
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
    );
  }
}
