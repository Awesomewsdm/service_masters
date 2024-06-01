import "package:service_masters/common/barrels.dart";

abstract class ChatRepository {
  Stream<List<Message>> fetchMessages(String providerId);
  Stream<List<Message>> fetchChats(String providerId);
  Future<void> sendMessage({required Message message, required String chatId});
  Future<void> sendChat({required Chat chat});
}
