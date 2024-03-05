import "package:service_masters/common/barrels.dart";

@RoutePage()
class FavoriteServiceProvidersScreen extends StatelessWidget {
  const FavoriteServiceProvidersScreen({super.key});
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
