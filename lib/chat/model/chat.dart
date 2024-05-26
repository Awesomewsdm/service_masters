import "package:json_annotation/json_annotation.dart";

part "chat.g.dart";

@JsonSerializable()
class Chat {
  Chat({
    required this.receiverId,
    required this.message,
    required this.senderId,
    required this.createdAt,
    this.sent = false,
    this.sending = false,
  });
  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  final String message;
  final String senderId;
  final String receiverId;
  final DateTime createdAt;
  bool sent;
  bool sending;
  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
