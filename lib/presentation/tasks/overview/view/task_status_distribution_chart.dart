import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/bloc/tasks_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphic/graphic.dart';

class TaskStatusDistributionChart extends StatelessWidget {
  const TaskStatusDistributionChart({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<TasksOverviewBloc>(context);

    if (bloc.state.isInit) {
      bloc.add(TasksOverviewEvent.load());
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.size16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.tr.taskStatusDistribution,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            gapHeight16,
            BlocBuilder<TasksOverviewBloc, TasksOverviewState>(
              bloc: bloc,
              builder: (context, state) {
                var toDo = TaskStatus.toDo.name(context);
                var doing = TaskStatus.doing.name(context);
                var blocked = TaskStatus.blocked.name(context);

                return state.maybeWhen(
                  orElse: () => Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (tasks) {
                    var lengthOfToDo = tasks.lengthOf(
                      TaskStatus.toDo,
                    );
                    var lengthOfDoing = tasks.lengthOf(
                      TaskStatus.doing,
                    );

                    var lengthOfBlocked = tasks.lengthOf(
                      TaskStatus.blocked,
                    );

                    return Row(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          child: Chart(
                            data: [
                              {'genre': toDo, 'sold': lengthOfToDo},
                              {'genre': doing, 'sold': lengthOfDoing},
                              {'genre': blocked, 'sold': lengthOfBlocked},
                            ],
                            variables: {
                              'genre': Variable(
                                accessor: (Map map) => map['genre'] as String,
                              ),
                              'sold': Variable(
                                accessor: (Map map) => map['sold'] as num,
                              ),
                            },
                            transforms: [
                              Proportion(
                                variable: 'sold',
                                as: 'percent',
                              )
                            ],
                            marks: [
                              IntervalMark(
                                position: Varset('percent') / Varset('genre'),
                                color: ColorEncode(variable: 'genre', values: [
                                  AppColor.warning,
                                  AppColor.green,
                                  AppColor.red,
                                ]),
                                modifiers: [StackModifier()],
                              )
                            ],
                            coord: PolarCoord(
                              transposed: true,
                              dimCount: 1,
                              startRadius: 0.6,
                            ),
                            selections: {'tap': PointSelection()},
                          ),
                        ),
                        gapWidth16,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  color: AppColor.warning,
                                  width: Sizes.size12,
                                  height: 10,
                                ),
                                gapWidth8,
                                Text('${toDo} ${lengthOfToDo}'),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  color: AppColor.green,
                                  width: Sizes.size12,
                                  height: 10,
                                ),
                                gapWidth8,
                                Text('${doing} ${lengthOfDoing}'),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  color: AppColor.red,
                                  width: Sizes.size12,
                                  height: 10,
                                ),
                                gapWidth8,
                                Text('${blocked} ${lengthOfBlocked}'),
                              ],
                            ),
                          ],
                        )
                      ],
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
