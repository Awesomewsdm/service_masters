import "package:service_masters/common/barrels.dart";

@RoutePage()
class ChatScreen extends HookWidget {
  const ChatScreen({required this.user, this.serviceProvider, super.key});
  final ServiceProvider? serviceProvider;

  final UserModel user;
  @override
  Widget build(BuildContext context) {
    final customer = context.select((AppBloc bloc) => bloc.state.customer);
    final textEditingController = useTextEditingController();
    final scrollController = useScrollController();
    final isTyping = useState(false);

    useEffect(
      () => () {
        context.read<ChatBloc>().add(const ChatEvent.fetchMessage());
      },
      [],
    );

    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: backgroundColor1,
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
                child: GestureDetector(
                  onTap: () {
                    scrollController.animateTo(
                      0,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: state.messages.length,
                      itemBuilder: (context, index) {
                        final chat = state.messages[index];
                        return BubbleSpecialOne(
                          isSender: chat.senderId == customer.id,
                          sent: state.status.isMessageSent,
                          color: const Color.fromRGBO(212, 234, 244, 1.0),
                          text: chat.message,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: TextField(
                        maxLines: null,
                        onChanged: (text) {
                          useState(
                            () {
                              if (text.isNotEmpty) {
                                isTyping.value = true;
                              } else {
                                isTyping.value = false;
                              }
                              return null;
                            },
                          );
                        },
                        controller: textEditingController,
                        decoration: InputDecoration(
                          hintText: "Type a message...",
                          hintStyle: context.textTheme.bodyLarge!
                              .copyWith(color: Colors.grey),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.attach_file,
                      ),
                      onPressed: () {},
                    ),
                    if (textEditingController.text.isEmpty)
                      IconButton(
                        icon: const Icon(
                          CustomIcons.voice,
                        ),
                        onPressed: () {},
                      )
                    else
                      GestureDetector(
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
                        child: const IconWithRoundBg(
                          icon: Icons.send,
                          iconSize: 20,
                          iconColor: tWhiteColor,
                          backgroundHeight: 36,
                          backgroundWidth: 36,
                          backgroundColor: tLightBlue,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
