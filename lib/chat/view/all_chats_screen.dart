import "package:home_service_app/common/barrels.dart";

class AllChatsScreen extends StatelessWidget {
  const AllChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: tPrimaryColor,
          elevation: 0,
          title: const PrimaryTextWidget(
            text: "Chats",
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontColor: tWhiteColor,
          ),
          bottom: const TabBar(
            indicatorColor: tWhiteColor,
            tabs: [
              Tab(
                child: PrimaryTextWidget(
                  text: "Messsages",
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  fontColor: tWhiteColor,
                ),
              ),
              Tab(
                child: PrimaryTextWidget(
                  text: "Calls",
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  fontColor: tWhiteColor,
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
                    // Navigate to individual chat screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(user: user),
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
                    LineIcons.phone,
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
