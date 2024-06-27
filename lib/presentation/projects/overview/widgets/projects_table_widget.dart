import 'package:buildnotifierrear/domain/entities/enums/project_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class ProjectsTableWidget extends StatelessWidget {
  final List<Project> projects;
  final ValueChanged<Project> onPressed;

  const ProjectsTableWidget({
    super.key,
    required this.projects,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(
          Sizes.size16,
        ),
        child: DataTable2(
          columns: [
            DataColumn2(
              label: Expanded(
                child: Text(context.tr.name),
              ),
            ),
            DataColumn2(
              label: Expanded(
                child: Text(context.tr.client),
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
          rows: projects.map((project) {
            return DataRow(
              cells: [
                DataCell(Text(project.name)),
                DataCell(Text(project.clientFirstname)),
                DataCell(Text(project.status.name(context))),
                DataCell(
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      onPressed.call(project);
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
