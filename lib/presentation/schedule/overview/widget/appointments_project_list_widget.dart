import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppointmentsProjectListdWidget extends StatelessWidget {
  final List<Appointment> appointments;

  final DateFormat hourFormat = DateFormat.jm();

  AppointmentsProjectListdWidget({
    super.key,
    required this.appointments,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
              Expanded(
                child: Text(
                  '${hourFormat.format(appointment.startDateTime)} - ${hourFormat.format(appointment.endDateTime)}',
                ),
              ),
              Expanded(
                child: Text(appointment.title),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Task:',
                        style: TextStyle(
                          color: AppColor.primaryColorSwatch,
                        ),
                      ),
                      gapWidth4,
                      Text(
                        'N/A',
                      ),
                    ],
                  ),
                ],
              ),
              gapHeight8,
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'Assign to:',
                    style: TextStyle(
                      color: AppColor.primaryColorSwatch,
                    ),
                  ),
                  gapWidth8,
                  Expanded(
                    child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      appointment.assignTo
                          .map((e) {
                            return ' ${e.firstName} ${e.lastName}';
                          })
                          .toString()
                          .replaceAll('(', '')
                          .replaceAll(')', ''),
                      style: const TextStyle(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
