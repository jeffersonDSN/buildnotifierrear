import 'package:buildnotifierrear/domain/controllers/timecards_controller.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'employees_who_checked_in_bloc.freezed.dart';
part 'employees_who_checked_in_event.dart';
part 'employees_who_checked_in_state.dart';

class EmployeesWhoCheckedInBloc
    extends Bloc<EmployeesWhoCheckedInEvent, EmployeesWhoCheckedInState> {
  EmployeesWhoCheckedInBloc({
    required TimecardsController controller,
  }) : super(const EmployeesWhoCheckedInState.init()) {
    on<EmployeesWhoCheckedInEvent>((event, emit) async {
      await event.when(load: () async {
        emit(const EmployeesWhoCheckedInState.loading());

        final messagesStream = controller.getAllEmployeesWhoCheckedIn();

        await emit.forEach(messagesStream, onData: (timecards) {
          return EmployeesWhoCheckedInState.loaded(timecards: timecards);
        });
      });
    });
  }
}
