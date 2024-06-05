import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.empty()) {
    on<AppEvent>((event, emit) {
      event.when(
        signIn: (user) {
          emit(
            AppState.logged(
              mod: const Mod.home(),
              user: user,
            ),
          );
        },
        changeView: (mod) {
          emit(
            state.asLogged.copyWith(
              mod: mod,
            ),
          );
        },
        signOut: () {
          emit(
            const AppState.empty(),
          );
        },
      );
    });
  }
}
