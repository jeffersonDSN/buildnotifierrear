import 'package:buildnotifierrear/domain/controllers/appointment_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'schedule_overview_bloc.freezed.dart';
part 'schedule_overview_event.dart';
part 'schedule_overview_state.dart';

class ScheduleOverViewBloc
    extends Bloc<ScheduleOverViewEvent, ScheduleOverViewState> {
  ScheduleOverViewBloc({
    required AppointmentController controller,
  }) : super(ScheduleOverViewState.empty(selectedDay: DateTime.now())) {
    on<ScheduleOverViewEvent>((event, emit) async {
      await event.when(
        changeSelectedDay: (selectedDay) async {
          emit(
            ScheduleOverViewState.loading(selectedDay: selectedDay),
          );

          var appointments = await controller.getByDay(selectedDay);

          emit(
            ScheduleOverViewState.loaded(
              selectedDay: selectedDay,
              appointments: appointments,
            ),
          );
        },
      );
    });
  }
}
