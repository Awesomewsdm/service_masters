import "package:service_masters/common/barrels.dart";

part "chat.g.dart";
part "chat.freezed.dart";

@freezed
abstract class Chat with _$Chat {
  const factory Chat({
    required String id,
    required String message,
    required String senderId,
    required String receiverId,
    required DateTime createdAt,
    required MessageStatus status,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
