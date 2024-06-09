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
    on<_FetchChats>(_onFetchChatsEvent);
    on<_SendChatEvent>(_onSendChatEvent);
  }

  String? providerId;
  String? participantId;

  late StreamSubscription<List<Message>> _messagesSubscription;
  StreamSubscription<List<ServiceProvider>>? _serviceProvidersSubscription;

  final _chatRepository = getIt<ChatRepository>();

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
        message: event.message,
        chatId: event.chatId,
      );
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

  FutureOr<void> _onSendChatEvent(
    _SendChatEvent event,
    Emitter<ChatState> emit,
  ) async {
    final newChats = List<Chat>.from(state.chats)..add(event.chat);
    emit(
      state.copyWith(
        chats: newChats,
      ),
    );
    try {
      await _chatRepository.sendChat(
        chat: event.chat,
        chatId: event.chatId,
      );
      final sendChat = event.chat;
      final updatedChats = state.chats.map((chat) {
        return chat.id == sendChat.id ? sendChat : chat;
      }).toList();
      emit(
        state.copyWith(
          chats: updatedChats,
        ),
      );
    } on Exception {
      final failedChat = event.chat;
      final updatedChats = state.chats.map((chat) {
        return chat.id == failedChat.id ? failedChat : chat;
      }).toList();
      emit(
        state.copyWith(
          chats: updatedChats,
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

  void _onFetchChatsEvent(
    _FetchChats event,
    Emitter<ChatState> emit,
  ) {
    logger.d("Fetching chats for participantId: ${event.participantId}");

    emit(state.copyWith(status: ChatStatus.loading));
    logger.i("Loading state emitted");

    participantId = event.participantId;

    _chatsSubscription?.cancel();

    _chatRepository.fetchChats(participantId!).asyncExpand((chats) async* {
      logger.d("Fetched chats: $chats");
      yield chats;
    }).listen(
      (data) {
        logger.d("Data received from combined stream: $data");

        if (!emit.isDone) {
          logger.d("Emitting success state");
          emit(
            state.copyWith(
              status: ChatStatus.success,
              chats: data,
            ),
          );
        }

        logger.d("Success state emitted");
      },
      onError: (Object error) {
        logger.e("Error received from combined stream: $error");

        if (!emit.isDone) {
          logger.d("Emitting failure state");
          emit(
            state.copyWith(
              status: ChatStatus.failed,
              errorMessage: error.toString(),
            ),
          );
        }

        logger.e("Failure state emitted");
      },
    );

    // Add logging to indicate that the subscriptions have been set up
    logger.d("Chat and service provider subscriptions set up");
  }

  FutureOr<void> _onProviderIdChanged(
    _SetProviderId event,
    Emitter<ChatState> emit,
  ) {
    providerId = event.providerId;
    _messagesSubscription.cancel();
    _messagesSubscription = _chatRepository.fetchMessages(providerId!).listen(
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
    _chatsSubscription?.cancel();
    _serviceProvidersSubscription?.cancel();
    return super.close();
  }
}
