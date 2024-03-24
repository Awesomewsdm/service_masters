import "package:service_masters/chat/model/chat_model.dart";

abstract class ChatRepository {
  Future<List<Chat>> getChats();
  Future<void> sendMessage(Chat chat);
  Stream<List<Chat>> getChatsStream();
}
