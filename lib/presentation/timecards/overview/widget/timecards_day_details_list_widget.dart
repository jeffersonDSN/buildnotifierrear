import 'package:buildnotifierrear/domain/core/time_utils.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimecardsDayDetailsListWidget extends StatelessWidget {
  final List<Timecard> timecards;

  final DateFormat hourFormat = DateFormat.jm();

  TimecardsDayDetailsListWidget({
    super.key,
    required this.timecards,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        Sizes.size8,
      ),
      child: ListView.separated(
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
                        Text(
                          context.tr.started,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Sizes.size12,
                            color: AppColor.primaryColorSwatch,
                          ),
                        ),
                        gapWidth8,
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
                          Text(
                            context.tr.end,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Sizes.size12,
                              color: AppColor.primaryColorSwatch,
                            ),
                          ),
                          gapWidth8,
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
                  formatTime(total.hours, total.minutes),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Sizes.size24,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
