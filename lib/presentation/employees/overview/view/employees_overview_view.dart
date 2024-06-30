import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/employees/overview/bloc/employees_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/employees/overview/widgets/employees_table_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeesOverviewView extends IView {
  const EmployeesOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<EmployeesOverviewBloc>(context);

    bloc.add(const EmployeesOverviewEvent.load());

    return BlocBuilder<EmployeesOverviewBloc, EmployeesOverviewState>(
      bloc: bloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Card(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          loaded: (employees) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(Sizes.size8),
                  child: FilledButton.icon(
                    icon: const Icon(Icons.add),
                    label: Text(context.tr.newEmployee),
                    onPressed: () {
                      appBloc(context).add(
                        const AppEvent.changeView(
                          mod: Mod.employees(
                            type: ViewType.create(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: EmployeesTableWidget(
                    employees: employees,
                    onPressed: (employee) {
                      appBloc(context).add(
                        AppEvent.changeView(
                          mod: Mod.employees(
                            type: ViewType.update(
                              id: employee.id,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
