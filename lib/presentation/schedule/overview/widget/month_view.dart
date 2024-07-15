import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/enum/days_of_week.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MonthView extends StatelessWidget {
  final DateTime startOfMonth;
  final ValueChanged<DateTime> onSelectedDate;

  final List<Appointment> appointments;

  const MonthView({
    super.key,
    required this.appointments,
    required this.startOfMonth,
    required this.onSelectedDate,
  });

  @override
  Widget build(BuildContext context) {
    int daysInMonth =
        DateTime(startOfMonth.year, startOfMonth.month + 1, 0).day;
    int firstWeekdayOfMonth = DateTime(
          startOfMonth.year,
          startOfMonth.month,
          1,
        ).weekday %
        7;

    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            children: DaysOfWeek.values.map((day) {
              return Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(day.name(context)),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
            ),
            itemBuilder: (context, index) {
              return DayCell(
                index: index,
                startDayOffset: firstWeekdayOfMonth,
                totalDays: daysInMonth,
                startOfMonth: startOfMonth,
                appointments: appointments,
                onSelectedDate: onSelectedDate,
              );
            },
            itemCount: daysInMonth + firstWeekdayOfMonth,
          ),
        ),
      ],
    );
  }
}

class DayCell extends StatelessWidget {
  final int index;
  final int startDayOffset;
  final int totalDays;
  final DateTime startOfMonth;
  final List<Appointment> appointments;
  final ValueChanged<DateTime> onSelectedDate;

  const DayCell({
    super.key,
    required this.index,
    required this.startDayOffset,
    required this.totalDays,
    required this.startOfMonth,
    required this.appointments,
    required this.onSelectedDate,
  });

  @override
  Widget build(BuildContext context) {
    final dayNumber = index - startDayOffset + 1;

    if (dayNumber < 1 || dayNumber > totalDays) {
      return Container();
    }

    DateTime dayDate = startOfMonth.copyWith(day: dayNumber);

    List<Appointment> dayAppointments = appointments.where((appointment) {
      return appointment.startDateTime.year == dayDate.year &&
          appointment.startDateTime.month == dayDate.month &&
          appointment.startDateTime.day == dayDate.day;
    }).toList();

    return GestureDetector(
      onPanUpdate: (details) {
        // Lógica para arrastar eventos
      },
      child: Container(
        margin: const EdgeInsets.all(Sizes.size4),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.primaryColorSwatch.withOpacity(.4),
          ),
          borderRadius: BorderRadius.circular(Sizes.size8),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(Sizes.size4),
                child: IconButton(
                  icon: Text('$dayNumber'),
                  onPressed: () {
                    onSelectedDate.call(
                      startOfMonth.copyWith(
                        day: dayNumber,
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: dayAppointments.map((appointment) {
                    return Padding(
                      padding: const EdgeInsets.all(
                        Sizes.size2,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColor.backgroundColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              Sizes.size4,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(Sizes.size4),
                          child: Text(
                            '${hourFormatByHoursAndMinutes(appointment.startDateTime)}-${hourFormatByHoursAndMinutes(appointment.endDateTime)} ${appointment.title.isNotEmpty ? appointment.title : '(No title)'}',
                            style: const TextStyle(
                              fontSize: 9,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String hourFormatByHoursAndMinutes(DateTime date) {
    return DateFormat('hh:mm a').format(date);
  }
}
