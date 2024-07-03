import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'tasks_project_edit_bloc.freezed.dart';
part 'tasks_project_edit_event.dart';
part 'tasks_projectedit_state.dart';

enum PanType {
  start,
  middle,
  end,
}

double chartViewWidth = 1200;
int viewRangeToFitScreen = 25;

class TasksProjectEditBloc
    extends Bloc<TasksProjectEditEvent, TasksProjectEditState> {
  TasksProjectEditBloc({
    required TasksController controller,
  }) : super(const TasksProjectEditState.init()) {
    on<TasksProjectEditEvent>(
      (event, emit) async {
        await event.when(
          load: (projectId, projectStartDate, projectEndDate) async {
            var viewRange = calculateNumberOfDaysBetween(
              projectStartDate,
              projectEndDate,
            );

            emit(
              TasksProjectEditState.loading(
                projectId: projectId,
                startDate: projectStartDate,
                endDate: projectEndDate,
                viewRange: viewRange,
              ),
            );

            var tasks = await controller.getAllByProject(projectId);

            emit(
              TasksProjectEditState.loaded(
                projectId: projectId,
                startDate: projectStartDate,
                endDate: projectEndDate,
                viewRange: viewRange,
                tasks: tasks,
              ),
            );
          },
          startPan: (task, type, startMousePos, initX) {
            emit(
              state.asLoaded.copyWith(
                startPanChartPos: startMousePos,
                selectedTask: task,
                isPanStartActive: type == PanType.start,
                isPanEndActive: type == PanType.end,
                isPanMiddleActive: type == PanType.middle,
                initX: initX,
              ),
            );
          },
          endPan: (task, type) async {
            Task newTask = task.copyWith();
            var width = state.asLoaded.width;

            int daysInterval =
                (width / (chartViewWidth / viewRangeToFitScreen)).abs().round();

            if (daysInterval > 0) {
              if (type == PanType.start || type == PanType.middle) {
                if (state.asLoaded.width >
                    (chartViewWidth / viewRangeToFitScreen * 0.5)) {
                  newTask = newTask.copyWith(
                    startDate: newTask.startDate!.add(
                      Duration(days: daysInterval),
                    ),
                  );
                } else if (width <
                    -(chartViewWidth / viewRangeToFitScreen * 0.5)) {
                  newTask = newTask.copyWith(
                    startDate: newTask.startDate!.subtract(
                      Duration(days: daysInterval),
                    ),
                  );
                }
              }

              if (type == PanType.end || type == PanType.middle) {
                if (width > (chartViewWidth / viewRangeToFitScreen * 0.5)) {
                  newTask = newTask.copyWith(
                    expectedEndDate: newTask.expectedEndDate!.add(
                      Duration(days: daysInterval),
                    ),
                  );
                } else if (width <
                    -(chartViewWidth / viewRangeToFitScreen * 0.5)) {
                  newTask = newTask.copyWith(
                    expectedEndDate: newTask.expectedEndDate!.subtract(
                      Duration(days: daysInterval),
                    ),
                  );
                }
              }

              width = 0;

              emit(
                state.asLoaded.copyWith(
                    width: 0,
                    isPanStartActive: false,
                    isPanEndActive: false,
                    isPanMiddleActive: false,
                    tasks: state.asLoaded.tasks.map(
                      (task) {
                        if (task.id == newTask.id) {
                          return newTask;
                        }
                        return task;
                      },
                    ).toList()),
              );

              await controller.updateDates(
                newTask.id,
                newTask.startDate!,
                newTask.expectedEndDate!,
              );
            }
          },
          changeStartDate: (
            task,
            mediaQueryWidth,
            globalPositionDx,
            chartAreaWidth,
            pixels,
          ) {
            var asLoaded = state.asLoaded;
            var remainingWidth = calculateRemainingWidth(
              task.startDate!,
              task.expectedEndDate!,
            );

            if (remainingWidth * chartViewWidth / viewRangeToFitScreen -
                    (globalPositionDx -
                        (globalPositionDx - 1) -
                        (asLoaded.startPanChartPos - pixels)) >=
                chartViewWidth / viewRangeToFitScreen) {
              if (calculateDistanceToLeftBorder(task.startDate!) *
                          chartViewWidth /
                          viewRangeToFitScreen +
                      (globalPositionDx -
                          (globalPositionDx - 1) -
                          (asLoaded.startPanChartPos - pixels)) >
                  0) {
                double width = globalPositionDx -
                    asLoaded.initX -
                    (asLoaded.startPanChartPos - pixels);

                emit(
                  state.asLoaded.copyWith(
                    width: width,
                  ),
                );
              } else {
                return;
              }
            } else {
              double width =
                  (remainingWidth - 1) * chartViewWidth / viewRangeToFitScreen;

              emit(
                state.asLoaded.copyWith(
                  width: width,
                ),
              );
            }
          },
          changeEndDate: (
            task,
            mediaQueryWidth,
            globalPositionDx,
            chartAreaWidth,
            pixels,
          ) {
            var asLoaded = state.asLoaded;
            var remainingWidth = calculateRemainingWidth(
              task.startDate!,
              task.expectedEndDate!,
            );

            if (remainingWidth * chartViewWidth / viewRangeToFitScreen +
                    (globalPositionDx -
                        asLoaded.initX -
                        (asLoaded.startPanChartPos - pixels)) >=
                chartViewWidth / viewRangeToFitScreen) {
              if (calculateDistanceToLeftBorder(task.startDate!) *
                              chartViewWidth /
                              viewRangeToFitScreen -
                          (globalPositionDx -
                              asLoaded.initX -
                              (asLoaded.startPanChartPos - pixels)) <
                      chartViewWidth /
                          viewRangeToFitScreen *
                          asLoaded.viewRange.length &&
                  calculateDistanceToRightBorder(task.expectedEndDate!) *
                              chartViewWidth /
                              viewRangeToFitScreen -
                          (globalPositionDx -
                              asLoaded.initX -
                              (asLoaded.startPanChartPos - pixels)) >
                      0) {
                double width = globalPositionDx -
                    asLoaded.initX -
                    (asLoaded.startPanChartPos - pixels);

                emit(
                  state.asLoaded.copyWith(
                    width: width,
                  ),
                );
              } else {
                return;
              }
            } else {
              double width =
                  (remainingWidth - 1) * chartViewWidth / -viewRangeToFitScreen;

              emit(
                state.asLoaded.copyWith(
                  width: width,
                ),
              );
            }
          },
          changeDates: (
            task,
            mediaQueryWidth,
            globalPositionDx,
            chartAreaWidth,
            pixels,
          ) {
            var asLoaded = state.asLoaded;

            if (calculateDistanceToLeftBorder(task.startDate!) *
                            chartViewWidth /
                            viewRangeToFitScreen +
                        (globalPositionDx -
                            asLoaded.initX -
                            (asLoaded.startPanChartPos - pixels)) >
                    0 &&
                calculateDistanceToLeftBorder(task.startDate!) *
                            chartViewWidth /
                            viewRangeToFitScreen +
                        (globalPositionDx -
                            asLoaded.initX -
                            (asLoaded.startPanChartPos - pixels)) <
                    chartViewWidth /
                        viewRangeToFitScreen *
                        asLoaded.viewRange.length &&
                calculateDistanceToRightBorder(task.expectedEndDate!) *
                            chartViewWidth /
                            viewRangeToFitScreen -
                        (globalPositionDx -
                            asLoaded.initX -
                            (asLoaded.startPanChartPos - pixels)) >
                    0) {
              double width = globalPositionDx -
                  asLoaded.initX -
                  (asLoaded.startPanChartPos - pixels);

              emit(
                state.asLoaded.copyWith(
                  width: width,
                ),
              );
            } else {
              return;
            }
          },
        );
      },
    );
  }

  int calculateDistanceToLeftBorder(DateTime projectStartedAt) {
    var startDate = state.asLoaded.startDate;
    if (projectStartedAt.compareTo(startDate) <= 0) {
      return 0;
    } else {
      return calculateNumberOfDaysBetween(startDate, projectStartedAt).length -
          1;
    }
  }

  int calculateDistanceToRightBorder(DateTime projectEndedAt) {
    var endDate = state.asLoaded.endDate;
    if (projectEndedAt.compareTo(endDate) > 0) {
      return 0;
    } else {
      return calculateNumberOfDaysBetween(projectEndedAt, endDate).length - 1;
    }
  }

  List<DateTime> calculateNumberOfDaysBetween(DateTime from, DateTime to) {
    List<DateTime> period = [];
    DateTime currentDate = from;

    do {
      period.add(currentDate);
      currentDate = currentDate.add(const Duration(days: 1));
    } while (currentDate.compareTo(to) <= 0);

    return period;
  }

  int calculateRemainingWidth(
    DateTime projectStartedAt,
    DateTime projectEndedAt,
  ) {
    var asLoaded = state.asLoaded;
    var startDate = asLoaded.startDate;
    var endDate = asLoaded.endDate;
    var viewRange = asLoaded.viewRange;

    int projectLength =
        calculateNumberOfDaysBetween(projectStartedAt, projectEndedAt).length;
    if (projectStartedAt.compareTo(startDate) >= 0 &&
        projectStartedAt.compareTo(endDate) <= 0) {
      if (projectLength <= viewRange.length) {
        return projectLength;
      } else {
        return viewRange.length -
            calculateNumberOfDaysBetween(startDate, projectStartedAt).length;
      }
    } else if (projectStartedAt.isBefore(startDate) &&
        projectEndedAt.isBefore(startDate)) {
      return 0;
    } else if (projectStartedAt.isBefore(startDate) &&
        projectEndedAt.isBefore(endDate)) {
      return projectLength -
          calculateNumberOfDaysBetween(projectStartedAt, startDate).length;
    } else if (projectStartedAt.isBefore(startDate) &&
        projectEndedAt.isAfter(endDate)) {
      return viewRange.length;
    }
    return 0;
  }
}
