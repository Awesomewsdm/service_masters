import "package:service_masters/chat/model/chat.dart";

abstract class ChatRepository {
  Future<List<Chat>> getChats();
  Future<void> sendMessage(Chat chat);
  Stream<List<Chat>> receiveMessages();
}
