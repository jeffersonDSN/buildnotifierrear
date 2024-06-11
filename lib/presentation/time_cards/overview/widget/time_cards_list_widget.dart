import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimecardsListWidget extends StatelessWidget {
  final List<DailyTotal> timecards;
  final ValueChanged<DateTime> onOpenDetails;

  final DateFormat dayFormat = DateFormat("EEEE");
  final DateFormat dateFormat = DateFormat("MMM dd");
  final DateFormat hourFormat = DateFormat.jm();
  final NumberFormat numberFormat = NumberFormat('00');

  TimecardsListWidget({
    super.key,
    required this.timecards,
    required this.onOpenDetails,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${timecard.hours}:${numberFormat.format(
                            timecard.minutes,
                          )}',
                          style: const TextStyle(
                            fontSize: Sizes.size20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.work_history_outlined,
                            color: AppColor.primaryColorSwatch,
                          ),
                          onPressed: () {
                            onOpenDetails.call(timecard.day);
                          },
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
