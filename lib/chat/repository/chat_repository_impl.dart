import "package:service_masters/common/barrels.dart";

class ChatRepositoryImpl extends ChatRepository {
  final FirestoreService firestoreService = FirestoreService();

  @override
  Stream<List<Chat>> fetchChats() {
    final chats = firestoreService.chatCollection.snapshots();
    return chats.map(
      (snapshots) => snapshots.docs
          .map(
            (e) => Chat.fromJson(e.data()! as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  @override
  Future<void> sendMessage(Chat chat) async {
    await firestoreService.chatCollection.add(chat.toJson());
  }

  @override
  Stream<List<Chat>> receiveMessages() {
    return firestoreService.chatCollection.snapshots().map(
          (event) => event.docs
              .map(
                (e) => Chat.fromJson(e.data()! as Map<String, dynamic>),
              )
              .toList(),
        );
  }
}
