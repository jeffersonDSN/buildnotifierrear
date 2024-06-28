import 'package:buildnotifierrear/domain/entities/chat/message.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_chat_repository.dart';
import 'package:buildnotifierrear/infrastructure/core/transleted.dart';
import 'package:buildnotifierrear/infrastructure/firestore/tenant_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatFirestoreRepository extends TenantFirestoreRepository
    implements AbsIChatRepository {
  ChatFirestoreRepository({required super.tenantId})
      : super(collectionName: 'chats');

  @override
  Stream<List<Message>> getMessages(String senderId, String recipientId) {
    return collection
        .where(
          Filter.or(
            Filter.and(
              Filter("sender", isEqualTo: senderId),
              Filter("recipient", isEqualTo: recipientId),
            ),
            Filter.and(
              Filter("sender", isEqualTo: recipientId),
              Filter("recipient", isEqualTo: senderId),
            ),
          ),
        )
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        var result = doc.data().map((key, value) {
          if (value is Timestamp) {
            return MapEntry(key, value.toDate());
          } else {
            return MapEntry(key, value);
          }
        });

        return Message.fromJson(result);
      }).toList();
    });
  }

  @override
  Future<void> sendMessage(
    Message message,
    Map<String, String> lastMessage,
  ) async {
    var texts = await getValueListWithContext(message.text, lastMessage);

    await collection.add(message.copyWith(texts: texts).toJson());
  }
}
