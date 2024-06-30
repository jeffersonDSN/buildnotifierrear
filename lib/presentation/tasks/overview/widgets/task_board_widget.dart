import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_priority_enums.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/bloc/tasks_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';

class TaskBoardWidget extends StatelessWidget {
  const TaskBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<TasksOverviewBloc>(context);

    if (bloc.state.isInit) {
      bloc.add(const TasksOverviewEvent.load());
    }

    return BlocBuilder<TasksOverviewBloc, TasksOverviewState>(
      bloc: bloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (tasks) {
            List<List<Task>> lists = [];

            return DragAndDropLists(
              axis: Axis.horizontal,
              listWidth: 250,
              children: TaskStatus.values.map((status) {
                lists.add(
                  tasks.where((task) => task.status == status).toList(),
                );

                return DragAndDropList(
                  contentsWhenEmpty: Text(context.tr.hasNoTask),
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
                  children: lists.last.map((task) {
                    return DragAndDropItem(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          Sizes.size16,
                          Sizes.size0,
                          Sizes.size16,
                          Sizes.size0,
                        ),
                        child: Card(
                          child: ListTile(
                            title: Text(task.title),
                            subtitle: Text(task.priority.name(context)),
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
                  TasksOverviewEvent.changeStatus(
                    task: lists[oldListIndex].removeAt(oldItemIndex),
                    status: TaskStatus.values[newListIndex],
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
