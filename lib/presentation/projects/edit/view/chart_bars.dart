import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/tasks_project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class DependencyLine extends CustomPainter {
  final BuildContext context;
  final Task task;
  final List<String> depTasksNumbers;
  final List<Task> tasks;
  final TasksProjectEditStateloaded state;

  const DependencyLine({
    Key? key,
    required this.context,
    required this.tasks,
    required this.task,
    required this.depTasksNumbers,
    required this.state,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var bloc = BlocProvider.of<TasksProjectEditBloc>(context);

    if (depTasksNumbers.isNotEmpty) {
      List<Task> depIssues = depTasksNumbers
          .map<Task>((e) => tasks.singleWhere((el) => el.id == e))
          .toList();
      for (var el in depIssues) {
        int indexDif = tasks.indexOf(task) - tasks.indexOf(el);

        if (indexDif > 0) {
          double issueLeft =
              bloc.calculateDistanceToLeftBorder(task.startDate!) *
                      chartViewWidth /
                      state.viewRangeToFitScreen +
                  ((state.isPanStartActive || state.isPanMiddleActive) &&
                          state.selectedTask == task
                      ? state.width
                      : 0);
          double depIssueLeft =
              bloc.calculateDistanceToLeftBorder(el.startDate!) *
                      chartViewWidth /
                      state.viewRangeToFitScreen +
                  ((state.isPanStartActive || state.isPanMiddleActive) &&
                          state.selectedTask == el
                      ? state.width
                      : 0);
          canvas.drawPath(
            Path()
              ..moveTo(
                  issueLeft +
                      (0.15 * (chartViewWidth / state.viewRangeToFitScreen)),
                  (0.31 * (chartViewWidth / state.viewRangeToFitScreen)) +
                      (0.04 * (chartViewWidth / state.viewRangeToFitScreen)))
              ..relativeLineTo(-(issueLeft - depIssueLeft), 0)
              ..relativeLineTo(
                  0,
                  (-(0.60 * (chartViewWidth / state.viewRangeToFitScreen)) -
                              (0.08 *
                                  (chartViewWidth /
                                      state.viewRangeToFitScreen))) *
                          indexDif.toDouble() +
                      (0.29 * (chartViewWidth / state.viewRangeToFitScreen))),
            Paint()
              ..color = AppColor.primaryColorSwatch
              ..style = PaintingStyle.stroke
              ..strokeCap = StrokeCap.round
              ..strokeWidth = 1,
          );
        }
      }
    }
  }

  @override
  bool shouldRepaint(DependencyLine oldDelegate) => true;
}

class ChartBars extends StatelessWidget {
  final List<Task> data;

  final BoxConstraints constraints;
  final ScrollController horizontalController;

  const ChartBars({
    super.key,
    required this.constraints,
    required this.horizontalController,
    this.data = const [],
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<TasksProjectEditBloc>(context);

    var state = bloc.state.asLoaded;

    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: Stack(
        children: [
          ListView.builder(
            itemCount: data.length,
            itemBuilder: (listContext, index) {
              var task = data[index];

              var remainingWidth = bloc.calculateRemainingWidth(
                task.startDate!,
                task.expectedEndDate!,
              );

              if (remainingWidth > 0) {
                return Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.passthrough,
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: CustomPaint(
                        painter: DependencyLine(
                          context: context,
                          tasks: data,
                          task: task,
                          depTasksNumbers: task.dependencies,
                          state: state,
                        ),
                        child: SizedBox(
                          width: state.viewRange.length *
                              chartViewWidth /
                              state.viewRangeToFitScreen,
                          height: (data.length *
                                  (0.67 *
                                      (chartViewWidth /
                                          state.viewRangeToFitScreen))) -
                              4,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: task.status == TaskStatus.toDo
                            ? task.startDate!.compareTo(DateFormat('yyyy/MM/dd')
                                            .parse(DateFormat('yyyy/MM/dd')
                                                .format(DateTime.now()))) <
                                        0 &&
                                    task.expectedEndDate!.compareTo(
                                            DateFormat('yyyy/MM/dd').parse(
                                                DateFormat('yyyy/MM/dd')
                                                    .format(DateTime.now()))) <
                                        0
                                ? AppColor.red.withAlpha(100)
                                : AppColor.success.withAlpha(100)
                            : AppColor.green.withAlpha(100),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height:
                          0.67 * (chartViewWidth / state.viewRangeToFitScreen),
                      width: remainingWidth *
                              chartViewWidth /
                              state.viewRangeToFitScreen -
                          (state.isPanStartActive && task == state.selectedTask
                              ? state.width
                              : state.isPanEndActive &&
                                      task == state.selectedTask
                                  ? -state.width
                                  : 0),
                      margin: EdgeInsets.only(
                        left: bloc.calculateDistanceToLeftBorder(
                                    task.startDate!) *
                                chartViewWidth /
                                state.viewRangeToFitScreen +
                            ((state.isPanStartActive ||
                                        state.isPanMiddleActive) &&
                                    task == state.selectedTask
                                ? state.width
                                : 0),
                        right: bloc.calculateDistanceToRightBorder(
                                    task.expectedEndDate!) *
                                chartViewWidth /
                                state.viewRangeToFitScreen -
                            ((state.isPanEndActive ||
                                        state.isPanMiddleActive) &&
                                    task == state.selectedTask
                                ? state.width
                                : 0),
                        top: index == 0 ? 4.0 : 2.0,
                        bottom: index == data.length - 1 ? 4.0 : 2.0,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onPanUpdate: (details) {
                              bloc.add(
                                TasksProjectEditEvent.changeStartDate(
                                  task: task,
                                  mediaQueryWidth:
                                      MediaQuery.of(context).size.width,
                                  globalPositionDx: details.globalPosition.dx,
                                  chartAreaWidth: constraints.biggest.width,
                                  pixels: horizontalController.position.pixels,
                                ),
                              );
                            },
                            onPanDown: (details) {
                              bloc.add(
                                TasksProjectEditEvent.startPan(
                                  task: task,
                                  type: PanType.start,
                                  startMousePos:
                                      horizontalController.position.pixels,
                                  initX: details.globalPosition.dx,
                                ),
                              );
                            },
                            onPanCancel: () {},
                            onPanEnd: (details) async {
                              bloc.add(
                                TasksProjectEditEvent.endPan(
                                  task: task,
                                  type: PanType.start,
                                ),
                              );
                            },
                            child: Container(
                              width: (remainingWidth *
                                                      chartViewWidth /
                                                      state
                                                          .viewRangeToFitScreen -
                                                  (state.isPanStartActive &&
                                                          task ==
                                                              state.selectedTask
                                                      ? state.width
                                                      : state.isPanEndActive &&
                                                              task ==
                                                                  state
                                                                      .selectedTask
                                                          ? -state.width
                                                          : 0)) /
                                              2 -
                                          1 <
                                      15
                                  ? (remainingWidth *
                                                  chartViewWidth /
                                                  state.viewRangeToFitScreen -
                                              (state.isPanStartActive &&
                                                      task == state.selectedTask
                                                  ? state.width
                                                  : state.isPanEndActive &&
                                                          task ==
                                                              state.selectedTask
                                                      ? -state.width
                                                      : 0)) /
                                          2 -
                                      1
                                  : 15,
                              decoration: BoxDecoration(
                                color: task.status == TaskStatus.toDo
                                    ? task.startDate!.compareTo(DateFormat(
                                                    'yyyy/MM/dd')
                                                .parse(DateFormat('yyyy/MM/dd')
                                                    .format(DateTime.now()))) <
                                            0
                                        ? AppColor.red.withAlpha(100)
                                        : AppColor.success.withAlpha(100)
                                    : AppColor.green.withAlpha(100),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onPanUpdate: (details) {
                                bloc.add(
                                  TasksProjectEditEvent.changeDates(
                                    task: task,
                                    mediaQueryWidth:
                                        MediaQuery.of(context).size.width,
                                    globalPositionDx: details.globalPosition.dx,
                                    chartAreaWidth: constraints.biggest.width,
                                    pixels:
                                        horizontalController.position.pixels,
                                  ),
                                );
                              },
                              onPanDown: (details) {
                                bloc.add(
                                  TasksProjectEditEvent.startPan(
                                    task: task,
                                    type: PanType.middle,
                                    startMousePos:
                                        horizontalController.position.pixels,
                                    initX: details.globalPosition.dx,
                                  ),
                                );
                              },
                              onPanCancel: () {},
                              onPanEnd: (details) async {
                                bloc.add(
                                  TasksProjectEditEvent.endPan(
                                    task: task,
                                    type: PanType.middle,
                                  ),
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  task.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(fontSize: 10.0),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onPanUpdate: (details) {
                              bloc.add(
                                TasksProjectEditEvent.changeEndDate(
                                  task: task,
                                  mediaQueryWidth:
                                      MediaQuery.of(context).size.width,
                                  globalPositionDx: details.globalPosition.dx,
                                  chartAreaWidth: constraints.biggest.width,
                                  pixels: horizontalController.position.pixels,
                                ),
                              );
                            },
                            onPanDown: (details) {
                              bloc.add(
                                TasksProjectEditEvent.startPan(
                                  task: task,
                                  type: PanType.end,
                                  startMousePos:
                                      horizontalController.position.pixels,
                                  initX: details.globalPosition.dx,
                                ),
                              );
                            },
                            onPanCancel: () {},
                            onPanEnd: (details) async {
                              bloc.add(
                                TasksProjectEditEvent.endPan(
                                  task: task,
                                  type: PanType.end,
                                ),
                              );
                            },
                            child: Container(
                              width: (remainingWidth *
                                                      chartViewWidth /
                                                      state
                                                          .viewRangeToFitScreen -
                                                  (state.isPanStartActive &&
                                                          task ==
                                                              state.selectedTask
                                                      ? state.width
                                                      : state.isPanEndActive &&
                                                              task ==
                                                                  state
                                                                      .selectedTask
                                                          ? -state.width
                                                          : 0)) /
                                              2 -
                                          1 <
                                      15
                                  ? (remainingWidth *
                                                  chartViewWidth /
                                                  state.viewRangeToFitScreen -
                                              (state.isPanStartActive &&
                                                      task == state.selectedTask
                                                  ? state.width
                                                  : state.isPanEndActive &&
                                                          task ==
                                                              state.selectedTask
                                                      ? -state.width
                                                      : 0)) /
                                          2 -
                                      1
                                  : 15,
                              decoration: BoxDecoration(
                                color: task.status == TaskStatus.toDo
                                    ? task.expectedEndDate!.compareTo(
                                                DateFormat('yyyy/MM/dd').parse(
                                                    DateFormat('yyyy/MM/dd')
                                                        .format(
                                                            DateTime.now()))) <
                                            0
                                        ? AppColor.red.withAlpha(100)
                                        : AppColor.success.withAlpha(100)
                                    : AppColor.green.withAlpha(100),
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
