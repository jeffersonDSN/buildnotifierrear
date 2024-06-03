import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeCardsDayDetailsListWidget extends StatelessWidget {
  final List<TimeCard> timecards;

  final DateFormat hourFormat = DateFormat.jm();
  final NumberFormat numberFormat = NumberFormat('00');

  TimeCardsDayDetailsListWidget({
    super.key,
    required this.timecards,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: timecards.length,
      itemBuilder: (context, index) {
        var timeCard = timecards[index];

        var total = timeCard.totalHoursAndMinutes;

        return Card(
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.all(Sizes.size16),
            child: Expanded(
              child: Row(
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
                              ),
                            ),
                            Text(
                              hourFormat.format(timeCard.start),
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
                              timeCard.startLocation!,
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
                        if (timeCard.end != null)
                          Row(
                            children: [
                              const Text(
                                'End: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Sizes.size12,
                                ),
                              ),
                              Text(
                                hourFormat.format(timeCard.end!),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Sizes.size16,
                                ),
                              ),
                            ],
                          ),
                        if (timeCard.end != null)
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: AppColor.primaryColorSwatch,
                              ),
                              gapHeight4,
                              Text(
                                timeCard.endLocation!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: Sizes.size12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        if (timeCard.end != null)
                          const Divider(
                            color: AppColor.primaryColorSwatch,
                          ),
                      ],
                    ),
                  ),
                  gapWidth32,
                  Text(
                    '${total.hours}:${numberFormat.format(total.minutes)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Sizes.size24,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
