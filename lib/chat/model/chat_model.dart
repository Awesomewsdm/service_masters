import "package:json_annotation/json_annotation.dart";

part "chat_model.g.dart";

@JsonSerializable()
class Chat {
  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
  Chat({
    required this.id,
    required this.message,
    required this.senderId,
    required this.receiverId,
    required this.createdAt,
  });
  final String id;
  final String message;
  final String senderId;
  final String receiverId;
  final DateTime createdAt;
  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
