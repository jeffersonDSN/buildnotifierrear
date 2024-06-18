import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/widget/timecards_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

typedef ValueGetterGrossPay = double Function(int hours, int minutes);

class TimecardsOverviewWidget extends StatelessWidget {
  final Period selectedPeriod;
  final List<Period> periods;
  final ValueChanged<Period> onChangePeriod;
  final List<Timecard> timecards;
  final ValueChanged<DateTime> onOpenDetails;
  final bool isLoading;
  final ValueGetterGrossPay getGrossPay;

  TimecardsOverviewWidget({
    super.key,
    required this.selectedPeriod,
    required this.periods,
    required this.onChangePeriod,
    required this.timecards,
    required this.onOpenDetails,
    required this.getGrossPay,
    this.isLoading = false,
  });

  final NumberFormat numberFormat = NumberFormat('00');
  final DateFormat dateFormat = DateFormat.yMd();

  @override
  Widget build(BuildContext context) {
    var total = timecards.totalHoursAndMinutes;

    return Padding(
      padding: const EdgeInsets.all(Sizes.size16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButton(
            value: selectedPeriod,
            isExpanded: true,
            items: periods.map(
              (period) {
                return DropdownMenuItem(
                  value: period,
                  child: Text(
                    '${period.name}: ${dateFormat.format(period.startDate)} - ${dateFormat.format(period.endDate)} ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ).toList(),
            onChanged: (value) {
              if (value != null) {
                onChangePeriod.call(value);
              }
            },
          ),
          gapHeight16,
          TimecardsListWidget(
            timecards: timecards.dailyTotal,
            onOpenDetails: onOpenDetails,
          ),
          const Divider(),
          gapHeight16,
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
          gapHeight4,
          ListTile(
            title: const Text(
              'Gross pay',
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
                    getGrossPay(
                      total.hours,
                      total.minutes,
                    ).toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: Sizes.size20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
