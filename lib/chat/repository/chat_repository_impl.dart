import "package:service_masters/common/barrels.dart";

class ChatRepositoryImpl extends ChatRepository {
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<void> sendMessage(Message message) async {
    await firestoreService.messagesCollection.add(message.toJson());
  }

  @override
  Future<void> sendChat(Chat chat) async {
    await firestoreService.chatCollection.add(chat.toJson());
  }

  @override
  Stream<List<Message>> fetchMessages(String providerId) {
    final message = firestoreService.messagesCollection
        .where("receiverId", isEqualTo: providerId)
        .snapshots()
        .map(
      (snapshots) {
        return snapshots.docs
            .map(
              (e) => Message.fromJson(e.data()! as Map<String, dynamic>),
            )
            .toList();
      },
    );
    return message;
  }

  @override
  Stream<List<Message>> fetchChats(String providerId) {
    final message = firestoreService.messagesCollection
        .where("receiverId", isEqualTo: providerId)
        .snapshots()
        .map(
      (snapshots) {
        return snapshots.docs
            .map(
              (e) => Message.fromJson(e.data()! as Map<String, dynamic>),
            )
            .toList();
      },
    );
    return message;
  }
}
