import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class TimeCardsTotalWidget extends StatelessWidget {
  final ({int hours, int minutes}) _total;

  const TimeCardsTotalWidget({
    super.key,
    required ({int hours, int minutes}) total,
  }) : _total = total;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: SizedBox(
        height: Sizes.size120,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.size8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Total hours of the period',
                style: TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              gapHeight24,
              Text(
                '${_total.hours}:${_total.minutes}',
                style: const TextStyle(
                  fontSize: Sizes.size20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
