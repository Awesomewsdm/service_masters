import 'package:home_service_app/common/dummy_data.dart';

class User {
  final String name;
  final String profileImage;
  final String lastMessage;
  final String lastMessageTime;
  final String lastMessageDate;
  final List<ChatMessage> messages;

  User({
    required this.name,
    required this.profileImage,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.lastMessageDate,
    required this.messages,
  });
}
