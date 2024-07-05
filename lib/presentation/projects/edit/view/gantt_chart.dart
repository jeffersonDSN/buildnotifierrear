import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/tasks_project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/projects/edit/view/chart_bars.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class GanttChart extends StatelessWidget {
  final List<Task> userData;
  final BuildContext context;

  const GanttChart({
    super.key,
    required this.userData,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    ScrollController horizontalController = ScrollController();

    DateFormat dateFormat = DateFormat('MM/dd/yyyy');

    var bloc = BlocProvider.of<TasksProjectEditBloc>(context);

    var state = bloc.state.asLoaded;

    return Listener(
      onPointerSignal: (PointerSignalEvent event) {
        if (event is PointerScrollEvent) {
          var viewRangeToFitScreen =
              state.viewRangeToFitScreen - (event.scrollDelta.dy / 100);
          if (viewRangeToFitScreen < 20) {
            viewRangeToFitScreen = 20;
          } else if (state.viewRangeToFitScreen > 150) {
            viewRangeToFitScreen = 150;
          }

          bloc.add(
            TasksProjectEditEvent.changeViewRangeToFitScreen(
              value: viewRangeToFitScreen,
            ),
          );
        }
      },
      child: SizedBox(
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
                        state.viewRangeToFitScreen,
                    child: Stack(
                      fit: StackFit.loose,
                      children: <Widget>[
                        Row(
                          children: state.viewRange.map((day) {
                            return Container(
                              width:
                                  chartViewWidth / state.viewRangeToFitScreen,
                              decoration: BoxDecoration(
                                color: dateFormat.format(day) ==
                                        dateFormat.format(DateTime.now())
                                    ? AppColor.primaryColorSwatch
                                        .withOpacity(.4)
                                    : day.weekday > 5
                                        ? AppColor.backgroundColor
                                        : AppColor.lightColor,
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
                          data: userData,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height:
                        0.67 * (chartViewWidth / state.viewRangeToFitScreen),
                    color: AppColor.greyColorSwatch.shade200,
                    child: Row(
                      children: state.viewRange.map((day) {
                        return SizedBox(
                          width: chartViewWidth / state.viewRangeToFitScreen,
                          child: Text(
                            DateFormat('MM/dd').format(day),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 0.21 *
                                  (chartViewWidth / state.viewRangeToFitScreen),
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
      ),
    );
  }
}
