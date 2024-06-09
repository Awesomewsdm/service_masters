import "package:service_masters/common/barrels.dart";

class ChatRepository extends ChatDataSource {
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
  Future<void> sendChat({
    required Chat chat,
    required String chatId,
  }) async {
    await firestoreService.chatCollection.doc(chatId).set(chat.toJson());
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
  Stream<List<Chat>> fetchChats(String participantsId) {
    final chat = firestoreService.chatCollection
        .where("participantsId", arrayContains: participantsId)
        .snapshots()
        .map(
      (snapshots) {
        return snapshots.docs
            .map(
              (e) => Chat.fromJson(e.data()! as Map<String, dynamic>),
            )
            .toList();
      },
    );
    return chat;
  }

  @override
  Stream<List<ServiceProvider>> fetchServiceProviders({
    required String participantId,
  }) {
    logger.d("Fetching service providers for participantId: $participantId");

    return firestoreService.serviceProvidersCollection
        .where("provider_id", isEqualTo: participantId)
        .snapshots()
        .map((snapshots) {
      logger.d(
          "Service provider snapshots received: ${snapshots.docs.length} documents");

      final serviceProviders = snapshots.docs.map((e) {
        final data = e.data();
        logger.d("Service provider document data: $data");
        return ServiceProvider.fromJson(data! as Map<String, dynamic>);
      }).toList();

      logger.d("Transformed service providers: $serviceProviders");
      return serviceProviders;
    });
  }
}
