import 'package:buildnotifierrear/domain/core/time_utils.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/widget/timecards_day_details_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskEditWidget extends StatelessWidget {
  final List<Timecard> timecards;
  final VoidCallback onCancel;

  final DateFormat dayFormat = DateFormat('EEEE, MMM d yyyy');

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
          Expanded(
            child: TimecardsDayDetailsListWidget(
              timecards: timecards,
            ),
          ),
          gapHeight16,
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
              textAlign: TextAlign.end,
              formatTime(total.hours, total.minutes),
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
