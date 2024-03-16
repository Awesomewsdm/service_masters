part of "chat_bloc.dart";

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage({required String message}) =
      _SendMessageEvent;
  const factory ChatEvent.receiveMessage({required String message}) =
      _ReceiveMessage;
  const factory ChatEvent.uploadFile({
    required File file,
    required String fileName,
  }) = _UploadFile;
}
