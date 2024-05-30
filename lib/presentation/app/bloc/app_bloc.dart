import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(
          const AppState.logged(
            mod: Mod.home(),
          ),
        ) {
    on<AppEvent>((event, emit) {
      event.when(
        changeView: (mod) {
          emit(
            AppState.logged(
              mod: mod,
            ),
          );
        },
      );
    });
  }
}
