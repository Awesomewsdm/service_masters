import "dart:io";

import "package:rxdart/rxdart.dart";
import "package:service_masters/common/barrels.dart";

part "chat_bloc.freezed.dart";
part "chat_event.dart";
part "chat_state.dart";

typedef ChatStreamRecord = ({
  List<Chat> chats,
  List<ServiceProvider> serviceProviders
});

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
  late StreamSubscription<_CombinedData> _chatsSubscription;
  late StreamSubscription<List<ServiceProvider>> _serviceProvidersSubscription;

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
    final newChats = List<Chat>.from(state.chats)..add(event.message);
    emit(
      state.copyWith(
        chats: newChats,
      ),
    );
    try {
      await _chatRepository.sendChat(
        chat: event.message,
        chatId: event.chatId,
      );
      final sendChat = event.message;
      final updatedChats = state.chats.map((chat) {
        return chat.id == sendChat.id ? sendChat : chat;
      }).toList();
      emit(
        state.copyWith(
          chats: updatedChats,
        ),
      );
    } on Exception {
      final failedChat = event.message;
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

  FutureOr<void> _onFetchChatsEvent(
    _FetchChats event,
    Emitter<ChatState> emit,
  ) {
    participantId = event.participantId;
    _chatsSubscription.cancel();
    _serviceProvidersSubscription.cancel();

    final chatsStream = _chatRepository.fetchChats(participantId!);
    final serviceProvidersStream =
        _chatRepository.fetchServiceProviders(participantId: participantId!);

    _chatsSubscription =
        Rx.combineLatest2<List<Chat>, List<ServiceProvider>, _CombinedData>(
      chatsStream,
      serviceProvidersStream,
      _CombinedData.new,
    ).listen(
      (data) {
        add(
          _FetchChats(
            participantId: participantId!,
            chats: data.chats,
            serviceProviders: data.serviceProviders,
            customerId: "",
          ),
        );
      },
    );
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
    return super.close();
  }
}

class _CombinedData {
  _CombinedData(this.chats, this.serviceProviders);
  final List<Chat> chats;
  final List<ServiceProvider> serviceProviders;
}
