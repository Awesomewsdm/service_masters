part of "chat_bloc.dart";

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage({required Chat chat}) = _SendMessageEvent;
  const factory ChatEvent.fetchMessages({
    required String providerId,
    required List<Chat> messages,
  }) = _FetchMessages;
  const factory ChatEvent.uploadFile({
    required File file,
    required String fileName,
  }) = _UploadFile;
}
