part of "chat_bloc.dart";

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage({required Chat chat}) = _SendMessageEvent;
  const factory ChatEvent.fetchMessage({required String providerId}) =
      _FetchMessage;
  const factory ChatEvent.uploadFile({
    required File file,
    required String fileName,
  }) = _UploadFile;
}
