import 'package:buildnotifierrear/domain/entities/enums/project_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/projects/overview/bloc/projects_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphic/graphic.dart';

class ProjectStatusDistributionChart extends StatelessWidget {
  const ProjectStatusDistributionChart({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ProjectsOverviewBloc>(context);

    if (bloc.state.isInit) {
      bloc.add(ProjectsOverviewEvent.load());
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.size16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.tr.projectStatusDistribution,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            gapHeight16,
            BlocBuilder<ProjectsOverviewBloc, ProjectsOverviewState>(
              bloc: bloc,
              builder: (context, state) {
                var planning = ProjectStatus.planning.name(context);
                var planned = ProjectStatus.planned.name(context);
                var inProgress = ProjectStatus.inProgress.name(context);
                var blocked = ProjectStatus.blocked.name(context);

                return state.maybeWhen(
                  orElse: () => Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (projects) {
                    var lengthOfPlanning = projects.lengthOf(
                      ProjectStatus.planning,
                    );
                    var lengthOfPlanned = projects.lengthOf(
                      ProjectStatus.planned,
                    );
                    var lengthOfInProgress = projects.lengthOf(
                      ProjectStatus.inProgress,
                    );
                    var lengthOfBlocked = projects.lengthOf(
                      ProjectStatus.blocked,
                    );

                    return Row(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          child: Chart(
                            data: [
                              {'genre': planning, 'sold': lengthOfPlanning},
                              {'genre': planned, 'sold': lengthOfPlanned},
                              {'genre': inProgress, 'sold': lengthOfInProgress},
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
                                  AppColor.orange,
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
                                Text('${planning} ${lengthOfPlanning}'),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  color: AppColor.orange,
                                  width: Sizes.size12,
                                  height: 10,
                                ),
                                gapWidth8,
                                Text('${planned} ${lengthOfPlanned}'),
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
                                Text('${inProgress} ${lengthOfInProgress}'),
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
