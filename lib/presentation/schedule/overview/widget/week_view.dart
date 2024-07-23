import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/enum/days_of_week.dart';
import 'package:flutter/material.dart';

import 'package:buildnotifierrear/domain/core/utils.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:intl/intl.dart';

class WeekView extends StatelessWidget {
  final DateTime startOfWeek;
  final ValueChanged<DateTime> onSelectedDate;
  final List<Appointment> appointments;

  const WeekView({
    super.key,
    required this.startOfWeek,
    required this.onSelectedDate,
    required this.appointments,
  });

  @override
  Widget build(BuildContext context) {
    double calculateRemainingHeight(double startedAt, double endedAt) {
      double projectLength = endedAt - startedAt;
      if (startedAt < 0 || endedAt > 23 || startedAt > endedAt) {
        return 0;
      }
      if (startedAt >= 0 && endedAt <= 23) {
        return projectLength;
      }
      if (startedAt < 0 && endedAt <= 23) {
        return endedAt;
      }
      if (startedAt >= 0 && endedAt > 23) {
        return 23 - startedAt;
      }
      return 0;
    }

    bool isOverlapping(Appointment a, Appointment b) {
      return !(a.endDateTime.isBefore(b.startDateTime) ||
          a.startDateTime.isAfter(b.endDateTime));
    }

    List<Appointment> getOverlappingAppointments(Appointment appointment) {
      return appointments
          .where((other) => isOverlapping(appointment, other))
          .toList();
    }

    return Column(
      children: [
        SizedBox(
          height: Sizes.size64,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 45,
            ),
            child: Row(
                children: DaysOfWeek.values.map(
              (dayOfWeek) {
                DateTime date =
                    startOfWeek.add(Duration(days: dayOfWeek.index));

                return Expanded(
                  child: IconButton(
                    icon: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(dayOfWeek.name(context)),
                        Text('${date.day}'),
                      ],
                    ),
                    onPressed: () {
                      onSelectedDate.call(date);
                    },
                  ),
                );
              },
            ).toList()),
          ),
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (chartContext, constraints) {
              double columnWidth = (constraints.maxWidth - 70) / 7;

              return SingleChildScrollView(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 24 * 1200 / 25,
                      child: Stack(
                        fit: StackFit.loose,
                        children: <Widget>[
                          Column(
                            children: List.generate(24, (index) {
                              return SizedBox(
                                height: 1200 / 25,
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    children: [
                                      gapWidth8,
                                      Text(formatHour(index)),
                                      gapWidth16,
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            Divider(),
                                            Spacer(),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 39,
                            ),
                            child: Row(
                              children: List.generate(7, (index) {
                                return Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                          ...appointments.map((appointment) {
                            var startDateTime = parseTimeToDouble(
                              appointment.startDateTime.hour,
                              appointment.startDateTime.minute,
                            );

                            var endDateTime = parseTimeToDouble(
                              appointment.endDateTime.hour,
                              appointment.endDateTime.minute,
                            );

                            var remainingHeight = calculateRemainingHeight(
                              startDateTime,
                              endDateTime,
                            );

                            var overlappingAppointments =
                                getOverlappingAppointments(appointment);

                            var overlappingIndex =
                                overlappingAppointments.indexOf(appointment);

                            DateTime appointmentDate =
                                appointment.startDateTime;
                            int dayOffset =
                                appointmentDate.difference(startOfWeek).inDays;

                            double left = 45 +
                                (dayOffset * (dayOffset / 1.4)) +
                                (columnWidth * dayOffset) +
                                (columnWidth / overlappingAppointments.length) *
                                    overlappingIndex;

                            //if (dayOffset > 0) left -= 3;

                            double width =
                                columnWidth / overlappingAppointments.length;

                            double height =
                                (remainingHeight - 0.1) * (1200 / 25);

                            if (remainingHeight > 0) {
                              return Positioned(
                                top: (startDateTime + 0.2) * (1200 / 25),
                                left: left,
                                width: width,
                                height: height,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        AppColor.primaryColorSwatch.withAlpha(
                                      100,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // GestureDetector(
                                      //   onPanUpdate: (details) {},
                                      //   onPanDown: (details) {},
                                      //   onPanCancel: () {},
                                      //   onPanEnd: (details) {},
                                      //   child: Container(
                                      //     height: (remainingHeight *
                                      //                         1200 /
                                      //                         25) /
                                      //                     2 -
                                      //                 3 <
                                      //             15
                                      //         ? (remainingHeight * 1200 / 25) /
                                      //                 2 -
                                      //             3
                                      //         : 15,
                                      //   ),
                                      // ),
                                      Expanded(
                                        child: GestureDetector(
                                          behavior: HitTestBehavior.translucent,
                                          onPanUpdate: (details) {},
                                          onPanDown: (details) {},
                                          onPanCancel: () {},
                                          onPanEnd: (details) {},
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: Sizes.size8,
                                            ),
                                            child: () {
                                              if (width < 100) {
                                                if (height < 100) {
                                                  return Text(
                                                    '${hourFormatByHoursAndMinutes(appointment.startDateTime)} - ${hourFormatByHoursAndMinutes(appointment.endDateTime)} ${appointment.title}',
                                                    style: const TextStyle(
                                                      fontSize: 9,
                                                    ),
                                                  );
                                                }

                                                return Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '${hourFormatByHoursAndMinutes(appointment.startDateTime)} - ${hourFormatByHoursAndMinutes(appointment.endDateTime)} ${appointment.title}',
                                                      style: const TextStyle(
                                                        fontSize: 9,
                                                      ),
                                                    ),
                                                    gapHeight4,
                                                    ...appointment.assignTo.map(
                                                      (assign) {
                                                        return CircleAvatar(
                                                          radius: 15,
                                                          child: Text(
                                                            '${assign.firstName[0].toUpperCase()}${assign.lastName[0].toUpperCase()}',
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                );
                                              }

                                              return Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      '${hourFormatByHoursAndMinutes(appointment.startDateTime)} - ${hourFormatByHoursAndMinutes(appointment.endDateTime)} ${appointment.title}',
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                        fontSize: 9,
                                                      ),
                                                    ),
                                                  ),
                                                  ...appointment.assignTo
                                                      .map((assign) {
                                                    return CircleAvatar(
                                                      radius: 15,
                                                      child: Text(
                                                        '${assign.firstName[0].toUpperCase()}${assign.lastName[0].toUpperCase()}',
                                                        style: const TextStyle(
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                  gapWidth4,
                                                ],
                                              );
                                            }(),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onPanUpdate: (details) {},
                                        onPanDown: (details) {},
                                        onPanCancel: () {},
                                        onPanEnd: (details) {},
                                        child: Container(
                                          height: (remainingHeight *
                                                              1200 /
                                                              25) /
                                                          2 -
                                                      3 <
                                                  15
                                              ? (remainingHeight * 1200 / 25) /
                                                      2 -
                                                  3
                                              : 15,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            } else {
                              return Container();
                            }
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  String hourFormatByHoursAndMinutes(DateTime dateTime) {
    return DateFormat('hh:mm a').format(dateTime);
  }

  String formatHour(int hour) {
    return DateFormat('h a').format(DateTime(0, 1, 1, hour));
  }
}
