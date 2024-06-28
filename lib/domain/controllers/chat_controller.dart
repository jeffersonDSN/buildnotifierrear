import 'package:buildnotifierrear/domain/entities/chat/message.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_chat_repository.dart';

class ChatController {
  final AbsIChatRepository repository;

  ChatController({required this.repository});

  Stream<List<Message>> getMessages(String senderId, String recipientId) {
    return repository.getMessages(senderId, recipientId);
  }

  Future<void> sendMessage(
    Message message,
    Map<String, String> lastMessage,
  ) {
    return repository.sendMessage(message, lastMessage);
  }
}
