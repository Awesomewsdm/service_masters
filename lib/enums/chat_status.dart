enum MessageStatus {
  received,
  sending,
  delivered,
  seen,
  sent,
  failed,
  fileUploadInProgress,
  fileUploaded,
  fileUploadFailure,
}

extension MessageStatusX on MessageStatus {
  bool get isMessagesReceived => this == MessageStatus.received;
  bool get isMessageSending => this == MessageStatus.sending;
  bool get isMessageDelivered => this == MessageStatus.delivered;
  bool get isMessageSent => this == MessageStatus.sent;
  bool get isMessageSeen => this == MessageStatus.seen;
  bool get isMessageFailed => this == MessageStatus.failed;
  bool get isFileUploaded => this == MessageStatus.fileUploaded;
  bool get isFileUploadFailure => this == MessageStatus.fileUploadFailure;
  bool get isFileUploadInProgress => this == MessageStatus.fileUploadInProgress;
}
