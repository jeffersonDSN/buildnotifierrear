import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/entities/client/client.dart';
import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'clients_overview_bloc.freezed.dart';
part 'clients_overview_event.dart';
part 'clients_overview_state.dart';

class ClientsOverviewBloc
    extends Bloc<ClientsOverviewEvent, ClientsOverviewState> {
  ClientsOverviewBloc({
    required CRUDController<Client> controller,
    required ProjectsController projectController,
  }) : super(const ClientsOverviewState.empty()) {
    on<ClientsOverviewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ClientsOverviewState.loading());

          var clients = await controller.getAll();

          emit(
            ClientsOverviewState.loaded(
              clients: clients,
              projectsOfselectedClient: [],
              projectsState: const DependenteStateType.listing(),
            ),
          );

          if (clients.isNotEmpty) {
            add(
              ClientsOverviewEvent.changeselectedClient(
                selectedClient: clients[0],
              ),
            );
          }
        },
        changeselectedClient: (selectedClient) async {
          emit(
            state.asLoaded.copyWith(
              selectedClient: selectedClient,
              projectsState: const DependenteStateType.loading(),
            ),
          );

          var result = await projectController.getAllByClient(
            selectedClient.id,
          );

          emit(
            state.asLoaded.copyWith(
              projectsOfselectedClient: result,
              projectsState: const DependenteStateType.listing(),
            ),
          );
        },
      );
    });
  }
}
