import "package:service_masters/common/barrels.dart";

@RoutePage()
class FAQsScreen extends StatelessWidget {
  const FAQsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAQsScreen"),
      ),
      body: const Center(
        child: Text("FAQsScreen"),
      ),
    );
  }
}
