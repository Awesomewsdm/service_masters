import "package:service_masters/common/barrels.dart";

class ChatRepositoryImpl extends ChatRepository {
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<void> sendMessage(Chat chat) async {
    await firestoreService.chatCollection.add(chat.toJson());
  }

  @override
  Stream<List<Chat>> fetchChats(String recieverId) {
    final chats = firestoreService.chatCollection
        .where("receiverId", isEqualTo: recieverId)
        .snapshots()
        .map(
      (snapshots) {
        return snapshots.docs
            .map(
              (e) => Chat.fromJson(e.data()! as Map<String, dynamic>),
            )
            .toList();
      },
    );
    return chats;
  }
}
