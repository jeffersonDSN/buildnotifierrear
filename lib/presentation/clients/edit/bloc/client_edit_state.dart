part of 'client_edit_bloc.dart';

@freezed
class ClientEditState with _$ClientEditState {
  const factory ClientEditState.empty() = ClientEditStateEmpty;
  const factory ClientEditState.loading() = ClientEditStateLoading;
  const factory ClientEditState.loaded({
    required CrudType type,
    required Client client,
    required List<State> states,
    ErrorFields? error,
  }) = ClientEditStateLoaded;
}

extension OnClientEditState on ClientEditState {
  ClientEditStateLoaded get asLoaded => this as ClientEditStateLoaded;
}
