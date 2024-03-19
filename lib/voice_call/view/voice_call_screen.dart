import "package:service_masters/common/barrels.dart";

@RoutePage()
class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tPrimaryColor,
        centerTitle: true,
        title: Text(
          "Call",
          style: context.textTheme.titleMedium,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Align(
            child: ProfileImageWidget(
              imageString: tPic,
              height: 200,
              width: 200,
            ),
          ),
          const Gap(10),
          Text(
            "Awesome Wisdom",
            style: context.textTheme.titleLarge,
          ),
          const Gap(10),
          const Text("Calling..."),
          const Spacer(flex: 5),
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
          const Spacer(),
        ],
      ),
    );
  }
}
