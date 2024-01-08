import "package:agora_rtc_engine/agora_rtc_engine.dart";
import "package:permission_handler/permission_handler.dart";
import "package:service_masters/common/barrels.dart";

// class VideoCallScreen extends StatelessWidget {
//   const VideoCallScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Video stream
//           Center(
//             child: Container(
//               color: Colors.white,
//               child: Image.asset(
//                 "assets/images/doctor.png",
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           Positioned(
//             bottom: 20,
//             left: 0,
//             right: 0,
//             child: Column(
//               children: [
//                 Align(
//                   alignment: Alignment.bottomRight,
//                   child: Container(
//                     margin: const EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     width: 150,
//                     height: 150,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset(
//                         tCleaningServices,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const Gap(10),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     IconWithRoundBg(
//                       icon: Icons.volume_mute,
//                     ),
//                     IconWithRoundBg(
//                       icon: Icons.call_end,
//                       backgroundColor: Colors.red,
//                     ),
//                     IconWithRoundBg(
//                       icon: Icons.videocam,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

@RoutePage()
class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  int? _remoteUid;
  bool localUserJoined = false;
  bool audioMuted = false;
  bool frontCamera = true;
  late RtcEngine _engine;

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            color: Colors.blue[100],
            child: _remoteVideo(),
          ),
          Positioned(
            bottom: 100,
            right: 10,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 180,
                width: 150,
                child: localUserJoined
                    ? AgoraVideoView(
                        controller: VideoViewController(
                          rtcEngine: _engine,
                          canvas: const VideoCanvas(uid: 0),
                        ),
                      )
                    : const Center(child: Text("Loading")),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: toggleCamera,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Icon(
                          frontCamera
                              ? Icons.camera_rear_rounded
                              : Icons.camera_front_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  InkWell(
                    onTap: () async {
                      await _engine
                          .leaveChannel()
                          .then((value) => Navigator.pop(context));
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.call_end_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  InkWell(
                    onTap: toggleAudio,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Icon(
                          audioMuted ? Icons.mic : Icons.mic_off,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void toggleAudio() {
    if (!mounted) return;
    if (!audioMuted) {
      _engine.muteLocalAudioStream(true);
    } else {
      _engine.muteLocalAudioStream(false);
    }
    setState(() {
      audioMuted = !audioMuted;
    });
  }

  void toggleCamera() {
    if (!mounted) return;
    _engine.switchCamera();
    setState(() {
      frontCamera = !frontCamera;
    });
  }

  Future<void> initAgora() async {
    await [Permission.microphone, Permission.camera].request();

    _engine = createAgoraRtcEngine();
    await _engine.initialize(
      const RtcEngineContext(
        appId: CallConstant.appID,
        channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
      ),
    );

    _engine.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          debugPrint("local user ${connection.localUid} joined");
          setState(() {
            localUserJoined = true;
          });
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          debugPrint("remote user $remoteUid joined");
          setState(() {
            _remoteUid = remoteUid;
          });
        },
        onUserOffline: (
          RtcConnection connection,
          int remoteUid,
          UserOfflineReasonType reason,
        ) {
          debugPrint("remote user $remoteUid left channel");
          setState(() {
            _remoteUid = null;
          });
        },
        onTokenPrivilegeWillExpire: (RtcConnection connection, String token) {
          debugPrint(
            "[onTokenPrivilegeWillExpire] connection: ${connection.toJson()}, token: $token",
          );
        },
      ),
    );

    await _engine.setClientRole(role: ClientRoleType.clientRoleBroadcaster);
    await _engine.enableVideo();
    await _engine.startPreview();

    await _engine.joinChannel(
      token: CallConstant.tempToken,
      channelId: CallConstant.channelName,
      uid: 0,
      options: const ChannelMediaOptions(),
    );
  }

  Widget _remoteVideo() {
    if (_remoteUid != null) {
      return AgoraVideoView(
        controller: VideoViewController.remote(
          rtcEngine: _engine,
          canvas: VideoCanvas(uid: _remoteUid),
          connection: const RtcConnection(channelId: CallConstant.channelName),
        ),
      );
    } else {
      return const Center(
        child: Text(
          "Please wait for doctor to join",
          textAlign: TextAlign.center,
        ),
      );
    }
  }
}
