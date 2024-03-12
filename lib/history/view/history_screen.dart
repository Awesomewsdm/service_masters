import "package:service_masters/common/barrels.dart";

@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HistoryScreen"),
      ),
      body: const Center(
        child: Text("HistoryScreen"),
      ),
    );
  }
}
