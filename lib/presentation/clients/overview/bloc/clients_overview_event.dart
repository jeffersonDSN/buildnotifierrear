part of 'clients_overview_bloc.dart';

@freezed
class ClientsOverviewEvent with _$ClientsOverviewEvent {
  const factory ClientsOverviewEvent.load() = ClientsOverviewEventLoad;

  const factory ClientsOverviewEvent.changeselectedClient({
    required Client selectedClient,
  }) = ClientsOverviewEventChangeselectedUser;
}
