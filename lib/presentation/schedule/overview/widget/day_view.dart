import 'package:buildnotifierrear/domain/core/utils.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DayView extends StatelessWidget {
  final List<Appointment> appointments;

  const DayView({
    super.key,
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

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: LayoutBuilder(
        builder: (
          chartContext,
          constraints,
        ) {
          return SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  height: 24 * 1200 / 25,
                  child: Stack(
                    fit: StackFit.loose,
                    children: <Widget>[
                      Column(
                        children: List.generate(
                          24,
                          (index) {
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
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                      Stack(
                        children: [
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

                            double width = (constraints.maxWidth - 100) /
                                overlappingAppointments.length;

                            double left = 55 +
                                (constraints.maxWidth - 55) /
                                    overlappingAppointments.length *
                                    overlappingIndex;

                            if (remainingHeight > 0) {
                              return Positioned(
                                top: (startDateTime + 0.2) * (1200 / 25),
                                left: left,
                                width: width,
                                height: (remainingHeight - 0.1) * (1200 / 25),
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
                                        ),
                                      ),
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
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '${appointment.title}, ${hourFormatByHoursAndMinutes(appointment.startDateTime.hour, appointment.startDateTime.minute)} - ${hourFormatByHoursAndMinutes(appointment.endDateTime.hour, appointment.endDateTime.minute)}',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                            ),
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
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String hourFormatByHoursAndMinutes(int hour, int minute) {
    return DateFormat('hh:mm a').format(DateTime(0, 1, 1, hour, minute));
  }

  String formatHour(int hour) {
    return DateFormat('h a').format(DateTime(0, 1, 1, hour));
  }
}
