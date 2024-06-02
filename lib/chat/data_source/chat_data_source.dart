import "package:service_masters/common/barrels.dart";

abstract class ChatDataSource {
  Stream<List<Message>> fetchMessages(String providerId);
  Stream<List<Chat>> fetchChats(String participantsId);
  Future<void> sendMessage({required Message message, required String chatId});
  Future<void> sendChat({required Chat chat, required String chatId});
  Stream<List<ServiceProvider>> fetchServiceProviders({
    required String participantId,
  });
}
