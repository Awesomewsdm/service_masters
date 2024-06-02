enum ChatStatus {
  initial(""),
  loading("Loading your chats, please wait..."),
  success("Chats loaded successfully."),
  failed("Failed to load chats."),
  empty("No chats found.");
  // online("Online"),
  // offline("Offline"),
  // typing("Typing..."),
  // recording("Recording...");

  const ChatStatus(this.message);
  final String message;
}

extension ChatStatusX on ChatStatus {
  bool get isInitial => this == ChatStatus.initial;
  bool get isLoading => this == ChatStatus.loading;
  bool get isSuccess => this == ChatStatus.success;
  bool get isFailed => this == ChatStatus.failed;
  bool get isEmpty => this == ChatStatus.empty;
  // bool get isOnline => this == ChatStatus.online;
  // bool get isOffline => this == ChatStatus.offline;
  // bool get isTyping => this == ChatStatus.typing;
  // bool get isRecording => this == ChatStatus.recording;
}
