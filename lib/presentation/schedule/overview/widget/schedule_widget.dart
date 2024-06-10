import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/widget/appointments_general_list_widget.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/widget/appointments_project_list_widget.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/widget/appointments_user_list_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

enum ScheduleType {
  general,
  user,
  project;
}

extension OnScheduleType on ScheduleType {
  T when<T extends Object?>({
    required T Function() gereral,
    required T Function() user,
    required T Function() project,
  }) {
    switch (this) {
      case ScheduleType.general:
        return gereral();
      case ScheduleType.user:
        return user();
      case ScheduleType.project:
        return project();
    }
  }

  bool get isGeneral => this == ScheduleType.general;
}

class ScheduleWidget extends StatelessWidget {
  final DateTime selectedDay;
  final ValueChanged<DateTime> onChangeSelectedDay;
  final List<Appointment> appointments;
  final bool isLoading;
  final ScheduleType scheduleType;
  final VoidCallback onCreate;
  final ValueChanged<String> onDelete;

  const ScheduleWidget({
    super.key,
    required this.selectedDay,
    required this.onChangeSelectedDay,
    required this.appointments,
    this.isLoading = false,
    required this.scheduleType,
    required this.onCreate,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: selectedDay,
          currentDay: DateTime.now(),
          calendarStyle: CalendarStyle(
            defaultTextStyle: const TextStyle(
              color: AppColor.primaryColorSwatch,
            ),
            weekendTextStyle: const TextStyle(
              color: AppColor.warning,
            ),
            selectedDecoration: const BoxDecoration(
              color: AppColor.primaryColorSwatch,
              shape: BoxShape.circle,
            ),
            todayDecoration: BoxDecoration(
              color: AppColor.primaryColorSwatch.shade300,
              shape: BoxShape.circle,
            ),
          ),
          selectedDayPredicate: (day) {
            return isSameDay(selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            onChangeSelectedDay.call(focusedDay);
          },
          calendarFormat: CalendarFormat.week,
          headerStyle: const HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,
          ),
        ),
        if (scheduleType.isGeneral) const Divider(),
        if (scheduleType.isGeneral)
          Padding(
            padding: const EdgeInsets.all(Sizes.size8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FilledButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Create'),
                  onPressed: onCreate,
                )
              ],
            ),
          ),
        const Divider(),
        Expanded(
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : appointments.isEmpty
                  ? const Center(
                      child: Text(
                        'has no appointment',
                      ),
                    )
                  : scheduleType.when(
                      gereral: () => AppointmentsGeneralListdWidget(
                        appointments: appointments,
                        onDelete: onDelete,
                      ),
                      user: () => AppointmentsUserListdWidget(
                        appointments: appointments,
                        onDelete: onDelete,
                      ),
                      project: () => AppointmentsProjectListdWidget(
                        appointments: appointments,
                        onDelete: onDelete,
                      ),
                    ),
        ),
      ],
    );
  }
}