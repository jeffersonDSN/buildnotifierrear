import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class MonthView extends StatelessWidget {
  const MonthView({super.key});

  @override
  Widget build(BuildContext context) {
    final daysOfWeek = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'];

    DateTime now = DateTime.now();
    int daysInMonth = DateTime(now.year, now.month + 1, 0).day;
    int firstWeekdayOfMonth = DateTime(now.year, now.month, 1).weekday % 7;

    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            children: daysOfWeek.map((day) {
              return Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(day),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
            ),
            itemBuilder: (context, index) {
              return DayCell(
                index: index,
                startDayOffset: firstWeekdayOfMonth,
                totalDays: daysInMonth,
              );
            },
            itemCount: daysInMonth + firstWeekdayOfMonth,
          ),
        ),
      ],
    );
  }
}

class DayCell extends StatelessWidget {
  final int index;
  final int startDayOffset;
  final int totalDays;

  const DayCell({
    super.key,
    required this.index,
    required this.startDayOffset,
    required this.totalDays,
  });

  @override
  Widget build(BuildContext context) {
    final dayNumber = index - startDayOffset + 1;

    if (dayNumber < 1 || dayNumber > totalDays) {
      return Container();
    }

    return GestureDetector(
      onPanUpdate: (details) {
        // Logica para arrastar eventos
      },
      child: Container(
        margin: const EdgeInsets.all(Sizes.size4),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.primaryColorSwatch.withOpacity(.4),
          ),
          borderRadius: BorderRadius.circular(Sizes.size8),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(Sizes.size4),
                child: Text('$dayNumber'),
              ),
            ),
            // Adicione eventos aqui
          ],
        ),
      ),
    );
  }
}
