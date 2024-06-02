import "package:service_masters/common/barrels.dart";
import "package:service_masters/enums/chat_status.dart";

@RoutePage()
class AllChatsScreen extends HookWidget {
  const AllChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(
      () => () {
        context.read<ChatBloc>().add(
              ChatEvent.onFetchChats(
                participantId: context.read<AppBloc>().state.customer.id,
              ),
            );
      },
      [],
    );

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
                switch (state.status) {
                  case ChatStatus.initial:
                    return const Center(child: CircularProgressIndicator());
                  case ChatStatus.loading:
                    return const Center(child: CircularProgressIndicator());
                  case ChatStatus.success:
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
                                serviceProvider:
                                    state.serviceProviders.firstWhere(
                                  (serviceProvider) => chats.participantsId
                                      .contains(serviceProvider.providerId),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  case ChatStatus.failed:
                    return const Center(child: Text("Failed to load chats."));
                  case ChatStatus.empty:
                    if (state.chats.isEmpty) {
                      return const Center(
                        child: StatusWidget(
                          message: "No ",
                          image: tNoData,
                          subtitle:
                              "Please check back later, or Pull down to refresh",
                        ),
                      );
                    }
                    return const Center(child: Text("No chats found."));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
