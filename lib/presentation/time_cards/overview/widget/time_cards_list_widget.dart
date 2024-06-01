import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeCardsListWidget extends StatelessWidget {
  final List<TimeCard> timeCards;

  final DateFormat dayFormat = DateFormat("EEEE");
  final DateFormat dateFormat = DateFormat("MMM dd");
  final DateFormat hourFormat = DateFormat.jm();

  TimeCardsListWidget({
    super.key,
    required this.timeCards,
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

                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.size8),
                        child: Row(
                          children: [
                            SizedBox(
                              width: Sizes.size88,
                              child: Column(
                                children: [
                                  Text(
                                    dayFormat.format(timeCard.start),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: Sizes.size16,
                                    ),
                                  ),
                                  Text(
                                    dateFormat.format(timeCard.start),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: Sizes.size16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            gapWidth32,
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Started: ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: Sizes.size12,
                                        ),
                                      ),
                                      Text(
                                        hourFormat.format(timeCard.start),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: Sizes.size16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: AppColor.primaryColorSwatch,
                                      ),
                                      gapHeight4,
                                      Text(
                                        timeCard.startLocation!,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: Sizes.size12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    color: AppColor.primaryColorSwatch,
                                  ),
                                  gapHeight8,
                                  if (timeCard.end != null)
                                    Row(
                                      children: [
                                        const Text(
                                          'End: ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: Sizes.size12,
                                          ),
                                        ),
                                        Text(
                                          hourFormat.format(timeCard.end!),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: Sizes.size16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  if (timeCard.end != null)
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on,
                                          color: AppColor.primaryColorSwatch,
                                        ),
                                        gapHeight4,
                                        Text(
                                          timeCard.endLocation!,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: Sizes.size12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  if (timeCard.end != null)
                                    const Divider(
                                      color: AppColor.primaryColorSwatch,
                                    ),
                                ],
                              ),
                            ),
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
