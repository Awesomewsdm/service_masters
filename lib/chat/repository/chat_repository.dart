import "package:service_masters/chat/model/chat.dart";

abstract class ChatRepository {
  Stream<List<Chat>> fetchChats(String recieverId);
  Future<void> sendMessage(Chat chat);
}
