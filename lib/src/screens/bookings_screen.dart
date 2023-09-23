import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/icons/icon_button.dart';
import 'package:home_service_app/src/app/components/icons/text_with_bg.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/app/components/user_profile/profile_image.dart';
import 'package:home_service_app/src/screens/booked_service_screen.dart';
import 'package:home_service_app/src/screens/chat_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:line_icons/line_icons.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.search)],
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: tPrimaryColor,
        title: const PrimaryTextWidget(
          text: "My Bookings",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView.builder(
          itemCount: mockUsers.length,
          itemBuilder: (context, index) {
            final user = mockUsers[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BookedServiceScreen(),
                        ),
                      ),
                  leading: const IconWithBg(icon: LineIcons.toolbox),
                  title: const PrimaryTextWidget(
                      text: "Electrical Repairs",
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProfileImageWidget(
                              imageString: tPic, height: 30, width: 30),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(user.name),
                        ],
                      ),
                      const Text("Monday, 15th January - 15:00pm"),
                    ],
                  ),
                  trailing: const Column(
                    children: [
                      PrimaryTextWidget(
                        text: "GHC100.00",
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontColor: tPrimaryColor,
                      ),
                      TextWithBg(bgColor: tPrimaryColor, label: "Done"),
                    ],
                  )),
            );
          }),
    );
  }
}
