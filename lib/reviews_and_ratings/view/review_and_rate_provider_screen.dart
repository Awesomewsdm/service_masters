import "package:service_masters/common/barrels.dart";

@RoutePage()
class ReviewAndRateProviderScreen extends StatelessWidget {
  const ReviewAndRateProviderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            radius: 50,
          ),
          Text("Provider Name"),
        ],
      ),
    );
  }
}
