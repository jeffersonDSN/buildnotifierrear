import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/employees/edit/bloc/employee_timecard_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/widget/timecards_overview_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class EmployeeTimecardOverview extends StatelessWidget {
  const EmployeeTimecardOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat.yMd();

    var bloc = BlocProvider.of<EmployeeTimecardOverviewBloc>(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Sizes.size32,
        Sizes.size16,
        Sizes.size32,
        Sizes.size16,
      ),
      child: BlocBuilder<EmployeeTimecardOverviewBloc,
          EmployeeTimecardOverviewState>(
        bloc: bloc,
        builder: (context, state) {
          if (bloc.state.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          var selectedPeriod = state.isLoading
              ? state.asLoading.selectedPeriod
              : state.asLoaded.selectedPeriod;

          var periods = state.isLoading
              ? state.asLoading.periods
              : state.asLoaded.periods;

          List<Timecard> timeCards =
              state.isLoaded ? state.asLoaded.timecards : [];

          var employee = state.isLoading
              ? state.asLoading.employee
              : state.asLoaded.employee;

          return Column(
            children: [
              BaseDropdownButtonField<Period>(
                label: context.tr.selectPeriod,
                value: selectedPeriod,
                items: periods.map((period) {
                  return DropdownItem(
                    value: period,
                    title:
                        '${period.name}: ${dateFormat.format(period.startDate)} - ${dateFormat.format(period.endDate)} ',
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    bloc.add(
                      EmployeeTimecardOverviewEvent.changePeriod(period: value),
                    );
                  }
                },
              ),
              Expanded(
                child: TimecardsOverviewWidget(
                  selectedPeriod: selectedPeriod,
                  timecards: timeCards,
                  isLoading: bloc.state.isLoading,
                  // onOpenDetails: (value) {
                  //   // bloc.add(
                  //   //   UsersOverviewEvent.updateTimecardState(
                  //   //     timecardsState: DependenteStateType.reading(
                  //   //       value: value,
                  //   //     ),
                  //   //   ),
                  //   // );
                  // },
                  getGrossPay: (hours, minutes) => employee.getGrossPay(
                    hours,
                    minutes,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
