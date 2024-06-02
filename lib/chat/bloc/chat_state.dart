part of "chat_bloc.dart";

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<Chat> chats,
    @Default([]) List<Message> messages,
    @Default("") String errorMessage,
    @Default(ChatStatus.initial) ChatStatus initial,
  }) = _ChatState;
}
