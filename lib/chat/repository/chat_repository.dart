abstract class ChatRepository {
  Future<List<Chat>> getChats();
  Future<void> sendMessage(Chat chat);
  Stream<List<Chat>> getChatsStream();
}

class Chat {
  Chat({
    required this.id,
    required this.message,
    required this.senderId,
    required this.receiverId,
    required this.createdAt,
  });
  final String id;
  final String message;
  final String senderId;
  final String receiverId;
  final DateTime createdAt;
}

class ChatUser {
  ChatUser({
    required this.id,
    required this.displayName,
    required this.profilePicture,
    required this.onlineStatus,
  });
  final String id;
  final String displayName;
  final String profilePicture;
  final String onlineStatus;
}
