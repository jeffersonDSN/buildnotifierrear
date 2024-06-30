import 'package:buildnotifierrear/domain/core/time_utils.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/employees/who_checked_In/bloc/employees_who_checked_in_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeesWhoCheckedInTable extends StatelessWidget {
  const EmployeesWhoCheckedInTable({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<EmployeesWhoCheckedInBloc>(context);

    bloc.add(EmployeesWhoCheckedInEvent.load());

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(
          Sizes.size8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  context.tr.employeesWhoCheckedIn,
                  style: TextStyle(
                    color: AppColor.secondaryColorSwatch.shade200,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
                height: Sizes.size400,
                child: BlocBuilder<EmployeesWhoCheckedInBloc,
                    EmployeesWhoCheckedInState>(
                  bloc: bloc,
                  builder: (context, state) {
                    return DataTable2(
                      columns: [
                        DataColumn2(
                          label: Text(context.tr.firstName),
                          size: ColumnSize.M,
                        ),
                        DataColumn2(
                          label: Text(context.tr.lastName),
                          size: ColumnSize.M,
                        ),
                        DataColumn2(
                          size: ColumnSize.M,
                          label: Text(context.tr.lastCheckIn),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: Text(context.tr.location),
                        ),
                      ],
                      empty: Center(
                        child: Text(
                          context.tr.hasNoEmployeesCheckedIn,
                        ),
                      ),
                      rows: state.maybeWhen(
                        orElse: () => [],
                        loaded: (timecards) {
                          return timecards.map(
                            (timecard) {
                              return DataRow(
                                cells: [
                                  DataCell(Text(timecard.employeeFirstName)),
                                  DataCell(Text(timecard.employeeLastName)),
                                  DataCell(
                                    Text(
                                      hourFormatByDateTime(timecard.start),
                                    ),
                                  ),
                                  DataCell(Text(timecard.startLocation ?? '')),
                                ],
                              );
                            },
                          ).toList();
                        },
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
