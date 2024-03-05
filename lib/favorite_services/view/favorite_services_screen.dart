import "package:service_masters/common/barrels.dart";

@RoutePage()
class FavoriteServicesScreen extends StatelessWidget {
  const FavoriteServicesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Providers"),
      ),
      body: const Center(
        child: Text("Favorite Providers"),
      ),
    );
  }
}
