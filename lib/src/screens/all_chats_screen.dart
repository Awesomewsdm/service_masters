import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/screens/chat_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';

class AllChatsScreen extends StatelessWidget {
  const AllChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: tWhiteColor,
        elevation: 0,
        title: const Text(
          'Chats',
          style: TextStyle(color: tPrimaryColor),
        ),
      ),
      body: ListView.builder(
        itemCount: mockUsers.length,
        itemBuilder: (context, index) {
          final user = mockUsers[index];
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage(tPic),
              //  NetworkImage(user.profileImage)
            ),
            title: Text(user.name),
            subtitle: Text(user.lastMessage),
            trailing: Text(user.lastMessageTime),
            onTap: () {
              // Navigate to individual chat screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(user: user),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
