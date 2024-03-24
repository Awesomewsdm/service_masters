import "package:service_masters/chat/model/chat_model.dart";
import "package:service_masters/common/barrels.dart";

class ChatRepositoryImpl extends ChatRepository {
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<List<Chat>> getChats() async {
    final chats = await firestoreService.chatCollection.get();
    return chats.docs
        .map(
          (e) => Chat.fromJson(e.data()! as Map<String, dynamic>),
        )
        .toList();
  }

  @override
  Future<void> sendMessage(Chat chat) async {
    await firestoreService.chatCollection.add(chat.toJson());
  }

  @override
  Stream<List<Chat>> getChatsStream() {
    return firestoreService.chatCollection.snapshots().map(
          (event) => event.docs
              .map(
                (e) => Chat.fromJson(e.data()! as Map<String, dynamic>),
              )
              .toList(),
        );
  }
}
