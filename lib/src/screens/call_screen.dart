import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/components/user_profile/profile_image.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          ProfileImageWidget(imageString: tPic, height: 200, width: 200),
          Text("Awesome Wisdom"),
          Text("Calling")
        ],
      ),
    );
  }
}
