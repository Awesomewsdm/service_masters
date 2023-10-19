import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:home_service_app/src/screens/chat_input_field.dart';
import 'package:home_service_app/src/utils/exports.dart';

class ChatScreen extends StatelessWidget {
  final User user;

  ChatScreen({super.key, required this.user});
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tPrimaryColor,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert_rounded),
          )
        ],
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(tPic),
              //  NetworkImage(user.profileImage)
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.name),
                const Text(
                  "online",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                )
              ],
            ),
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
              icon: const Icon(LineIcons.phone),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CallScreen(),
                  ),
                );
              },
              icon: const Icon(LineIcons.video),
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
          InputFieldWidget(
            textEditingController: textEditingController,
          )
        ],
      ),
    );
  }
}

// enum  {booked, pending, cancelled, rejected, active}

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
    name: 'John Dawg',
    profileImage: 'https://example.com/profiles/john_doe.jpg',
    lastMessage: 'Hey there!',
    lastMessageTime: '1:30 PM',
    lastMessageDate: '19 September',
    messages: [
      ChatMessage(text: 'Hey!', isMe: false),
      ChatMessage(
          text: 'How are you, hope all is well with you my friend?',
          isMe: false),
      ChatMessage(
          text: 'How are you, hope all is well with you my friend?',
          isMe: true),
      ChatMessage(
          text: 'How are you, hope all is well with you my friend?',
          isMe: false),
      ChatMessage(
          text: 'How are you, hope all is well with you my friend?',
          isMe: false),
      ChatMessage(
          text: 'How are you, hope all is well with you my friend?',
          isMe: false),
      ChatMessage(
          text: 'How are you, hope all is well with you my friend?',
          isMe: false),
      ChatMessage(
          text: 'How are you, hope all is well with you my friend?',
          isMe: false),
      ChatMessage(
          text: 'How are you, hope all is well with you my friend?',
          isMe: false),
      ChatMessage(
          text: 'How are you, hope all is well with you my friend?',
          isMe: false),
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
