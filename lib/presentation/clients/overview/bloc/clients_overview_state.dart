part of 'clients_overview_bloc.dart';

@freezed
class ClientsOverviewState with _$ClientsOverviewState {
  const factory ClientsOverviewState.empty() = ClientsOverviewStateEmpty;
  const factory ClientsOverviewState.loading() = ClientsOverviewStateLoading;
  const factory ClientsOverviewState.loaded({
    required List<Client> clients,
    Client? selectedClient,
    required List<Project> projectsOfselectedClient,
    required DependenteStateType projectsState,
  }) = ClientsOverviewStateLoaded;
}

extension OnClientsOverviewState on ClientsOverviewState {
  ClientsOverviewStateEmpty get asEmpty => this as ClientsOverviewStateEmpty;
  ClientsOverviewStateLoading get asLoading =>
      this as ClientsOverviewStateLoading;
  ClientsOverviewStateLoaded get asLoaded => this as ClientsOverviewStateLoaded;
}
