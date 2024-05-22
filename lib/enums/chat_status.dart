enum ChatStatus {
  initial,
  loading,
  loaded,
  failure,
  messagesReceived,
  messageSending,
  messageSent,
  messageSendFailure,
  fileUploaded,
  fileUploadFailure,
  fileUploadInProgress,
}

extension ChatStatusX on ChatStatus {
  bool get isInitial => this == ChatStatus.initial;
  bool get isLoading => this == ChatStatus.loading;
  bool get isLoaded => this == ChatStatus.loaded;
  bool get isFailure => this == ChatStatus.failure;
  bool get isMessagesReceived => this == ChatStatus.messagesReceived;
  bool get isMessageSending => this == ChatStatus.messageSending;
  bool get isMessageSent => this == ChatStatus.messageSent;
  bool get isMessageSendFailure => this == ChatStatus.messageSendFailure;
  bool get isFileUploaded => this == ChatStatus.fileUploaded;
  bool get isFileUploadFailure => this == ChatStatus.fileUploadFailure;
  bool get isFileUploadInProgress => this == ChatStatus.fileUploadInProgress;
}
