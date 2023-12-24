import 'package:home_service_app/src/app/barrels.dart';

class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: tPrimaryColor,
        title: const PrimaryTextWidget(
          text: "Video Call ",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Stack(
        children: [
          // Video stream
          Center(
            child: Container(
              color: Colors.white,
              child: Image.asset(
                "assets/images/doctor.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              // Add video stream here (e.g., using AgoraRtcEngine),
              // Replace this container with the actual video stream widget
            ),
          ),
          // UI controls
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.green, width: 2),
                    ),
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        tCleaningServices,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Gap(10),
                const Row(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: VideoCallScreen(),
  ));
}
