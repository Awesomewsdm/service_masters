import "dart:io";

import "package:service_masters/common/barrels.dart";

part "chat_bloc.freezed.dart";
part "chat_event.dart";
part "chat_state.dart";

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const ChatState()) {
    on<_SendMessageEvent>(_onSendMessageEvent);
    on<_FetchMessage>(_onReceiveMessageEvent);
  }

  final _chatRepository = getIt<ChatRepositoryImpl>();

  FutureOr<void> _onSendMessageEvent(
    _SendMessageEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(state.copyWith(status: ChatStatus.messageSending));
    try {
      await _chatRepository.sendMessage(event.chat);
      logger.d("Message sent successfully.");
      emit(
        state.copyWith(
          status: ChatStatus.messageSent,
        ),
      );
    } on Exception {
      emit(
        state.copyWith(
          status: ChatStatus.messageSendFailure,
        ),
      );
    }
  }

  FutureOr<void> _onReceiveMessageEvent(
    _FetchMessage event,
    Emitter<ChatState> emit,
  ) async {
    emit(
      state.copyWith(status: ChatStatus.loading),
    );
    try {
      _chatRepository.receiveMessages().listen(
        (messages) {
          logger.d("Message received successfully.");
          emit(
            state.copyWith(
              messages: messages,
              status: ChatStatus.messagesReceived,
            ),
          );
        },
        onError: (error) {
          emit(
            state.copyWith(
              status: ChatStatus.failure,
              errorMessage: "Failed to receive messages. Please try again.",
            ),
          );
        },
      );
    } on Exception {
      emit(
        state.copyWith(
          status: ChatStatus.failure,
          errorMessage: "Failed to receive messages. Please try again.",
        ),
      );
    }
  }
}
