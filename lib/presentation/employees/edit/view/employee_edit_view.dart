import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_custom_card_widget.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/employees/edit/bloc/employee_timecard_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/employees/edit/view/employee_timecard_overview.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/employees/edit/bloc/employee_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/employees/edit/view/employee_edit_form_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeEditView extends IView {
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

    return BaseScaffold(
      title: type.when(
        create: () => context.tr.newEmployee,
        update: (id) => context.tr.editEmployee,
      ),
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: BaseCustomCardWidget(
          header: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: Sizes.size48,
                width: Sizes.size300,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(
                      child: Text(
                        context.tr.employee,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        context.tr.timecards,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
            ],
          ),
          body: const TabBarView(
            children: [
              EmployeeEditFormView(),
              EmployeeTimecardOverview(),
            ],
          ),
          footer: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(Sizes.size8),
                child: FilledButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      AppColor.warning,
                    ),
                  ),
                  icon: const Icon(Icons.close),
                  label: Text(context.tr.close),
                  onPressed: () {
                    appBloc(context).add(
                      const AppEvent.goBack(),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Sizes.size8),
                child: FilledButton.icon(
                  icon: const Icon(
                    Icons.check,
                  ),
                  label: Text(context.tr.save),
                  onPressed: () {
                    bloc.add(
                      EmployeeEditEvent.save(
                        callback: () {
                          appBloc(context).add(
                            const AppEvent.goBack(),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
