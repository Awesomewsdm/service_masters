import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookingsScreen extends StatelessWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: ListView.builder(
        itemCount: mockUsers.length,
        itemBuilder: (context, index) {
          final user = mockUsers[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () => context.router.push(const BookedServiceRoute()),
              leading: const IconWithRoundBg(
                icon: CustomIcons.work,
                iconSize: 24,
                iconColor: Colors.grey,
              ),
              title: const PrimaryTextWidget(
                text: "Electrical Repairs Services",
                fontWeight: FontWeight.w500,
                fontSize: 18,
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
              trailing: const Column(
                children: [
                  PrimaryTextWidget(
                    text: "GHC100.00",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    fontColor: tPrimaryColor,
                  ),
                  TextWithBg(bgColor: tPrimaryColor, label: "Done"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
