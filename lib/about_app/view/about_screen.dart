import "package:home_service_app/common/barrels.dart";

@RoutePage()
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SizedBox(
        child: Text(
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos, impedit? Iste cupiditate laboriosam voluptate architecto hic suscipit in, illum unde similique, ducimus, perferendis labore nulla voluptatum iusto tempora possimus! Perferendis!",
        ),
      ),
    );
  }
}
