import 'package:buildnotifierrear/domain/entities/enums/project_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
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
              context.tr.hasNoProject,
            ),
          ),
          columns: [
            DataColumn2(
              size: ColumnSize.L,
              label: Text(context.tr.name),
            ),
            DataColumn2(
              label: Text(context.tr.client),
            ),
            DataColumn2(
              fixedWidth: Sizes.size172,
              label: Text(context.tr.status),
            ),
            DataColumn2(
              label: Text(context.tr.progress),
            ),
            DataColumn2(
              numeric: true,
              label: Text(context.tr.action),
            ),
          ],
          rows: projects.map((project) {
            var expectedProgress = calculateExpectedProgress(
              project.startDate!,
              project.expectedCompletionDate!,
            );

            return DataRow(
              cells: [
                DataCell(
                  Text(
                    project.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                DataCell(
                  Text(
                    project.clientFirstname,
                  ),
                ),
                DataCell(
                  Container(
                    decoration: BoxDecoration(
                      color: project.status.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.size12,
                      vertical: Sizes.size2,
                    ),
                    child: Text(
                      project.status.name(context),
                      style: const TextStyle(
                        color: AppColor.lightColor,
                      ),
                    ),
                  ),
                ),
                DataCell(
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${project.progress}%',
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
                              value: project.progress / 100,
                              backgroundColor: AppColor.backgroundColor,
                              color: expectedProgress <= project.progress
                                  ? AppColor.green
                                  : project.expectedCompletionDate!
                                          .isBefore(DateTime.now())
                                      ? AppColor.red
                                      : AppColor.orange,
                            ),
                          ),
                          if (project.progress == 0)
                            Icon(
                              Icons.flag,
                              color: project.expectedCompletionDate!
                                      .isBefore(DateTime.now())
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
