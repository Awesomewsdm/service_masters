import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/screens/chat_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:line_icons/line_icons.dart';

class AllChatsScreen extends StatelessWidget {
  const AllChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: tWhiteColor,
          elevation: 0,
          title: const PrimaryTextWidget(
            text: "Chats",
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontColor: tBlackColor,
          ),
          bottom: const TabBar(tabs: [
            Tab(
              child: PrimaryTextWidget(
                text: "Messsages",
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontColor: tBlackColor,
              ),
            ),
            Tab(
              child: PrimaryTextWidget(
                text: "Calls",
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontColor: tBlackColor,
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          ListView.builder(
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
          ListView.builder(
              itemCount: mockUsers.length,
              itemBuilder: (context, index) {
                final user = mockUsers[index];
                return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(tPic),
                      //  NetworkImage(user.profileImage)
                    ),
                    title: Text(user.name),
                    subtitle:
                        Text("${user.lastMessageDate},${user.lastMessageTime}"),
                    trailing: const Icon(
                      LineIcons.phone,
                      color: tPrimaryColor,
                    ));
              }),
        ]),
      ),
    );
  }
}
