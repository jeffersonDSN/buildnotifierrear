import 'package:buildnotifierrear/domain/controllers/appointment_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'schedule_edit_bloc.freezed.dart';
part 'schedule_edit_event.dart';
part 'schedule_edit_state.dart';

enum SchedulePeriodType {
  noRepeat,
  repeatInPeriod,
}

extension OnSchedulePeriodType on SchedulePeriodType {
  T when<T extends Object?>({
    required T Function() noRepeat,
    required T Function() repeatInPeriod,
  }) {
    switch (this) {
      case SchedulePeriodType.noRepeat:
        return noRepeat();
      case SchedulePeriodType.repeatInPeriod:
        return repeatInPeriod();
    }
  }

  bool get isNoRepeat => this == SchedulePeriodType.noRepeat;
}

class ScheduleEditBloc extends Bloc<ScheduleEditEvent, ScheduleEditState> {
  ScheduleEditBloc({
    required AppointmentController controller,
  }) : super(const ScheduleEditState.empty()) {
    on<ScheduleEditEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          // var result = await type.when(
          //   create: () async {
          //     return Appointment(
          //       startDateTime: DateTime.now(),
          //       endDateTime: DateTime.now(),
          //     );
          //   },
          //   update: (id) async {
          //     return await controller.getById(id);
          //   },
          // );

          emit(
            ScheduleEditState.loaded(
              appointments: [
                Appointment(
                  startDateTime: DateTime.now(),
                  endDateTime: DateTime.now().add(
                    const Duration(hours: 1),
                  ),
                ),
              ],
              periodType: SchedulePeriodType.noRepeat,
            ),
          );
        },
        changePeriodType: (value) {
          emit(
            state.asLoaded.copyWith(
              periodType: value,
            ),
          );
        },
        changeSelectedAppointment: (value) {
          emit(
            state.asLoaded.copyWith(
              selectedAppointment: value,
            ),
          );
        },
        addDate: (date) {
          emit(
            state.asLoaded.copyWith(
              appointments: [
                ...state.asLoaded.appointments,
                Appointment(
                  startDateTime: date,
                  endDateTime: date.add(
                    const Duration(hours: 1),
                  ),
                ),
              ],
            ),
          );
        },
        remodeAppointment: (value) {
          var list = [...state.asLoaded.appointments];
          list.remove(value);

          emit(
            state.asLoaded.copyWith(
              appointments: list,
            ),
          );
        },
      );
    });
  }
}
