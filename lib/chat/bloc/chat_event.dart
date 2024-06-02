part of "chat_bloc.dart";

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.onSendMessage({
    required String chatId,
    required Message message,
  }) = _SendMessageEvent;
  const factory ChatEvent.onSendChat({
    required String chatId,
    required Chat chat,
  }) = _SendChatEvent;
  const factory ChatEvent.onSetProviderId({required String providerId}) =
      _SetProviderId;
  const factory ChatEvent.onFetchChats({
    required String participantId,
    List<ServiceProvider>? serviceProviders,
    List<Chat>? chats,
  }) = _FetchChats;
  const factory ChatEvent.onFetchMessages({
    required String providerId,
    required List<Message> messages,
  }) = _FetchMessages;
  const factory ChatEvent.uploadFile({
    required File file,
    required String fileName,
  }) = _UploadFile;
}
