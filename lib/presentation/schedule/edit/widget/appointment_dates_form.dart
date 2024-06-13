import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/schedule/edit/bloc/schedule_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/schedule/edit/widget/date_input_widget.dart';
import 'package:buildnotifierrear/presentation/schedule/edit/widget/hour_input_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class AppointmentDatesForm extends StatelessWidget {
  final SchedulePeriodType periodType;
  final List<Appointment> appointments;
  final Appointment selectedAppointment;
  final ValueChanged<SchedulePeriodType?> onChangedPeriodType;
  final ValueChanged<Appointment> onPressedAddPeriod;
  final ValueChanged<Appointment> onPressedRemoveAppointment;
  final ValueChanged<Appointment> onChangeSelectedAppointment;
  final ValueChanged<DateTime> onPressedAddAdd;
  final ValueChanged<DateTime> onChangeDate;
  final ValueChanged<DateTime> onChangeStart;
  final ValueChanged<DateTime> onChangeEnd;

  const AppointmentDatesForm({
    super.key,
    required this.periodType,
    required this.appointments,
    required this.selectedAppointment,
    required this.onChangedPeriodType,
    required this.onPressedAddPeriod,
    required this.onPressedRemoveAppointment,
    required this.onChangeSelectedAppointment,
    required this.onPressedAddAdd,
    required this.onChangeDate,
    required this.onChangeStart,
    required this.onChangeEnd,
  });

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
        Column(
          children: [
            ...appointments.map(
              (appointment) {
                GlobalKey<FormState> formKey = GlobalKey<FormState>();

                return InkWell(
                  child: SizedBox(
                    height: Sizes.size48,
                    child: Form(
                      key: formKey,
                      child: Row(
                        children: [
                          DateInputWidget(
                            value: appointment.startDateTime,
                            enabled: appointment == selectedAppointment,
                            onPressedChangeDate: () async {
                              var date = await getDate();

                              if (date != null) {
                                onChangeDate.call(date);
                              }
                            },
                            onChangeDate: onChangeDate,
                          ),
                          gapWidth4,
                          HourInputWidget(
                            hintText: 'Start',
                            enabled: appointment == selectedAppointment,
                            value: appointment.startDateTime,
                            onChangeValue: onChangeStart,
                          ),
                          gapWidth4,
                          HourInputWidget(
                            hintText: 'End',
                            enabled: appointment == selectedAppointment,
                            value: appointment.endDateTime,
                            onChangeValue: onChangeEnd,
                          ),
                          gapWidth4,
                          Tooltip(
                            message: 'Add another period to this day',
                            child: IconButton(
                              icon: const Icon(
                                Icons.add_circle,
                                color: AppColor.primaryColorSwatch,
                              ),
                              onPressed: () {
                                onPressedAddPeriod.call(appointment);
                              },
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: AppColor.red,
                            ),
                            onPressed: () {
                              onPressedRemoveAppointment.call(appointment);
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
                  ),
                  onTap: () {
                    onChangeSelectedAppointment.call(appointment);
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
                        var selectedDay = await getDate();

                        if (selectedDay != null) {
                          onPressedAddAdd.call(selectedDay);
                        }
                      },
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
