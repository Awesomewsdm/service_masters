import "package:service_masters/common/barrels.dart";

@RoutePage()
class TermasAndConditionsScreen extends StatelessWidget {
  const TermasAndConditionsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TermasAndConditions"),
      ),
      body: const Center(
        child: Text("TermasAndConditions"),
      ),
    );
  }
}
