import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/bloc/schedule_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/widget/schedule_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

    return Scaffold(
      body: Card(
        child: BlocBuilder<ScheduleOverViewBloc, ScheduleOverViewState>(
          bloc: bloc,
          builder: (context, state) {
            return ScheduleWidget(
              scheduleType: ScheduleType.general,
              selectedDay: state.selectedDay,
              appointments: state.isLoaded ? state.asLoaded.appointments : [],
              isLoading: state.isLoading,
              onChangeSelectedDay: (value) {
                bloc.add(
                  ScheduleOverViewEvent.changeSelectedDay(selectedDay: value),
                );
              },
              onCreate: () {
                appBloc(context).add(
                  const AppEvent.changeView(
                    mod: Mod.schedule(
                      type: ViewType.create(),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
