part of 'chat_overview_bloc.dart';

@freezed
class ChatOverviewEvent with _$ChatOverviewEvent {
  const factory ChatOverviewEvent.loadMessages({
    required String senderId,
    required String recipientId,
  }) = ChatOverviewEventMessages;

  const factory ChatOverviewEvent.sendMessage({
    required Message message,
  }) = ChatOverviewEventMessage;
}
