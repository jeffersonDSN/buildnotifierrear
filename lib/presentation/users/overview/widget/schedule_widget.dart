import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class ScheduleWidget extends StatelessWidget {
  final DateTime selectedDay;
  final ValueChanged<DateTime> onChangeSelectedDay;
  final List<Appointment> appointments;
  final bool isLoading;

  final DateFormat hourFormat = DateFormat.jm();

  ScheduleWidget({
    super.key,
    required this.selectedDay,
    required this.onChangeSelectedDay,
    required this.appointments,
    this.isLoading = false,
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
        const Divider(),
        Expanded(
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : appointments.isEmpty
                  ? const Center(
                      child: Text(
                        'has no tasks',
                      ),
                    )
                  : ListView.separated(
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: appointments.length,
                      itemBuilder: (context, index) {
                        var appointment = appointments[index];

                        return ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Title:',
                                    style: TextStyle(
                                      color: AppColor.primaryColorSwatch,
                                    ),
                                  ),
                                  gapWidth4,
                                  Text(appointment.title),
                                ],
                              ),
                              Text(
                                '${hourFormat.format(appointment.startDateTime)} - ${hourFormat.format(appointment.endDateTime)}',
                                style: const TextStyle(
                                  fontSize: Sizes.size16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.edit,
                              color: AppColor.warning,
                            ),
                            onPressed: () {},
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              gapHeight8,
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Project:',
                                        style: TextStyle(
                                          color: AppColor.primaryColorSwatch,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      gapWidth4,
                                      Text(
                                        'N/A',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Task:',
                                        style: TextStyle(
                                          color: AppColor.primaryColorSwatch,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      gapWidth4,
                                      Text(
                                        'N/A',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              gapHeight8,
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: AppColor.primaryColorSwatch,
                                  ),
                                  gapWidth4,
                                  Expanded(
                                    child: Text(
                                      appointment.location.isNotEmpty
                                          ? appointment.location
                                          : 'N/A',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        fontSize: Sizes.size12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const CircleBorder(),
              elevation: 0,
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
      ],
    );
  }
}
