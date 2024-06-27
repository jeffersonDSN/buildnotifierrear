import 'package:buildnotifierrear/domain/entities/client/client.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class ClientsTableWidget extends StatelessWidget {
  final List<Client> clients;
  final ValueChanged<Client> onPressed;

  const ClientsTableWidget({
    super.key,
    required this.clients,
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
                context.tr.hasNoClient,
              ),
            ),
            columns: [
              DataColumn(
                label: Text(context.tr.firstName),
              ),
              DataColumn(
                label: Text(context.tr.lastName),
              ),
              DataColumn(
                label: Text(context.tr.phoneNumber),
              ),
              DataColumn2(
                size: ColumnSize.L,
                label: Expanded(
                  flex: 2,
                  child: Text(context.tr.email),
                ),
              ),
              DataColumn2(
                fixedWidth: Sizes.size68,
                numeric: true,
                label: Text(context.tr.action),
              ),
            ],
            rows: clients.map((client) {
              return DataRow(
                cells: [
                  DataCell(Text(client.firstName)),
                  DataCell(Text(client.lastName)),
                  DataCell(Text(client.phoneNumber)),
                  DataCell(Text(client.email)),
                  DataCell(
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        onPressed.call(client);
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
