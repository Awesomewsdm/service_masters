import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookingsScreen extends StatelessWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                showSearch<String>(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(CustomIcons.search),
            ),
          ],
          automaticallyImplyLeading: false,
          title: "My Bookings".bold,
          bottom: TabBar(
            indicatorColor: tWhiteColor,
            tabs: [
              Tab(
                child: Text(
                  "Upcoming",
                  style: context.textTheme.titleMedium,
                ),
              ),
              Tab(
                child: Text(
                  "Completed",
                  style: context.textTheme.titleMedium,
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
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () =>
                        context.router.push(const BookedServiceRoute()),
                    leading: const IconWithRoundBg(
                      icon: CustomIcons.work,
                      iconSize: 24,
                      iconColor: Colors.grey,
                    ),
                    title: Text(
                      "Electrical Repairs Services",
                      style: context.textTheme.titleMedium,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const ProfileImageWidget(
                              imageString: tPic,
                              height: 30,
                              width: 30,
                            ),
                            const Gap(5),
                            Flexible(
                              child: Text(
                                user.name,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const Text("Monday, 15th January - 15:00pm"),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          "GHC100.00",
                          style: context.textTheme.titleSmall,
                        ),
                        const TextWithBg(bgColor: tPrimaryColor, label: "Done"),
                      ],
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: mockUsers.length,
              itemBuilder: (context, index) {
                final user = mockUsers[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () =>
                        context.router.push(const BookedServiceRoute()),
                    leading: const IconWithRoundBg(
                      icon: CustomIcons.work,
                      iconSize: 24,
                      iconColor: Colors.grey,
                    ),
                    title: Text(
                      "Electrical Repairs Services",
                      style: context.textTheme.titleMedium,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const ProfileImageWidget(
                              imageString: tPic,
                              height: 30,
                              width: 30,
                            ),
                            const Gap(5),
                            Flexible(
                              child: Text(
                                user.name,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const Text("Monday, 15th January - 15:00pm"),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          "GHC100.00",
                          style: context.textTheme.titleSmall,
                        ),
                        const TextWithBg(bgColor: tPrimaryColor, label: "Done"),
                      ],
                    ),
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
