import 'package:buildnotifierrear/domain/core/time_utils.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimecardsListWidget extends StatelessWidget {
  final List<DailyTotal> timecards;
  final ValueChanged<DateTime>? onOpenDetails;

  final DateFormat dayFormat = DateFormat("EEEE");
  final DateFormat dateFormat = DateFormat("MMM dd");
  final DateFormat hourFormat = DateFormat.jm();

  TimecardsListWidget({
    super.key,
    required this.timecards,
    this.onOpenDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: timecards.isEmpty
          ? const Center(
              child: Text(
                'has no time card',
              ),
            )
          : ListView.builder(
              itemCount: timecards.length,
              itemBuilder: (context, index) {
                var timecard = timecards[index];

                return ListTile(
                  title: Text(
                    dayFormat.format(timecard.day),
                  ),
                  subtitle: Text(
                    dateFormat.format(timecard.day),
                  ),
                  trailing: SizedBox(
                    width: Sizes.size112,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          formatTime(timecard.hours, timecard.minutes),
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                            fontSize: Sizes.size20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (onOpenDetails != null)
                          Padding(
                            padding: const EdgeInsets.only(
                              left: Sizes.size8,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.work_history_outlined,
                                color: AppColor.primaryColorSwatch,
                              ),
                              onPressed: () {
                                onOpenDetails?.call(timecard.day);
                              },
                            ),
                          )
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
