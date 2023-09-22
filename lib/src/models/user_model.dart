import 'package:home_service_app/src/screens/chat_screen.dart';

class User {
  final String name;
  final String profileImage;
  final String lastMessage;
  final String lastMessageTime;
  final String lastMessageDate;
  // final bool isUserRecievedCall;
  final List<ChatMessage> messages;

  User({
    required this.name,
    required this.profileImage,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.messages,
    required this.lastMessageDate,
    // required this.isUserRecievedCall,
  });
}
