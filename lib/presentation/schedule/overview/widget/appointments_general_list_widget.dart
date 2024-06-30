import 'package:buildnotifierrear/domain/core/time_utils.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class AppointmentsGeneralListdWidget extends StatelessWidget {
  final List<Appointment> appointments;
  final ValueChanged<String> onDelete;

  AppointmentsGeneralListdWidget({
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
              SizedBox(
                width: Sizes.size400,
                child: Row(
                  children: [
                    Text(
                      '${hourFormatByDateTime(appointment.startDateTime)} - ${hourFormatByDateTime(appointment.endDateTime)}',
                    ),
                    gapWidth24,
                    Text(
                      appointment.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Text(
                      'Project:',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColor.primaryColorSwatch,
                      ),
                    ),
                    gapWidth4,
                    Text(
                      appointment.projectName.isNotEmpty
                          ? appointment.projectName
                          : 'N/A',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Text(
                      'Task:',
                      style: TextStyle(
                        color: AppColor.primaryColorSwatch,
                      ),
                    ),
                    gapWidth4,
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      appointment.taskName.isNotEmpty
                          ? appointment.taskName
                          : 'N/A',
                    ),
                  ],
                ),
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
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Sizes.size400,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      'Assign to:',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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
              ),
              Expanded(
                flex: 2,
                child: Row(
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
              ),
            ],
          ),
        );
      },
    );
  }
}
