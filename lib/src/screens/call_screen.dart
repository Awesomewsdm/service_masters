import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_service_app/src/utils/exports.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: tPrimaryColor,
        centerTitle: true,
        title: const PrimaryTextWidget(
          text: "Call",
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Align(
            alignment: Alignment.center,
            child: ProfileImageWidget(
              imageString: tPic,
              height: 200,
              width: 200,
            ),
          ),
          Gap(10),
          PrimaryTextWidget(
            text: "Awesome Wisdom",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          Gap(10),
          Text("Calling..."),
          Spacer(flex: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconWithRoundBg(
                icon: Icons.volume_mute,
              ),
              IconWithRoundBg(
                icon: Icons.call_end,
                backgroundColor: Colors.red,
              ),
              IconWithRoundBg(
                icon: Icons.videocam,
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
