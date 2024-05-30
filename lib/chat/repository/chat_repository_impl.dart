import "package:service_masters/common/barrels.dart";

class ChatRepositoryImpl extends ChatRepository {
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<void> sendMessage({
    required Chat chat,
    required Message message,
  }) async {
    final chatCollection =
        await firestoreService.chatCollection.add(chat.toJson());
    await chatCollection.collection("messages").add(message.toJson());
  }

  @override
  Stream<List<Message>> fetchMessages(String providerId) {
    final message = firestoreService.chatCollection
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
    final message = firestoreService.chatCollection
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
