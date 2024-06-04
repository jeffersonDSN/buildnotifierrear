import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/time_cards/overview/widget/time_cards_list_widget.dart';
import 'package:flutter/material.dart';

class TimeCardsOverviewWidget extends StatelessWidget {
  final List<TimeCard> timeCards;
  final ValueChanged<DateTime> onOpenDetails;

  const TimeCardsOverviewWidget({
    super.key,
    required this.timeCards,
    required this.onOpenDetails,
  });

  @override
  Widget build(BuildContext context) {
    var total = timeCards.totalHoursAndMinutes;

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
              ),
            ),
            trailing: SizedBox(
              width: Sizes.size112,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${total.hours}:${total.minutes}',
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
          TimeCardsListWidget(
            timeCards: timeCards.dailyTotal,
            onOpenDetails: onOpenDetails,
          ),
        ],
      ),
    );
  }
}
