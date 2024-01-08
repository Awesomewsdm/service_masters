import "package:service_masters/common/barrels.dart";

class UserModel {
  UserModel({
    required this.name,
    required this.profileImage,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.lastMessageDate,
    required this.messages,
  });
  final String name;
  final String profileImage;
  final String lastMessage;
  final String lastMessageTime;
  final String lastMessageDate;
  final List<ChatMessage> messages;
}
