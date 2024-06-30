import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/employees/who_checked_In/view/employees_who_checked_In_table.dart';
import 'package:buildnotifierrear/presentation/projects/overview/view/project_status_distribution_chart.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/view/task_status_distribution_chart.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class HomeOverviewView extends IView {
  const HomeOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          Sizes.size16,
          Sizes.size0,
          Sizes.size16,
          Sizes.size0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ProjectStatusDistributionChart(),
                ),
                Expanded(
                  child: TaskStatusDistributionChart(),
                ),
              ],
            ),
            EmployeesWhoCheckedInTable(),
          ],
        ),
      ),
    );
  }
}
