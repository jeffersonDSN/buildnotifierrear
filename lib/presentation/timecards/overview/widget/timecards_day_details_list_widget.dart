import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimecardsDayDetailsListWidget extends StatelessWidget {
  final List<Timecard> timecards;

  final DateFormat hourFormat = DateFormat.jm();
  final NumberFormat numberFormat = NumberFormat('00');

  TimecardsDayDetailsListWidget({
    super.key,
    required this.timecards,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: timecards.length,
      itemBuilder: (context, index) {
        var timecard = timecards[index];

        var total = timecard.totalHoursAndMinutes;

        return Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Started: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Sizes.size12,
                          color: AppColor.primaryColorSwatch,
                        ),
                      ),
                      Text(
                        hourFormat.format(timecard.start),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Sizes.size16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AppColor.primaryColorSwatch,
                      ),
                      gapHeight4,
                      Text(
                        timecard.startLocation!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: Sizes.size12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: AppColor.primaryColorSwatch,
                  ),
                  gapHeight8,
                  if (timecard.end != null)
                    Row(
                      children: [
                        const Text(
                          'End: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Sizes.size12,
                            color: AppColor.primaryColorSwatch,
                          ),
                        ),
                        Text(
                          hourFormat.format(timecard.end!),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Sizes.size16,
                          ),
                        ),
                      ],
                    ),
                  if (timecard.end != null)
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: AppColor.primaryColorSwatch,
                        ),
                        gapHeight4,
                        Text(
                          timecard.endLocation!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: Sizes.size12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  if (timecard.end != null)
                    const Divider(
                      color: AppColor.primaryColorSwatch,
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                Sizes.size24,
              ),
              child: Text(
                '${total.hours}:${numberFormat.format(total.minutes)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Sizes.size24,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}