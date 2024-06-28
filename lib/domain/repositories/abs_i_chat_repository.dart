import 'package:buildnotifierrear/domain/entities/chat/message.dart';

abstract interface class AbsIChatRepository {
  Stream<List<Message>> getMessages(String senderId, String recipientId);

  Future<void> sendMessage(
    Message message,
    Map<String, String> lastMessage,
  );
}
