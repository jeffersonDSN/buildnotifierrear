import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/widget/timecards_day_details_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskEditWidget extends StatelessWidget {
  final List<Timecard> timecards;
  final VoidCallback onCancel;

  final DateFormat dayFormat = DateFormat('EEEE, MMM d yyyy');
  final NumberFormat numberFormat = NumberFormat('00');

  TaskEditWidget({
    super.key,
    required this.timecards,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    var total = timecards.totalHoursAndMinutes;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: Sizes.size32,
          ),
          onPressed: onCancel,
        ),
        title: Center(
          child: Text(
            dayFormat.format(timecards[0].start),
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Divider(),
          ListTile(
            title: const Text(
              'Total hours of the day',
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
          gapHeight16,
          Expanded(
            child: TimecardsDayDetailsListWidget(
              timecards: timecards,
            ),
          ),
        ],
      ),
    );
  }
}
