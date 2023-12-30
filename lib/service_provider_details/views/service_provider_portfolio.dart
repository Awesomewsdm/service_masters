import 'package:home_service_app/common/barrels.dart';

class ServiceProviderPortfolio extends StatelessWidget {
  const ServiceProviderPortfolio({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Portfolio'),
        ),
        body: Staggere.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(tPic),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ));
  }
}
