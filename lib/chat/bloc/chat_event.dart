part of "chat_bloc.dart";

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.onSendMessage({required Message chat}) =
      _SendMessageEvent;
  const factory ChatEvent.onSetProviderId({required String providerId}) =
      _SetProviderId;
  const factory ChatEvent.onFetchMessages({
    required String providerId,
    required List<Message> messages,
  }) = _FetchMessages;
  const factory ChatEvent.uploadFile({
    required File file,
    required String fileName,
  }) = _UploadFile;
}
