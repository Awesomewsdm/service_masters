import "package:home_service_app/common/barrels.dart";

@RoutePage()
class NofificationScreen extends StatelessWidget {
  const NofificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
        title: const Text(
          "Notifications",
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: const IconWithRoundBg(
              icon: LineIcons.bell,
            ),
            title: const PrimaryTextWidget(
              fontSize: 18,
              text: "Order Accepted",
              fontWeight: FontWeight.bold,
            ),
            subtitle: const Text("Your order was accepted"),
            trailing: PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: ListTile(
                      leading: const Icon(Icons.delete),
                      title: const Text("Delete"),
                      onTap: () {
                        // Handle delete action
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  PopupMenuItem(
                    child: ListTile(
                      isThreeLine: true,
                      horizontalTitleGap: 10,
                      minLeadingWidth: 20,
                      leading: const Icon(Icons.archive),
                      title: const Text("Archive"),
                      onTap: () {
                        // Handle archive action
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  // Add more menu items as needed
                ];
              },
            ),
          );
        },
      ),
    );
  }
}
