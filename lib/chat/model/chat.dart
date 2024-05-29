import "package:service_masters/common/barrels.dart";

part "chat.g.dart";
part "chat.freezed.dart";

@freezed
abstract class Chat with _$Chat {
  const factory Chat({
    required String id,
    required String lastMessage,
    required List<String> participantsId,
    required String onlineStatus,
    required DateTime lastMessageTime,
    required int noOfUnreadMessages,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
