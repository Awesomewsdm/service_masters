import "package:service_masters/chat/model/chat.dart";

abstract class ChatRepository {
  Stream<List<Chat>> fetchChats();
  Future<void> sendMessage(Chat chat);
  Stream<List<Chat>> receiveMessages();
}
