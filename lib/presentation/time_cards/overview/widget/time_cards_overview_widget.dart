import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/widget/tasks_status_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/time_cards/overview/widget/time_cards_list_widget.dart';
import 'package:buildnotifierrear/presentation/time_cards/overview/widget/time_cards_total_widget.dart';
import 'package:flutter/material.dart';

class TimeCardsOverviewWidget extends StatelessWidget {
  final List<TimeCard> timeCards;
  //final ValueChanged<Task> onCalendar;
  //final ValueChanged<Task> onEdit;
  //final VoidCallback onCreateNewTask;

  const TimeCardsOverviewWidget({
    super.key,
    required this.timeCards,
    //required this.onCalendar,
    //required this.onEdit,
    //required this.onCreateNewTask,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.size16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TimeCardsTotalWidget(
                  total: timeCards.totalHoursAndMinutes,
                ),
              ),
              gapWidth8,
              const Expanded(
                child: TasksStatusWidget(),
              ),
            ],
          ),
          TimeCardsListWidget(
            timeCards: timeCards,
          ),
        ],
      ),
    );
  }
}
