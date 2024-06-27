import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class EmployeesTableWidget extends StatelessWidget {
  final List<Employee> employees;
  final ValueChanged<Employee> onPressed;

  const EmployeesTableWidget({
    super.key,
    required this.employees,
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
            columns: [
              DataColumn(
                label: Text(context.tr.firstName),
              ),
              DataColumn(
                label: Text(context.tr.lastName),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(context.tr.department),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(context.tr.position),
                ),
              ),
              DataColumn(
                label: Text(context.tr.phoneNumber),
              ),
              DataColumn2(
                fixedWidth: Sizes.size68,
                numeric: true,
                label: Text(context.tr.action),
              ),
            ],
            rows: employees.map((employee) {
              return DataRow(
                cells: [
                  DataCell(Text(employee.firstName)),
                  DataCell(Text(employee.lastName)),
                  DataCell(Text(employee.department)),
                  DataCell(Text(employee.position)),
                  DataCell(Text(employee.phoneNumber)),
                  DataCell(
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        onPressed.call(employee);
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
