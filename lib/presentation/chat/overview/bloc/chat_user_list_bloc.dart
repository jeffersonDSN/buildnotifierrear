import 'package:buildnotifierrear/domain/controllers/employees_controller.dart';
import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'chat_user_list_bloc.freezed.dart';
part 'chat_user_list_event.dart';
part 'chat_user_list_state.dart';

class ChatUserListBloc extends Bloc<ChatUserListEvent, ChatUserListState> {
  ChatUserListBloc({
    required EmployeesController controller,
  }) : super(const ChatUserListState.initial()) {
    on<ChatUserListEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ChatUserListState.loading());

          var employees = await controller.getAll();

          emit(
            ChatUserListState.loaded(
              employees: employees,
              selectedEmployee: employees[0],
            ),
          );
        },
        changeSelectedUser: (user) async {
          emit(
            state.asLoaded.copyWith(
              selectedEmployee: user,
            ),
          );
        },
      );
    });
  }
}
