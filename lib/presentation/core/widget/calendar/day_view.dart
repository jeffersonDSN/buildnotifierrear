import 'package:buildnotifierrear/domain/core/time_utils.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Classes de exemplo para Appointment e parseTimeToDouble
class Appointment {
  final String id;
  final String title;
  final DateTime startDateTime;
  final DateTime endDateTime;

  Appointment({
    required this.id,
    required this.title,
    required this.startDateTime,
    required this.endDateTime,
  });
}

class DayView extends StatelessWidget {
  const DayView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Appointment> appointments = [
      Appointment(
        id: '1',
        title: 'Test',
        startDateTime: DateTime.now().copyWith(
          hour: 02,
          minute: 00,
        ),
        endDateTime: DateTime.now().copyWith(
          hour: 03,
          minute: 00,
        ),
      ),
      Appointment(
        id: '2',
        title: 'Test',
        startDateTime: DateTime.now().copyWith(
          hour: 02,
          minute: 00,
        ),
        endDateTime: DateTime.now().copyWith(
          hour: 04,
          minute: 00,
        ),
      ),
      Appointment(
        id: '3',
        title: 'Test 1',
        startDateTime: DateTime.now().copyWith(
          hour: 06,
          minute: 30,
        ),
        endDateTime: DateTime.now().copyWith(
          hour: 07,
          minute: 30,
        ),
      ),
      Appointment(
        id: '4',
        title: 'Test 2',
        startDateTime: DateTime.now().copyWith(
          hour: 07,
          minute: 00,
        ),
        endDateTime: DateTime.now().copyWith(
          hour: 10,
        ),
      ),
      Appointment(
        id: '5',
        title: 'Test 3',
        startDateTime: DateTime.now().copyWith(
          hour: 11,
        ),
        endDateTime: DateTime.now().copyWith(
          hour: 16,
        ),
      ),
    ];

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
                                    Text('$index:00'),
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

                            double left = 50 +
                                (constraints.maxWidth - 50) /
                                    overlappingAppointments.length *
                                    overlappingIndex;

                            double width = (constraints.maxWidth - 50) /
                                overlappingAppointments.length;

                            if (remainingHeight > 0) {
                              return Positioned(
                                top: startDateTime * (1200 / 25),
                                left: left,
                                width: width,
                                height: remainingHeight * (1200 / 25),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.primaryColorSwatch
                                        .withAlpha(100),
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
                                                      1 <
                                                  15
                                              ? (remainingHeight * 1200 / 25) /
                                                      2 -
                                                  1
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
                                                left: Sizes.size8),
                                            child: Text(
                                              '${appointment.title}, ${hourFormatByHoursAndMinutes(appointment.startDateTime.hour, appointment.startDateTime.minute)} - ${hourFormatByHoursAndMinutes(appointment.endDateTime.hour, appointment.endDateTime.minute)}',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                                      1 <
                                                  15
                                              ? (remainingHeight * 1200 / 25) /
                                                      2 -
                                                  1
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
}
