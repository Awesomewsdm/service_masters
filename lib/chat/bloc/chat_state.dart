part of "chat_bloc.dart";

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<Chat> messages,
    @Default(ChatStatus.initial) ChatStatus status,
    String? errorMessage,
  }) = _ChatState;
}
