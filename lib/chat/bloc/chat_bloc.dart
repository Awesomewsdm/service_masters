import "dart:io";
import "package:service_masters/common/barrels.dart";

part "chat_bloc.freezed.dart";
part "chat_event.dart";
part "chat_state.dart";

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const ChatState()) {
    on<_SendMessageEvent>(_onSendMessageEvent);
    on<_FetchMessages>(_onFetchMessageEvent);
    on<_SetProviderId>(_onProviderIdChanged);
    // on<_FetchChats>(_onFetchChatsEvent);
    // on<_ChatSent>(_onChatSentEvent);
  }

  String? providerId;
  late StreamSubscription<List<Message>> _messagesSubscription;

  final _chatRepository = getIt<ChatRepositoryImpl>();
  FutureOr<void> _onSendMessageEvent(
    _SendMessageEvent event,
    Emitter<ChatState> emit,
  ) async {
    final newMessages = List<Message>.from(state.messages)..add(event.message);
    emit(
      state.copyWith(
        messages: newMessages,
      ),
    );
    try {
      await _chatRepository.sendMessage(
          chat: event.chat, message: event.message);
      final sendMessage = event.message.copyWith(status: MessageStatus.sent);
      final updatedMessages = state.messages.map((chat) {
        return chat.id == sendMessage.id ? sendMessage : chat;
      }).toList();
      emit(
        state.copyWith(
          messages: updatedMessages,
        ),
      );
    } on Exception {
      final failedChat = event.message.copyWith(status: MessageStatus.failed);
      final updatedMessages = state.messages.map((chat) {
        return chat.id == failedChat.id ? failedChat : chat;
      }).toList();
      emit(
        state.copyWith(
          messages: updatedMessages,
        ),
      );
    }
  }

  FutureOr<void> _onFetchMessageEvent(
    _FetchMessages event,
    Emitter<ChatState> emit,
  ) {
    emit(state.copyWith(messages: event.messages));
  }

  // FutureOr<void> _onFetchChatsEvent(
  //   _FetchChats event,
  //   Emitter<ChatState> emit,
  // ) {
  //   emit(state.copyWith(chats: event.chats));
  // }

  FutureOr<void> _onProviderIdChanged(
    _SetProviderId event,
    Emitter<ChatState> emit,
  ) {
    providerId = event.providerId;

    _messagesSubscription.cancel();

    _messagesSubscription = _chatRepository.fetchChats(providerId!).listen(
      (messages) {
        add(
          _FetchMessages(
            providerId: providerId!,
            messages: messages,
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _messagesSubscription.cancel();
    return super.close();
  }
}
