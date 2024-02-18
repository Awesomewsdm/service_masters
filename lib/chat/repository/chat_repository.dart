abstract class ChatRepository {
  Future<List<Chat>> getChats();
  Future<void> sendMessage(Chat chat);
  Stream<List<Chat>> getChatsStream();
}
