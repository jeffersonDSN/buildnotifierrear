import 'package:buildnotifierrear/domain/core/time_utils.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class AppointmentsProjectListdWidget extends StatelessWidget {
  final List<Appointment> appointments;
  final ValueChanged<String> onDelete;

  const AppointmentsProjectListdWidget({
    super.key,
    required this.appointments,
    required this.onDelete,
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
                  '${hourFormatByDateTime(appointment.startDateTime)} - ${hourFormatByDateTime(appointment.endDateTime)}',
                ),
              ),
              Expanded(
                child: Text(appointment.title),
              ),
            ],
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.delete,
              color: AppColor.red,
            ),
            onPressed: () {
              onDelete.call(appointment.id);
            },
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapHeight8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Task:',
                        style: TextStyle(
                          color: AppColor.primaryColorSwatch,
                        ),
                      ),
                      gapWidth4,
                      Text(
                        appointment.taskName,
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
