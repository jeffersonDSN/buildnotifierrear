import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'users_overview_bloc.freezed.dart';
part 'users_overview_event.dart';
part 'users_overview_state.dart';

class UsersOverviewBloc extends Bloc<UsersOverviewEvent, UsersOverviewState> {
  UsersOverviewBloc({
    required CRUDController<User> controller,
  }) : super(const UsersOverviewState.empty()) {
    on<UsersOverviewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const UsersOverviewState.loading());

          var users = await controller.getAll();

          emit(UsersOverviewState.loaded(users: users));
        },
      );
    });
  }
}
