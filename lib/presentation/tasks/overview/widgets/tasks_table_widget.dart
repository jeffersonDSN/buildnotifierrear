import 'package:buildnotifierrear/domain/entities/enums/task_priority_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/task_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
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
    return Expanded(
      child: Card(
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
                label: Expanded(
                  child: Text(context.tr.title),
                ),
              ),
              DataColumn2(
                label: Expanded(
                  child: Text(context.tr.project),
                ),
              ),
              DataColumn2(
                label: Expanded(
                  child: Text(context.tr.priority),
                ),
              ),
              DataColumn2(
                label: Expanded(
                  child: Text(context.tr.status),
                ),
              ),
              DataColumn2(
                numeric: true,
                label: Text(context.tr.action),
              ),
            ],
            rows: tasks.map((task) {
              return DataRow(
                cells: [
                  DataCell(Text(task.title)),
                  DataCell(Text(task.projectName)),
                  DataCell(Text(task.priority.name(context))),
                  DataCell(Text(task.status.name(context))),
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
      ),
    );
  }
}
