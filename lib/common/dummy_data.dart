import "package:home_service_app/common/models/user_model.dart";

class ChatMessage {
  ChatMessage({required this.text, required this.isMe});
  final String text;
  final bool isMe;
}

final List<UserModel> mockUsers = [
  UserModel(
    name: "John Doe",
    profileImage: "https://example.com/profiles/john_doe.jpg",
    lastMessage: "Hey there!",
    lastMessageTime: "1:30 PM",
    lastMessageDate: "19 September",
    messages: [
      ChatMessage(text: "Hey!", isMe: false),
      ChatMessage(text: "How are you?", isMe: false),
      // Add more messages as needed
    ],
  ),
  UserModel(
    name: "John Dawg",
    profileImage: "https://example.com/profiles/john_doe.jpg",
    lastMessage: "Hey there!",
    lastMessageTime: "1:30 PM",
    lastMessageDate: "19 September",
    messages: [
      ChatMessage(text: "Hey!", isMe: false),
      ChatMessage(
        text: "How are you, hope all is well with you my friend?",
        isMe: false,
      ),
      ChatMessage(
        text: "How are you, hope all is well with you my friend?",
        isMe: true,
      ),
      ChatMessage(
        text: "How are you, hope all is well with you my friend?",
        isMe: false,
      ),
      ChatMessage(
        text: "How are you, hope all is well with you my friend?",
        isMe: false,
      ),
      ChatMessage(
        text: "How are you, hope all is well with you my friend?",
        isMe: false,
      ),
      ChatMessage(
        text: "How are you, hope all is well with you my friend?",
        isMe: false,
      ),
      ChatMessage(
        text: "How are you, hope all is well with you my friend?",
        isMe: false,
      ),
      ChatMessage(
        text: "How are you, hope all is well with you my friend?",
        isMe: false,
      ),
      ChatMessage(
        text: "How are you, hope all is well with you my friend?",
        isMe: false,
      ),
      // Add more messages as needed
    ],
  ),
  UserModel(
    name: "John Doe",
    profileImage: "https://example.com/profiles/john_doe.jpg",
    lastMessage: "Hey there!",
    lastMessageTime: "1:30 PM",
    lastMessageDate: "19 September,",
    messages: [
      ChatMessage(text: "Hey!", isMe: false),
      ChatMessage(text: "How are you?", isMe: false),
      // Add more messages as needed
    ],
  ),
  UserModel(
    name: "Jimmiy Aglago",
    profileImage: "https://example.com/profiles/jane_smith.jpg",
    lastMessage: "Hello!",
    lastMessageTime: "10:45 AM",
    lastMessageDate: "19 September,",
    messages: [
      ChatMessage(text: "Hello!", isMe: false),
      ChatMessage(text: "What are you up to?", isMe: false),
      // Add more messages as needed
    ],
  ),
  UserModel(
    name: "Joseph Quarcoe",
    profileImage: "https://example.com/profiles/jane_smith.jpg",
    lastMessage: "Hello!",
    lastMessageTime: "10:45 AM",
    lastMessageDate: "19 September,",
    messages: [
      ChatMessage(text: "Hello!", isMe: false),
      ChatMessage(text: "What are you up to?", isMe: false),
      // Add more messages as needed
    ],
  ),
  UserModel(
    name: "Kordah Wisdom",
    profileImage: "https://example.com/profiles/jane_smith.jpg",
    lastMessage: "Hello!",
    lastMessageTime: "10:45 AM",
    lastMessageDate: "19 September,",
    messages: [
      ChatMessage(text: "Hello!", isMe: false),
      ChatMessage(text: "What are you up to?", isMe: false),
      // Add more messages as needed
    ],
  ),
  UserModel(
    name: "Anita Adade-Boateng Grant",
    profileImage: "https://example.com/profiles/jane_smith.jpg",
    lastMessage: "Hello!",
    lastMessageTime: "10:45 AM",
    lastMessageDate: "19 September,",
    messages: [
      ChatMessage(text: "Hello!", isMe: false),
      ChatMessage(text: "What are you up to?", isMe: false),
      // Add more messages as needed
    ],
  ),
  UserModel(
    name: "Very Good Ventures",
    profileImage: "https://example.com/profiles/jane_smith.jpg",
    lastMessage: "Hello!",
    lastMessageTime: "10:45 AM",
    lastMessageDate: "19 September,",
    messages: [
      ChatMessage(text: "Hello!", isMe: false),
      ChatMessage(text: "What are you up to?", isMe: false),
      // Add more messages as needed
    ],
  ),
  UserModel(
    name: "Abebe Amanuel",
    profileImage: "https://example.com/profiles/jane_smith.jpg",
    lastMessage: "Hello!",
    lastMessageTime: "10:45 AM",
    lastMessageDate: "19 September,",
    messages: [
      ChatMessage(text: "Hello!", isMe: false),
      ChatMessage(text: "What are you up to?", isMe: false),
      // Add more messages as needed
    ],
  ),
  UserModel(
    name: "Show Case",
    profileImage: "https://example.com/profiles/jane_smith.jpg",
    lastMessage: "Hello!",
    lastMessageTime: "10:45 AM",
    lastMessageDate: "19 September,",
    messages: [
      ChatMessage(text: "Hello!", isMe: false),
      ChatMessage(text: "What are you up to?", isMe: false),
      // Add more messages as needed
    ],
  ),
  UserModel(
    name: "Bright Sunu",
    profileImage: "https://example.com/profiles/jane_smith.jpg",
    lastMessage: "Hello!",
    lastMessageTime: "10:45 AM",
    lastMessageDate: "19 September",
    messages: [
      ChatMessage(text: "Hello!", isMe: false),
      ChatMessage(text: "What are you up to?", isMe: false),
      // Add more messages as needed
    ],
  ),
  // Add more users
];
