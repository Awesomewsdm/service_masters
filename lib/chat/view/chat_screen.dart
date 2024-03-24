import "package:service_masters/common/barrels.dart";

@RoutePage()
class ChatScreen extends HookWidget {
  ChatScreen({required this.user, this.serviceProvider, super.key});
  final ServiceProvider? serviceProvider;

  final UserModel user;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final customer = context.select((AppBloc bloc) => bloc.state.customer);

    useEffect(
        () => () {
              context.read<ChatBloc>().add(const ChatEvent.fetchMessage());
            },
        []);

    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
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
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
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
                  itemCount: state.messages.length,
                  itemBuilder: (context, index) {
                    final chat = state.messages[index];
                    return BubbleSpecialOne(
                      // alignment: message.isMe
                      //     ? Alignment.topRight
                      //     : Alignment.topLeft,
                      // margin: BubbleEdges.only(top: 10),
                      color: const Color.fromRGBO(212, 234, 244, 1.0),

                      text: chat.message,
                    );
                  },
                ),
              ),
              InputFieldWidget(
                textEditingController: textEditingController,
                onTap: () {
                  final chat = Chat(
                    message: textEditingController.text,
                    senderId: customer.id,
                    createdAt: DateTime.now(),
                  );
                  context
                      .read<ChatBloc>()
                      .add(ChatEvent.sendMessage(chat: chat));
                  textEditingController.clear();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
