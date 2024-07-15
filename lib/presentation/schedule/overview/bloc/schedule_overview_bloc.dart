import 'package:buildnotifierrear/domain/controllers/appointment_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/enum/calendar_view_enum.dart';
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
  }) : super(const ScheduleOverViewState.empty()) {
    on<ScheduleOverViewEvent>((event, emit) async {
      await event.when(
        load: (calendarView, fromDate, toDate) async {
          emit(
            ScheduleOverViewState.loading(
              fromDate: fromDate,
              toDate: toDate,
              calendarView: calendarView,
            ),
          );

          var appointments = await controller.getByPeriod(fromDate, toDate);

          appointments.sort((a, b) => a.endDateTime.compareTo(b.endDateTime));

          emit(
            ScheduleOverViewState.loaded(
              fromDate: fromDate,
              toDate: toDate,
              appointments: appointments,
              calendarView: calendarView,
            ),
          );
        },
        delete: (appointmantId) async {
          await controller.delete(appointmantId);

          // add(
          //   ScheduleOverViewEvent.changeSelectedDay(
          //     selectedDay: state.selectedDay,
          //   ),
          // );
        },
      );
    });
  }
}
