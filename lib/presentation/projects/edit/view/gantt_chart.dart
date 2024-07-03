import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/tasks_project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/projects/edit/view/chart_bars.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class GanttChart extends StatelessWidget {
  final List<Task> userData;
  final BuildContext context;
  final Color color;

  const GanttChart({
    super.key,
    required this.userData,
    required this.context,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    ScrollController horizontalController = ScrollController();

    DateFormat dateFormat = DateFormat('MM/dd/yyyy');

    var bloc = BlocProvider.of<TasksProjectEditBloc>(context);

    var state = bloc.state.asLoaded;

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: LayoutBuilder(
        builder: (chartContext, constraints) {
          return SingleChildScrollView(
            controller: horizontalController,
            scrollDirection: Axis.horizontal,
            physics: state.isPanStartActive ||
                    state.isPanEndActive ||
                    state.isPanMiddleActive
                ? const NeverScrollableScrollPhysics()
                : const ClampingScrollPhysics(),
            child: Stack(
              children: [
                SizedBox(
                  width: bloc
                          .calculateNumberOfDaysBetween(
                            state.startDate,
                            state.endDate,
                          )
                          .length *
                      chartViewWidth /
                      viewRangeToFitScreen,
                  child: Stack(
                    fit: StackFit.loose,
                    children: <Widget>[
                      Row(
                        children: state.viewRange.map((day) {
                          return Container(
                            width: chartViewWidth / viewRangeToFitScreen,
                            decoration: BoxDecoration(
                              color: dateFormat.format(day) ==
                                      dateFormat.format(DateTime.now())
                                  ? AppColor.primaryColorSwatch.withOpacity(.4)
                                  : day.weekday > 5
                                      ? AppColor.backgroundColor
                                      : null,
                              border: Border(
                                right: BorderSide(
                                  color: Colors.grey.withAlpha(100),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      ChartBars(
                        horizontalController: horizontalController,
                        constraints: constraints,
                        color: color,
                        data: userData,
                      )
                    ],
                  ),
                ),
                Container(
                  height: Sizes.size32,
                  color: AppColor.greyColorSwatch.shade200,
                  child: Row(
                    children: state.viewRange.map((day) {
                      return SizedBox(
                        width: chartViewWidth / viewRangeToFitScreen,
                        child: Text(
                          DateFormat('MM/dd').format(day),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
