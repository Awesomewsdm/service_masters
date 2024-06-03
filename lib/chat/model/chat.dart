import "package:service_masters/common/barrels.dart";

part "chat.g.dart";
part "chat.freezed.dart";

@freezed
abstract class Chat with _$Chat {
  const factory Chat({
    required String id,
    required String lastMessage,
    required String onlineStatus,
    required DateTime lastMessageTime,
    @Default([]) List<String> participantsId,
    @Default(0) int noOfUnreadMessages,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
