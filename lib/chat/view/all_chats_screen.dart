import "package:service_masters/common/barrels.dart";

@RoutePage()
class AllChatsScreen extends StatelessWidget {
  const AllChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: "Chats".text,
          actions: [
            IconButton(
              onPressed: () {
                showSearch<String>(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(CustomIcons.search),
            ),
          ],
          bottom: TabBar(
            indicatorColor: tWhiteColor,
            tabs: [
              Tab(
                child: Text(
                  "Messsages",
                  style:
                      context.textTheme.bodyLarge!.copyWith(color: tWhiteColor),
                ),
              ),
              Tab(
                child: Text(
                  "Calls",
                  style:
                      context.textTheme.bodyLarge!.copyWith(color: tWhiteColor),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                return ListView.builder(
                  itemCount: state.chats.length,
                  itemBuilder: (context, index) {
                    final chats = state.chats[index];
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage(tPic),
                        //  NetworkImage(user.profileImage)
                      ),
                      title: Text(chats.id),
                      subtitle: Text(chats.lastMessage),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "10",
                            style: context.textTheme.titleSmall!.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: tPrimaryColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Text(
                                "1",
                                style: context.textTheme.bodySmall!
                                    .copyWith(color: tWhiteColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        context.router.push(
                          ChatRoute(
                              // serviceProvider: serviceProvider,
                              ),
                        );
                      },
                    );
                  },
                );
              },
            ),
            ListView.builder(
              itemCount: mockUsers.length,
              itemBuilder: (context, index) {
                final user = mockUsers[index];
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(tPic),
                    //  NetworkImage(user.profileImage)
                  ),
                  title: Text(user.name),
                  subtitle:
                      Text("${user.lastMessageDate},${user.lastMessageTime}"),
                  trailing: const Icon(
                    CustomIcons.call,
                    color: tPrimaryColor,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
