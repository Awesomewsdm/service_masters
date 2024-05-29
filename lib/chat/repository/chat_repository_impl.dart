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
  Stream<List<Message>> fetchChats(String recieverId) {
    final message = firestoreService.messagesCollection
        .where("receiverId", isEqualTo: recieverId)
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
