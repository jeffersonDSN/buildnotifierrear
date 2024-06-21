import 'package:buildnotifierrear/domain/core/time_utils.dart';
import 'package:buildnotifierrear/domain/entities/activity/activity.dart';
import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/bloc/timecards_bloc.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/widget/timecards_overview_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

class TimecardsOverviewView extends IView {
  const TimecardsOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat.yMd();
    var bloc = BlocProvider.of<TimecardsOverviewBloc>(context);

    bloc.add(const TimecardsOverviewEvent.load(employeeId: ''));

    BarChartGroupData makeGroupData(
      int x,
      double y,
    ) {
      return BarChartGroupData(
        x: x,
        barRods: [
          BarChartRodData(
            toY: y,
            color: x >= 4 ? Colors.transparent : Colors.red,
            borderRadius: BorderRadius.zero,
            borderDashArray: x >= 4 ? [4, 4] : null,
            width: 5,
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          ),
        ],
      );
    }

    return BaseScaffold(
      title: context.tr.timecards,
      child: BlocBuilder<TimecardsOverviewBloc, TimecardsOverviewState>(
        bloc: bloc,
        builder: (context, state) {
          Period? selectedPeriod;
          List<Period> periods = [];

          if (!state.isEmpty) {
            selectedPeriod = state.isLoading
                ? state.asLoading.selectedPeriod
                : state.asLoaded.selectedPeriod;

            periods = state.isLoading
                ? state.asLoading.periods
                : state.asLoaded.periods;
          }

          return Column(
            children: [
              if (!state.isEmpty)
                BaseDropdownButtonField<Period>(
                  label: 'Select period',
                  value: selectedPeriod,
                  items: periods.map((period) {
                    return DropdownItem(
                      value: period,
                      title:
                          '${period.name}: ${dateFormat.format(period.startDate)} - ${dateFormat.format(period.endDate)} ',
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      bloc.add(
                        TimecardsOverviewEvent.changeSelectedPeriod(
                          period: value,
                        ),
                      );
                    }
                  },
                ),
              if (!state.isEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: Sizes.size16),
                  child: Row(
                    children: [
                      Card(
                        child: SizedBox(
                          width: Sizes.size300,
                          height: Sizes.size180,
                          child: Padding(
                            padding: const EdgeInsets.all(Sizes.size16),
                            child: () {
                              var isLoaded = state.isLoaded;

                              ({int hours, int minutes})? totalHoursProject;
                              ({int hours, int minutes})? totalHours;

                              if (isLoaded) {
                                var asLoaded = state.asLoaded;
                                totalHoursProject =
                                    asLoaded.activities.totalHoursAndMinutes;

                                totalHours =
                                    asLoaded.timeCards.totalHoursAndMinutes;

                                int remainingHours =
                                    totalHours.hours - totalHoursProject.hours;
                                int remainingMinutes = totalHours.minutes -
                                    totalHoursProject.minutes;

                                if (remainingMinutes < 0) {
                                  remainingHours -= 1;
                                  remainingMinutes += 60;
                                }

                                totalHours = (
                                  hours: remainingHours,
                                  minutes: remainingMinutes
                                );
                              }

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Allocation of hours in a project',
                                    style: TextStyle(
                                      fontSize: Sizes.size16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  gapHeight16,
                                  if (!isLoaded)
                                    const SizedBox(
                                      height: Sizes.size48,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    ),
                                  if (isLoaded)
                                    SizedBox(
                                      height: 50,
                                      child: PieChart(
                                        PieChartData(
                                          centerSpaceRadius: 25,
                                          sections: [
                                            PieChartSectionData(
                                              value: parseTimeToDouble(
                                                totalHoursProject!.hours,
                                                totalHoursProject.minutes,
                                              ),
                                              radius: 15,
                                              showTitle: false,
                                              color: AppColor.green,
                                            ),
                                            PieChartSectionData(
                                              value: parseTimeToDouble(
                                                totalHours!.hours,
                                                totalHours.minutes,
                                              ),
                                              radius: 15,
                                              showTitle: false,
                                              color: AppColor.warning,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  gapHeight16,
                                  Row(
                                    children: [
                                      Container(
                                        color: AppColor.green,
                                        width: 10,
                                        height: 10,
                                      ),
                                      gapWidth8,
                                      Text(
                                        'Hours assigned to a project ${isLoaded ? formatTime(totalHoursProject!.hours, totalHoursProject.minutes) : ''}',
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: AppColor.warning,
                                        width: 10,
                                        height: 10,
                                      ),
                                      gapWidth8,
                                      Text(
                                        'Hours not assigned to a project ${isLoaded ? formatTime(totalHours!.hours, totalHours.minutes) : ''}',
                                      )
                                    ],
                                  ),
                                ],
                              );
                            }(),
                          ),
                        ),
                      ),
                      // gapWidth8,
                      // Card(
                      //   child: SizedBox(
                      //     width: Sizes.size300,
                      //     height: Sizes.size180,
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(Sizes.size8),
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         children: [
                      //           const Text(
                      //             'Task status',
                      //             style: TextStyle(
                      //               fontSize: Sizes.size16,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           gapHeight16,
                      //           Expanded(
                      //             child: BarChart(
                      //               BarChartData(
                      //                 maxY: 300.0,
                      //                 barTouchData: BarTouchData(
                      //                   enabled: false,
                      //                 ),
                      //                 titlesData: const FlTitlesData(
                      //                   show: true,
                      //                   bottomTitles: AxisTitles(
                      //                     sideTitles: SideTitles(
                      //                       showTitles: false,
                      //                     ),
                      //                   ),
                      //                   leftTitles: AxisTitles(
                      //                     sideTitles: SideTitles(
                      //                       showTitles: false,
                      //                     ),
                      //                   ),
                      //                   topTitles: AxisTitles(
                      //                     sideTitles: SideTitles(
                      //                       showTitles: false,
                      //                     ),
                      //                   ),
                      //                   rightTitles: AxisTitles(
                      //                     sideTitles: SideTitles(
                      //                       showTitles: false,
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 borderData: FlBorderData(
                      //                   show: false,
                      //                 ),
                      //                 barGroups: List.generate(
                      //                   25,
                      //                   (i) => makeGroupData(
                      //                     i,
                      //                     Random().nextInt(290).toDouble() + 50,
                      //                   ),
                      //                 ),
                      //                 gridData: const FlGridData(show: false),
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // gapWidth8,
                      // Card(
                      //   child: SizedBox(
                      //     width: 200,
                      //     height: 125,
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(Sizes.size8),
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         children: [
                      //           const Text(
                      //             'Description',
                      //             style: TextStyle(
                      //               fontSize: Sizes.size16,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           gapHeight8,
                      //           Row(
                      //             children: [
                      //               Container(
                      //                 color: AppColor.green,
                      //                 width: 10,
                      //                 height: 10,
                      //               ),
                      //               gapWidth8,
                      //               const Text('On Track')
                      //             ],
                      //           ),
                      //           gapHeight8,
                      //           Row(
                      //             children: [
                      //               Container(
                      //                 color: AppColor.warning,
                      //                 width: 10,
                      //                 height: 10,
                      //               ),
                      //               gapWidth8,
                      //               const Text('At Risk of Delay')
                      //             ],
                      //           ),
                      //           gapHeight8,
                      //           Row(
                      //             children: [
                      //               Container(
                      //                 color: AppColor.red,
                      //                 width: 10,
                      //                 height: 10,
                      //               ),
                      //               gapWidth8,
                      //               const Text('Delayed')
                      //             ],
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              Expanded(
                child: state.when(
                  empty: () => Container(),
                  loading: (periods, selectedPeriod) {
                    return Card(
                      child: TimecardsOverviewWidget(
                        selectedPeriod: selectedPeriod,
                        isLoading: true,
                        timecards: const [],
                        getGrossPay: (hours, minutes) {
                          return 0;
                        },
                        onOpenDetails: (value) {},
                      ),
                    );
                  },
                  loaded: (
                    employeeId,
                    periods,
                    selectedPeriod,
                    timeCards,
                    users,
                    usersState,
                    projects,
                    projectsState,
                    activities,
                  ) {
                    return Column(
                      children: [
                        Expanded(
                          child: Card(
                            child: TimecardsOverviewWidget(
                              selectedPeriod: selectedPeriod,
                              timecards: timeCards,
                              isLoading: false,
                              getGrossPay: (hours, minutes) {
                                return users.getGrossPay(timeCards);
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
