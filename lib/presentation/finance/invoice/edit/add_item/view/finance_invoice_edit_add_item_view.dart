import 'package:buildnotifierrear/domain/core/format_utils.dart';
import 'package:buildnotifierrear/domain/entities/activity/activity.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/finance/invoice/edit/add_item/bloc/finance_invoice_edit_add_item_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class FinanceInvoiceEditAddItemView extends StatelessWidget {
  final String clientId;
  final String invoiceId;

  const FinanceInvoiceEditAddItemView({
    super.key,
    required this.clientId,
    required this.invoiceId,
  });

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat.yMd();

    var bloc = BlocProvider.of<FinanceInvoiceEditAddItemBloc>(context);

    bloc.add(
      FinanceInvoiceEditAddItemEvent.loadProjects(
        invoiceId: invoiceId,
        clientId: clientId,
      ),
    );

    return BlocBuilder<FinanceInvoiceEditAddItemBloc,
        FinanceInvoiceEditAddItemState>(
      bloc: bloc,
      builder: (context, state) {
        ;

        return state.maybeWhen(
          orElse: () {
            return AlertDialog(
              title: Center(
                child: Text(
                  context.tr.addItem,
                  style: const TextStyle(
                    color: AppColor.primaryColorSwatch,
                  ),
                ),
              ),
              content: const SizedBox(
                height: Sizes.size600,
                width: Sizes.size700,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              actions: [
                TextButton(
                  child: Text(context.tr.cancel),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          },
          loaded: (
            cliendId,
            invoiceId,
            projects,
            selectedProject,
            tasks,
            selectedTask,
            activiteis,
            filteredActivities,
            invoiceItems,
          ) {
            return AlertDialog(
              elevation: 0,
              title: Center(
                child: Text(
                  context.tr.addItem,
                  style: const TextStyle(
                    color: AppColor.primaryColorSwatch,
                  ),
                ),
              ),
              content: SizedBox(
                height: Sizes.size600,
                width: Sizes.size700,
                child: Column(
                  children: [
                    const Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: BaseDropdownButtonField(
                            label: context.tr.project,
                            value: selectedProject != null
                                ? selectedProject.id
                                : '',
                            items: [
                              DropdownItem(
                                value: '',
                                title: '',
                              ),
                              ...projects.map(
                                (project) {
                                  return DropdownItem(
                                    value: project.id,
                                    title: project.name,
                                  );
                                },
                              ),
                            ],
                            onChanged: (value) {
                              bloc.add(
                                FinanceInvoiceEditAddItemEvent
                                    .changeSelectedProject(
                                  projectId: value ?? '',
                                ),
                              );
                            },
                          ),
                        ),
                        gapWidth16,
                        Expanded(
                          child: BaseDropdownButtonField(
                            label: context.tr.task,
                            value: selectedTask != null ? selectedTask.id : '',
                            items: [
                              DropdownItem(
                                value: '',
                                title: '',
                              ),
                              ...tasks.map(
                                (task) {
                                  return DropdownItem(
                                    value: task.id,
                                    title: task.title,
                                  );
                                },
                              ),
                            ],
                            onChanged: (value) {
                              bloc.add(
                                FinanceInvoiceEditAddItemEvent
                                    .changeSelectedTask(
                                  taskId: value ?? '',
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    gapHeight32,
                    const Divider(),
                    Expanded(
                      child: DataTable2(
                        dataRowHeight: null,
                        empty: const Center(
                          child: Text(
                            '',
                          ),
                        ),
                        columns: [
                          DataColumn2(
                            size: ColumnSize.L,
                            label: Text(context.tr.employee),
                          ),
                          DataColumn2(
                            size: ColumnSize.M,
                            label: Text(context.tr.date),
                          ),
                          DataColumn2(
                            size: ColumnSize.L,
                            label: Text(context.tr.title),
                          ),
                          DataColumn2(
                            size: ColumnSize.M,
                            numeric: true,
                            label: Text(context.tr.hoursWorked),
                          ),
                          DataColumn2(
                            size: ColumnSize.S,
                            numeric: true,
                            label: Checkbox(
                              value: false,
                              onChanged: (bool? value) {},
                            ),
                          ),
                        ],
                        rows: filteredActivities.map((activitie) {
                          var totalHours = activitie.totalHoursAndMinutes;

                          return DataRow(
                            cells: [
                              DataCell(
                                Text(
                                  '${activitie.userFirstName} ${activitie.userLastName}',
                                ),
                              ),
                              DataCell(
                                Text(
                                  dateFormat.format(activitie.start),
                                ),
                              ),
                              DataCell(
                                Text(
                                  activitie.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              DataCell(
                                Text(
                                  hourFormatByHoursAndMinutes(
                                    totalHours.hours,
                                    totalHours.minutes,
                                  ),
                                ),
                              ),
                              DataCell(
                                Checkbox(
                                  value: invoiceItems.any((item) =>
                                      item.activityId == activitie.id),
                                  onChanged: (bool? value) {
                                    bloc.add(
                                      FinanceInvoiceEditAddItemEvent
                                          .checkActivity(
                                        activity: activitie,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: Text(context.tr.cancel),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                FilledButton(
                  child: Text(context.tr.submit),
                  onPressed: () {
                    Navigator.pop(
                      context,
                      invoiceItems,
                    );
                  },
                )
              ],
            );
          },
        );
      },
    );
  }
}
