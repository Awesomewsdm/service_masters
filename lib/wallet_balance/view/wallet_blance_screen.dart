import "package:service_masters/common/barrels.dart";

@RoutePage()
class WalletBalnceScreen extends StatelessWidget {
  const WalletBalnceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WalletBalnceScreen"),
      ),
      body: const Center(
        child: Text("WalletBalnceScreen"),
      ),
    );
  }
}
