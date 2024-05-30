part of "chat_bloc.dart";

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.onSendMessage({
    required Chat chat,
    required Message message,
  }) = _SendMessageEvent;
  const factory ChatEvent.onSetProviderId({required String providerId}) =
      _SetProviderId;
  const factory ChatEvent.onFetchChats({
    required String providerId,
    required List<Chat> chats,
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
