import "package:json_annotation/json_annotation.dart";

part "chat.g.dart";

@JsonSerializable()
class Chat {
  Chat({
    required this.receiverId,
    required this.message,
    required this.senderId,
    required this.createdAt,
  });
  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  final String message;
  final String senderId;
  final String receiverId;
  final DateTime createdAt;
  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
