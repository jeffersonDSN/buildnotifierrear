import 'package:buildnotifierrear/domain/core/utils.dart';
import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/widget/timecards_list_widget.dart';
import 'package:flutter/material.dart';

typedef ValueGetterGrossPay = double Function(int hours, int minutes);

class TimecardsOverviewWidget extends StatelessWidget {
  final Period selectedPeriod;

  final List<Timecard> timecards;
  final ValueChanged<DateTime>? onOpenDetails;
  final bool isLoading;
  final ValueGetterGrossPay getGrossPay;

  const TimecardsOverviewWidget({
    super.key,
    required this.selectedPeriod,
    required this.timecards,
    required this.getGrossPay,
    this.onOpenDetails,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    var total = timecards.totalHoursAndMinutes;

    return Padding(
      padding: const EdgeInsets.all(Sizes.size16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapHeight8,
          if (isLoading)
            const Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          if (!isLoading)
            Expanded(
              child: Row(
                children: [
                  TimecardsListWidget(
                    timecards: timecards.dailyTotal,
                    onOpenDetails: onOpenDetails,
                  ),
                ],
              ),
            ),
          const Divider(),
          gapHeight16,
          ListTile(
            title: Text(
              context.tr.totalHours,
              style: const TextStyle(
                color: AppColor.primaryColorSwatch,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(
              hourFormatByHoursAndMinutes(total.hours, total.minutes),
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontSize: Sizes.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          gapHeight4,
          ListTile(
            title: Text(
              context.tr.totalPayroll,
              style: const TextStyle(
                color: AppColor.primaryColorSwatch,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(
              textAlign: TextAlign.end,
              getGrossPay(
                total.hours,
                total.minutes,
              ).toStringAsFixed(2),
              style: const TextStyle(
                fontSize: Sizes.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
