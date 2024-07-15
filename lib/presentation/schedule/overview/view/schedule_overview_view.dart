import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/widget/day_view.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/widget/month_view.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/widget/week_view.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/bloc/schedule_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/enum/calendar_view_enum.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ScheduleOverviewView extends IView {
  const ScheduleOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('EEE, MMM d, yyyy');

    var bloc = BlocProvider.of<ScheduleOverViewBloc>(context);

    bloc.add(
      ScheduleOverViewEvent.load(
        calendarView: CalendarViewEnum.day,
        fromDate: DateTime.now().copyWith(hour: 00, minute: 00),
        toDate: DateTime.now().copyWith(hour: 23, minute: 59),
      ),
    );

    return BlocBuilder<ScheduleOverViewBloc, ScheduleOverViewState>(
      bloc: bloc,
      builder: (context, state) {
        if (state.isEmpty) {
          return Container();
        }

        var calendarView = state.isLoaded
            ? state.asLoaded.calendarView
            : state.asLoading.calendarView;

        List<Appointment> appointments =
            state.isLoaded ? state.asLoaded.appointments : [];

        var fromDate =
            state.isLoaded ? state.asLoaded.fromDate : state.asLoading.fromDate;

        var toDate =
            state.isLoaded ? state.asLoaded.toDate : state.asLoading.toDate;

        return Container(
          color: AppColor.lightColor,
          child: Column(
            children: [
              SizedBox(
                height: Sizes.size68,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    gapWidth16,
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        late DateTime previousFromDate;
                        late DateTime previoustempToDate;

                        calendarView.when(
                          month: () {
                            previousFromDate = DateTime(
                              fromDate.year,
                              fromDate.month - 1,
                              1,
                            );

                            previoustempToDate = DateTime(
                              fromDate.year,
                              fromDate.month,
                              0,
                              23,
                              59,
                              59,
                              999,
                            );
                          },
                          week: () {
                            previousFromDate =
                                fromDate.subtract(const Duration(days: 7));
                            previoustempToDate = toDate
                                .subtract(
                                  const Duration(days: 6),
                                )
                                .copyWith(
                                  hour: 23,
                                  minute: 59,
                                  second: 59,
                                  millisecond: 999,
                                );
                          },
                          day: () {
                            previousFromDate =
                                fromDate.subtract(const Duration(days: 1));
                            previoustempToDate = toDate
                                .subtract(
                                  const Duration(days: 1),
                                )
                                .copyWith(
                                  hour: 23,
                                  minute: 59,
                                  second: 59,
                                  millisecond: 999,
                                );
                          },
                        );

                        bloc.add(
                          ScheduleOverViewEvent.load(
                            calendarView: calendarView,
                            fromDate: previousFromDate,
                            toDate: previoustempToDate,
                          ),
                        );
                      },
                    ),
                    Text(
                      calendarView.when(
                        month: () {
                          return '${dateFormat.format(
                            fromDate,
                          )} - ${dateFormat.format(
                            toDate,
                          )}';
                        },
                        week: () {
                          return '${dateFormat.format(
                            fromDate,
                          )} - ${dateFormat.format(
                            toDate,
                          )}';
                        },
                        day: () {
                          return dateFormat.format(
                            fromDate,
                          );
                        },
                      ),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        late DateTime previousFromDate;
                        late DateTime previoustempToDate;

                        calendarView.when(
                          month: () {
                            previousFromDate = DateTime(
                              fromDate.year,
                              fromDate.month + 1,
                              1,
                            );

                            previoustempToDate = DateTime(
                              fromDate.year,
                              fromDate.month + 2,
                              0,
                              23,
                              59,
                              59,
                              999,
                            );
                          },
                          week: () {
                            previousFromDate =
                                fromDate.add(const Duration(days: 7));
                            previoustempToDate = toDate
                                .add(
                                  const Duration(days: 6),
                                )
                                .copyWith(
                                  hour: 23,
                                  minute: 59,
                                  second: 59,
                                  millisecond: 999,
                                );
                          },
                          day: () {
                            previousFromDate =
                                fromDate.add(const Duration(days: 1));
                            previoustempToDate = toDate
                                .add(
                                  const Duration(days: 1),
                                )
                                .copyWith(
                                  hour: 23,
                                  minute: 59,
                                  second: 59,
                                  millisecond: 999,
                                );
                          },
                        );

                        bloc.add(
                          ScheduleOverViewEvent.load(
                            calendarView: calendarView,
                            fromDate: previousFromDate,
                            toDate: previoustempToDate,
                          ),
                        );
                      },
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: SizedBox(
                              width: Sizes.size112,
                              child: DropdownButtonFormField<CalendarViewEnum>(
                                value: calendarView,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(Sizes.size8),
                                ),
                                items: CalendarViewEnum.values
                                    .map<DropdownMenuItem<CalendarViewEnum>>(
                                  (calendarView) {
                                    return DropdownMenuItem(
                                      value: calendarView,
                                      child: Text(
                                        calendarView.name(context),
                                      ),
                                    );
                                  },
                                ).toList(),
                                onChanged: (value) {
                                  if (value != null) {
                                    late DateTime fromDate;
                                    late DateTime toDate;

                                    value.when(
                                      month: () {
                                        fromDate = DateTime.now().copyWith(
                                          day: 1,
                                          hour: 0,
                                          minute: 0,
                                        );

                                        toDate = DateTime.now().copyWith(
                                          day: 31,
                                          hour: 23,
                                          minute: 59,
                                        );
                                      },
                                      week: () {
                                        DateTime now = DateTime.now();
                                        fromDate = now
                                            .subtract(
                                                Duration(days: now.weekday % 7))
                                            .copyWith(
                                              hour: 0,
                                              minute: 0,
                                              second: 0,
                                              millisecond: 0,
                                            );

                                        toDate = fromDate
                                            .add(const Duration(days: 6))
                                            .copyWith(
                                              hour: 23,
                                              minute: 59,
                                              second: 59,
                                              millisecond: 999,
                                            );
                                      },
                                      day: () {
                                        fromDate = DateTime.now().copyWith(
                                          hour: 00,
                                          minute: 00,
                                        );
                                        toDate = DateTime.now().copyWith(
                                          hour: 23,
                                          minute: 59,
                                        );
                                      },
                                    );

                                    bloc.add(
                                      ScheduleOverViewEvent.load(
                                        calendarView: value,
                                        fromDate: fromDate,
                                        toDate: toDate,
                                      ),
                                    );
                                  }
                                },
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
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
              Expanded(
                child: calendarView.when(
                  month: () => MonthView(
                    startOfMonth: fromDate,
                    appointments: appointments,
                    onSelectedDate: (value) {
                      bloc.add(
                        ScheduleOverViewEvent.load(
                          calendarView: CalendarViewEnum.day,
                          fromDate: value.copyWith(
                            hour: 0,
                            minute: 0,
                          ),
                          toDate: value.copyWith(
                            hour: 23,
                            minute: 59,
                          ),
                        ),
                      );
                    },
                  ),
                  week: () => WeekView(
                    startOfWeek: fromDate,
                    appointments: appointments,
                    onSelectedDate: (value) {
                      bloc.add(
                        ScheduleOverViewEvent.load(
                          calendarView: CalendarViewEnum.day,
                          fromDate: value.copyWith(
                            hour: 0,
                            minute: 0,
                          ),
                          toDate: value.copyWith(
                            hour: 23,
                            minute: 59,
                          ),
                        ),
                      );
                    },
                  ),
                  day: () => DayView(
                    appointments: appointments,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
