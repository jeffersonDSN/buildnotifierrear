import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/widget/timecards_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimecardsOverviewWidget extends StatelessWidget {
  final List<Timecard> timecards;
  final ValueChanged<DateTime> onOpenDetails;

  TimecardsOverviewWidget({
    super.key,
    required this.timecards,
    required this.onOpenDetails,
  });

  final NumberFormat numberFormat = NumberFormat('00');

  @override
  Widget build(BuildContext context) {
    var total = timecards.totalHoursAndMinutes;

    return Padding(
      padding: const EdgeInsets.all(Sizes.size16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: const Text(
              'Total hours of the period',
              style: TextStyle(
                color: AppColor.primaryColorSwatch,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: SizedBox(
              width: Sizes.size112,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${numberFormat.format(total.hours)}:${numberFormat.format(total.minutes)}',
                    style: const TextStyle(
                      fontSize: Sizes.size20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          TimecardsListWidget(
            timecards: timecards.dailyTotal,
            onOpenDetails: onOpenDetails,
          ),
        ],
      ),
    );
  }
}
