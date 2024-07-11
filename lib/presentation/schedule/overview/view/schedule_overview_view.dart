import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/calendar/day_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/calendar/month_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/calendar/week_view.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/bloc/schedule_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/enum/calendar_view_enum.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum CalendarView { month, week, day }

class ScheduleOverviewView extends IView {
  const ScheduleOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ScheduleOverViewBloc>(context);

    bloc.add(
      ScheduleOverViewEvent.changeSelectedDay(
        selectedDay: DateTime.now(),
      ),
    );

    return Container(
      color: AppColor.lightColor,
      child: Column(
        children: [
          SizedBox(
            height: Sizes.size68,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                gapWidth16,
                const Text(
                  'July 2024',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                          width: Sizes.size96,
                          child: DropdownButtonFormField<int>(
                            value: 0,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(Sizes.size8),
                            ),
                            items: CalendarViewEnum.values
                                .map<DropdownMenuItem<int>>(
                              (calendarView) {
                                return DropdownMenuItem(
                                  value: calendarView.index,
                                  child: Text(
                                    calendarView.name(context),
                                  ),
                                );
                              },
                            ).toList(),
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(Sizes.size8),
                        child: FilledButton.icon(
                          icon: const Icon(Icons.add),
                          label: Text(context.tr.newAppointment),
                          onPressed: () {
                            appBloc(context).add(
                              const AppEvent.changeView(
                                mod: Mod.schedule(
                                  type: ViewType.create(),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: DayView(),
          ),
        ],
      ),
    );
  }
}
