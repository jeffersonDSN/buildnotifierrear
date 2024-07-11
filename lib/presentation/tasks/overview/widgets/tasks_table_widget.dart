import 'package:buildnotifierrear/domain/entities/enums/task_priority_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class TasksTableWidget extends StatelessWidget {
  final List<Task> tasks;
  final ValueChanged<Task> onPressed;

  const TasksTableWidget({
    super.key,
    required this.tasks,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double calculateExpectedProgress(
      DateTime startDate,
      DateTime expectedEndDate,
    ) {
      DateTime today = DateTime.now();

      int totalDays = expectedEndDate.difference(startDate).inDays;
      int pastDays = today.difference(startDate).inDays;

      double progressoEsperado =
          totalDays > 0 ? (pastDays / totalDays) * 100 : 0;

      return progressoEsperado;
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(
          Sizes.size16,
        ),
        child: DataTable2(
          empty: Center(
            child: Text(
              context.tr.hasNoTask,
            ),
          ),
          columns: [
            DataColumn2(
              size: ColumnSize.L,
              label: Text(context.tr.title),
            ),
            DataColumn2(
              size: ColumnSize.L,
              label: Text(context.tr.project),
            ),
            DataColumn2(
              fixedWidth: Sizes.size136,
              label: Text(context.tr.priority),
            ),
            DataColumn2(
              fixedWidth: Sizes.size172,
              label: Text(context.tr.status),
            ),
            DataColumn2(
              size: ColumnSize.M,
              label: Text(context.tr.progress),
            ),
            DataColumn2(
              fixedWidth: Sizes.size68,
              numeric: true,
              label: Text(context.tr.action),
            ),
          ],
          rows: tasks.map((task) {
            var expectedProgress = calculateExpectedProgress(
              task.startDate!,
              task.expectedEndDate!,
            );

            return DataRow(
              cells: [
                DataCell(
                  Text(
                    task.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                DataCell(
                  Text(
                    task.projectName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                DataCell(
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.lightColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: task.priority.color,
                        width: .5,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.size12,
                      vertical: Sizes.size2,
                    ),
                    child: Text(
                      task.priority.name(context),
                      style: TextStyle(
                        color: task.priority.color.withOpacity(.7),
                      ),
                    ),
                  ),
                ),
                DataCell(
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.lightColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: task.status.color,
                        width: .5,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.size12,
                      vertical: Sizes.size2,
                    ),
                    child: Text(
                      task.status.name(context),
                      style: TextStyle(
                        color: task.status.color.withOpacity(.7),
                      ),
                    ),
                  ),
                ),
                DataCell(
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${task.progress}%',
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: LinearProgressIndicator(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  Sizes.size4,
                                ),
                              ),
                              value: task.progress / 100,
                              backgroundColor: AppColor.backgroundColor,
                              color: expectedProgress <= task.progress
                                  ? AppColor.green
                                  : task.expectedEndDate!
                                          .isBefore(DateTime.now())
                                      ? AppColor.red
                                      : AppColor.orange,
                            ),
                          ),
                          if (task.progress == 0)
                            Icon(
                              Icons.flag,
                              color:
                                  task.expectedEndDate!.isBefore(DateTime.now())
                                      ? AppColor.red
                                      : AppColor.orange,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                DataCell(
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      onPressed.call(task);
                    },
                  ),
                  // PopupMenuButton(
                  //   itemBuilder: (context) => [
                  //     const PopupMenuItem(
                  //       child: Row(
                  //         children: [
                  //           Icon(
                  //             size: 20,
                  //             color: AppColor.green,
                  //             Icons.shopping_bag_outlined,
                  //           ),
                  //           SizedBox(width: 10),
                  //           Text('Adicionar Pedido'),
                  //         ],
                  //       ),
                  //     ),
                  //     PopupMenuItem(
                  //         child: const Row(
                  //           children: [
                  //             Icon(
                  //               size: 20,
                  //               color: AppColor.orange,
                  //               Icons.edit_outlined,
                  //             ),
                  //             SizedBox(width: 10),
                  //             Text('Editar'),
                  //           ],
                  //         ),
                  //         onTap: () {}),
                  //     PopupMenuItem(
                  //       child: const Row(
                  //         children: [
                  //           Icon(
                  //             size: 20,
                  //             color: AppColor.red,
                  //             Icons.delete_outline,
                  //           ),
                  //           SizedBox(width: 10),
                  //           Text('Excluir'),
                  //         ],
                  //       ),
                  //       onTap: () {},
                  //     ),
                  //   ],
                  // ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
