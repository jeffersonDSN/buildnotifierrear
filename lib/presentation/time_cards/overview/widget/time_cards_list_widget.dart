import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeCardsListWidget extends StatelessWidget {
  final List<DailyTotal> timeCards;
  final ValueChanged<DateTime> onOpenDetails;

  final DateFormat dayFormat = DateFormat("EEEE");
  final DateFormat dateFormat = DateFormat("MMM dd");
  final DateFormat hourFormat = DateFormat.jm();
  final NumberFormat numberFormat = NumberFormat('00');

  TimeCardsListWidget({
    super.key,
    required this.timeCards,
    required this.onOpenDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 1,
        child: timeCards.isEmpty
            ? const Center(
                child: Text(
                  'has no time card',
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(Sizes.size8),
                child: ListView.builder(
                  itemCount: timeCards.length,
                  itemBuilder: (context, index) {
                    var timeCard = timeCards[index];

                    return ListTile(
                      title: Text(
                        dayFormat.format(timeCard.day),
                      ),
                      subtitle: Text(
                        dateFormat.format(timeCard.day),
                      ),
                      trailing: SizedBox(
                        width: Sizes.size112,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${timeCard.hours}:${numberFormat.format(
                                timeCard.minutes,
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
                                onOpenDetails.call(timeCard.day);
                              },
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
