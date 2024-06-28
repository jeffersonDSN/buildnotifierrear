part of 'chat_overview_bloc.dart';

@freezed
class ChatOverviewState with _$ChatOverviewState {
  const factory ChatOverviewState.initial() = ChatOverviewStateInitial;

  const factory ChatOverviewState.loading() = ChatOverviewStateLoading;

  const factory ChatOverviewState.loaded({
    required List<Message> messages,
  }) = ChatOverviewStateLoaded;

  const factory ChatOverviewState.error({
    required String error,
  }) = ChatOverviewStateError;
}

extension OnChatOverviewState on ChatOverviewState {
  ChatOverviewStateLoaded get asLoaded => this as ChatOverviewStateLoaded;
}
