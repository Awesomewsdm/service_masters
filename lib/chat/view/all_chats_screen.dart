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
                  subtitle: Text(user.lastMessage),
                  trailing: Text(
                    user.lastMessageTime,
                    style: context.textTheme.titleSmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  onTap: () {
                    context.router.push(
                      ChatRoute(
                        user: user,
                      ),
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
