import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/screens/call_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';

import '../models/user_model.dart';

class ChatScreen extends StatelessWidget {
  final User user;

  const ChatScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tPrimaryColor,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(tPic),
              //  NetworkImage(user.profileImage)
            ),
            Text(user.name),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CallScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.phone),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: user.messages.length,
              itemBuilder: (context, index) {
                final message = user.messages[index];
                return BubbleSpecialOne(
                  // alignment: message.isMe
                  //     ? Alignment.topRight
                  //     : Alignment.topLeft,
                  // margin: BubbleEdges.only(top: 10),
                  color: message.isMe
                      ? const Color.fromRGBO(212, 234, 244, 1.0)
                      : Colors.grey.shade200,
                  text: message.text,
                );
              },
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(labelText: 'Type a message...'),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              // Send message logic here
            },
          ),
        ],
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final bool isMe;

  ChatMessage({required this.text, required this.isMe});
}

final List<User> mockUsers = [
  User(
    name: 'John Doe',
    profileImage: 'https://example.com/profiles/john_doe.jpg',
    lastMessage: 'Hey there!',
    lastMessageTime: '1:30 PM',
    lastMessageDate: '19 September',
    messages: [
      ChatMessage(text: 'Hey!', isMe: false),
      ChatMessage(text: 'How are you?', isMe: false),
      // Add more messages as needed
    ],
  ),
  User(
    name: 'John Doe',
    profileImage: 'https://example.com/profiles/john_doe.jpg',
    lastMessage: 'Hey there!',
    lastMessageTime: '1:30 PM',
    lastMessageDate: '19 September',
    messages: [
      ChatMessage(text: 'Hey!', isMe: false),
      ChatMessage(text: 'How are you?', isMe: false),
      // Add more messages as needed
    ],
  ),
  User(
    name: 'John Doe',
    profileImage: 'https://example.com/profiles/john_doe.jpg',
    lastMessage: 'Hey there!',
    lastMessageTime: '1:30 PM',
    lastMessageDate: '19 September,',
    messages: [
      ChatMessage(text: 'Hey!', isMe: false),
      ChatMessage(text: 'How are you?', isMe: false),
      // Add more messages as needed
    ],
  ),
  User(
    name: 'Jimmiy Aglago',
    profileImage: 'https://example.com/profiles/jane_smith.jpg',
    lastMessage: 'Hello!',
    lastMessageTime: '10:45 AM',
    lastMessageDate: '19 September,',
    messages: [
      ChatMessage(text: 'Hello!', isMe: false),
      ChatMessage(text: 'What are you up to?', isMe: false),
      // Add more messages as needed
    ],
  ),
  User(
    name: 'Joseph Quarcoe',
    profileImage: 'https://example.com/profiles/jane_smith.jpg',
    lastMessage: 'Hello!',
    lastMessageTime: '10:45 AM',
    lastMessageDate: '19 September,',
    messages: [
      ChatMessage(text: 'Hello!', isMe: false),
      ChatMessage(text: 'What are you up to?', isMe: false),
      // Add more messages as needed
    ],
  ),
  User(
    name: 'Kordah Wisdom',
    profileImage: 'https://example.com/profiles/jane_smith.jpg',
    lastMessage: 'Hello!',
    lastMessageTime: '10:45 AM',
    lastMessageDate: '19 September,',
    messages: [
      ChatMessage(text: 'Hello!', isMe: false),
      ChatMessage(text: 'What are you up to?', isMe: false),
      // Add more messages as needed
    ],
  ),
  User(
    name: 'Anita Adade-Boateng',
    profileImage: 'https://example.com/profiles/jane_smith.jpg',
    lastMessage: 'Hello!',
    lastMessageTime: '10:45 AM',
    lastMessageDate: '19 September,',
    messages: [
      ChatMessage(text: 'Hello!', isMe: false),
      ChatMessage(text: 'What are you up to?', isMe: false),
      // Add more messages as needed
    ],
  ),
  User(
    name: 'Very Good Ventures',
    profileImage: 'https://example.com/profiles/jane_smith.jpg',
    lastMessage: 'Hello!',
    lastMessageTime: '10:45 AM',
    lastMessageDate: '19 September,',
    messages: [
      ChatMessage(text: 'Hello!', isMe: false),
      ChatMessage(text: 'What are you up to?', isMe: false),
      // Add more messages as needed
    ],
  ),
  User(
    name: 'Abebe Amanuel',
    profileImage: 'https://example.com/profiles/jane_smith.jpg',
    lastMessage: 'Hello!',
    lastMessageTime: '10:45 AM',
    lastMessageDate: '19 September,',
    messages: [
      ChatMessage(text: 'Hello!', isMe: false),
      ChatMessage(text: 'What are you up to?', isMe: false),
      // Add more messages as needed
    ],
  ),
  User(
    name: 'Show Case',
    profileImage: 'https://example.com/profiles/jane_smith.jpg',
    lastMessage: 'Hello!',
    lastMessageTime: '10:45 AM',
    lastMessageDate: '19 September,',
    messages: [
      ChatMessage(text: 'Hello!', isMe: false),
      ChatMessage(text: 'What are you up to?', isMe: false),
      // Add more messages as needed
    ],
  ),
  User(
    name: 'Bright Sunu',
    profileImage: 'https://example.com/profiles/jane_smith.jpg',
    lastMessage: 'Hello!',
    lastMessageTime: '10:45 AM',
    lastMessageDate: '19 September',
    messages: [
      ChatMessage(text: 'Hello!', isMe: false),
      ChatMessage(text: 'What are you up to?', isMe: false),
      // Add more messages as needed
    ],
  ),
  // Add more users
];
