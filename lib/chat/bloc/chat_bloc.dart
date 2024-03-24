import "dart:io";

import "package:service_masters/common/barrels.dart";

part "chat_bloc.freezed.dart";
part "chat_event.dart";
part "chat_state.dart";

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const ChatState.initial()) {
    on<_SendMessageEvent>(_onSendMessageEvent);
    on<_ReceiveMessage>(_onReceiveMessageEvent);
  }

  final _chatRepository = getIt<ChatRepositoryImpl>();

  FutureOr<void> _onSendMessageEvent(
    _SendMessageEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(
      const ChatState.loading(),
    );
    try {
      await _chatRepository.sendMessage(event.chat);
      logger.d("Message sent successfully.");
      emit(
        const ChatState.success(),
      );
    } on Exception {
      emit(const ChatState.failure());
    }
  }

  FutureOr<void> _onReceiveMessageEvent(
    _ReceiveMessage event,
    Emitter<ChatState> emit,
  ) async {
    emit(
      const ChatState.loading(),
    );
    try {
      _chatRepository.receiveMessages();
      logger.d("Message sent successfully.");
      emit(
        const ChatState.success(),
      );
    } on Exception {
      emit(const ChatState.failure());
    }
  }
}
