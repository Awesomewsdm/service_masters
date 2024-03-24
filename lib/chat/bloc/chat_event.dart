part of "chat_bloc.dart";

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage({required Chat chat}) = _SendMessageEvent;
  const factory ChatEvent.receiveMessage(int index) = _ReceiveMessage;
  const factory ChatEvent.uploadFile({
    required File file,
    required String fileName,
  }) = _UploadFile;
}
