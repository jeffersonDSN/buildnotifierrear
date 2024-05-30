import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TasksStatusWidget extends StatelessWidget {
  const TasksStatusWidget({super.key});

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
                'Task status',
                style: TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              gapHeight16,
              SizedBox(
                height: Sizes.size48,
                child: PieChart(
                  PieChartData(
                    centerSpaceRadius: Sizes.size24,
                    sections: [
                      PieChartSectionData(
                        value: 10,
                        radius: Sizes.size12,
                        color: AppColor.red,
                        showTitle: false,
                      ),
                      PieChartSectionData(
                        value: 25,
                        radius: Sizes.size12,
                        showTitle: false,
                        color: AppColor.warning,
                      ),
                      PieChartSectionData(
                        value: 50,
                        radius: Sizes.size12,
                        showTitle: false,
                        color: AppColor.green,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
