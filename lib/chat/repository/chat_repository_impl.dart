import "package:service_masters/common/barrels.dart";

class ChatRepositoryImpl extends ChatRepository {
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<void> sendMessage({
    required Message message,
    required String chatId,
  }) async {
    await firestoreService.chatCollection
        .doc(chatId)
        .collection("messages")
        .add(message.toJson());
  }

  @override
  Future<void> sendChat({required Chat chat, required String chatId, c}) async {
    await firestoreService.chatCollection.doc(chatId).update(chat.toJson());
  }

  @override
  Stream<List<Message>> fetchMessages(String providerId) {
    final message = firestoreService.chatCollection
        .where("receiverId", isEqualTo: providerId)
        .snapshots()
        .map(
      (snapshots) {
        return snapshots.docs
            .map(
              (e) => Message.fromJson(e.data()! as Map<String, dynamic>),
            )
            .toList();
      },
    );
    return message;
  }

  @override
  Stream<List<Message>> fetchChats(String providerId) {
    final message = firestoreService.chatCollection
        .where("receiverId", isEqualTo: providerId)
        .snapshots()
        .map(
      (snapshots) {
        return snapshots.docs
            .map(
              (e) => Message.fromJson(e.data()! as Map<String, dynamic>),
            )
            .toList();
      },
    );
    return message;
  }

  @override
  Future<List<ServiceProvider>> fetchServiceProviders(
    String participantId,
  ) async {
    final serviceProviders = await firestoreService.serviceProvidersCollection
        .where("service_id", isEqualTo: participantId)
        .get();
    return serviceProviders.docs
        .map(
          (e) => ServiceProvider.fromJson(e.data()! as Map<String, dynamic>),
        )
        .toList();
  }
}
