import "package:service_masters/common/barrels.dart";

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
              icon: CustomIcons.bell,
            ),
            title: Text(
              "Order Accepted",
              style: context.textTheme.bodyLarge,
            ),
            subtitle: const Text("Your order was accepted"),
            trailing: PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    child: ListTile(
                      leading: const Icon(Icons.delete),
                      title: const Text("Delete"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  PopupMenuItem<String>(
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
                ];
              },
            ),
          );
        },
      ),
    );
  }
}
