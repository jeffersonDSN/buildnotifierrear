import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/employees/edit/bloc/employee_timecard_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/employees/edit/view/employee_timecard_overview.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/employees/edit/bloc/employee_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/employees/edit/view/employee_edit_form_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeEditView extends StatelessWidget {
  final CrudType type;

  const EmployeeEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<EmployeeEditBloc>(context);

    bloc.add(
      EmployeeEditEvent.load(type: type),
    );

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Column(
        children: [
          Container(
            color: AppColor.lightColor,
            height: Sizes.size64,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: Sizes.size400,
                  child: Padding(
                    padding: const EdgeInsets.all(
                      Sizes.size8,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Sizes.size4,
                        ),
                        color: AppColor.greyColorSwatch.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              Sizes.size4,
                            ),
                            color: Colors.white,
                          ),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.transparent,
                          tabs: [
                            Row(
                              children: [
                                const Icon(Icons.badge),
                                gapWidth4,
                                Text(context.tr.employee),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.pending_actions_rounded),
                                gapWidth4,
                                Text(context.tr.timecards),
                              ],
                            ),
                          ],
                          onTap: (value) {
                            if (value == 1) {
                              BlocProvider.of<EmployeeTimecardOverviewBloc>(
                                context,
                              ).add(
                                EmployeeTimecardOverviewEvent.load(
                                  employee: bloc.state.asLoaded.employee,
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 2,
          ),
          const Expanded(
            child: TabBarView(
              children: [
                EmployeeEditFormView(),
                EmployeeTimecardOverview(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
