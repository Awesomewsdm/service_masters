import "package:service_masters/common/barrels.dart";

abstract class ChatRepository {
  Stream<List<Message>> fetchChats(String recieverId);
  Future<void> sendMessage(Message message);
  Future<void> sendChat(Chat chat);
}
