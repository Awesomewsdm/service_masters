import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/screens/chat_screen.dart';
import 'package:line_icons/line_icons.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: tPrimaryColor,
        title: const PrimaryTextWidget(
          text: "Bookings",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            final user = mockUsers[index];
            return ListTile(
                leading: const Icon(LineIcons.toolbox),
                // const CircleAvatar(
                //   backgroundImage: AssetImage(tPic),
                //   //  NetworkImage(user.profileImage)
                // ),
                title: Text(user.name),
                subtitle:
                    Text("${user.lastMessageDate},${user.lastMessageTime}"),
                trailing: const Icon(
                  LineIcons.phone,
                  color: tPrimaryColor,
                ));
          }),
    );
  }
}
