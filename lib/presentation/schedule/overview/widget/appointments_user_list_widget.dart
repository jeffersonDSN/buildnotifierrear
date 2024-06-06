import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppointmentsUserListdWidget extends StatelessWidget {
  final List<Appointment> appointments;

  final DateFormat hourFormat = DateFormat.jm();

  AppointmentsUserListdWidget({
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
                        'Project:',
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
