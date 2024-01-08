import "package:service_masters/common/barrels.dart";

@RoutePage()
class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tPrimaryColor,
        title: const Text("All Categories"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          shrinkWrap: true,
          mainAxisSpacing: 10,
          crossAxisCount: 4,
          children: const [
            CategoryCardWidget(
              label: "Plumber",
              iconData: CustomIcons.wallet,
            ),
            CategoryCardWidget(
              label: "Carpenter",
              iconData: CustomIcons.hastag,
            ),
            CategoryCardWidget(
              label: "Cleaner",
              iconData: CustomIcons.raindrops,
            ),
            CategoryCardWidget(
              label: "Electrician",
              iconData: CustomIcons.search,
            ),
            CategoryCardWidget(
              label: "Hairdresser",
              iconData: CustomIcons.headphones,
            ),
            CategoryCardWidget(
              label: "House Help",
              iconData: CustomIcons.headset,
            ),
          ],
        ),
      ),
    );
  }
}
