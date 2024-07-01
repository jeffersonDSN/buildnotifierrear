import 'package:buildnotifierrear/domain/entities/enums/project_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/projects/overview/bloc/projects_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';

class ProjectsBoardWidget extends StatelessWidget {
  const ProjectsBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ProjectsOverviewBloc>(context);

    if (bloc.state.isInit) {
      bloc.add(const ProjectsOverviewEvent.load());
    }

    return BlocBuilder<ProjectsOverviewBloc, ProjectsOverviewState>(
      bloc: bloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (projects) {
            List<List<Project>> lists = [];

            return DragAndDropLists(
              axis: Axis.horizontal,
              listWidth: 250,
              children: ProjectStatus.values.map((status) {
                lists.add(
                  projects
                      .where((project) => project.status == status)
                      .toList(),
                );

                return DragAndDropList(
                  contentsWhenEmpty: Text(context.tr.hasNoProject),
                  canDrag: false,
                  header: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(7.0)),
                            color: status.color,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            '${status.name(context)} ${lists.last.length}',
                            style:
                                Theme.of(context).primaryTextTheme.titleLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                  children: lists.last.map((project) {
                    return DragAndDropItem(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          Sizes.size8,
                          Sizes.size0,
                          Sizes.size8,
                          Sizes.size0,
                        ),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(Sizes.size16),
                            child: SizedBox(
                              width: Sizes.size240,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(project.name),
                                  gapHeight8,
                                  Text(
                                    '${project.clientFirstname} ${project.clientLastname}',
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              }).toList(),
              onItemReorder: (
                oldItemIndex,
                oldListIndex,
                newItemIndex,
                newListIndex,
              ) {
                bloc.add(
                  ProjectsOverviewEvent.changeStatus(
                    project: lists[oldListIndex].removeAt(oldItemIndex),
                    status: ProjectStatus.values[newListIndex],
                  ),
                );
              },
              onListReorder: (
                oldListIndex,
                newListIndex,
              ) {},
              listDecoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(Radius.circular(7.0)),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black45,
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              listPadding: const EdgeInsets.all(8.0),
            );
          },
        );
      },
    );
  }
}
