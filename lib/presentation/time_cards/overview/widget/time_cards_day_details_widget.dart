import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/time_cards/overview/widget/time_cards_day_details_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class TaskEditWidget extends StatelessWidget {
  final List<TimeCard> timecards;
  final VoidCallback onCancel;

  final DateFormat dayFormat = DateFormat('EEEE, MMM d yyyy');

  TaskEditWidget({
    super.key,
    required this.timecards,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
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
          gapHeight16,
          Expanded(
            child: TimeCardsDayDetailsListWidget(
              timecards: timecards,
            ),
          ),
        ],
      ),
    );
  }
}
