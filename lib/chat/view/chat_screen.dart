import "package:chat_bubbles/bubbles/bubble_special_one.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class ChatScreen extends StatelessWidget {
  ChatScreen({required this.user, super.key});
  final UserModel user;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.more_vert_rounded),
          ),
        ],
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(tPic),
                //  NetworkImage(user.profileImage)
              ),
            ),
            Flexible(
              flex: 10,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text(
                    "online",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                context.router.push(const VideoCallRoute());
              },
              icon: const Icon(CustomIcons.call),
            ),
            IconButton(
              onPressed: () {
                context.router.push(const VideoCallRoute());
              },
              icon: const Icon(CustomIcons.video),
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
          ),
        ],
      ),
    );
  }
}

// enum  {booked, pending, cancelled, rejected, active}
