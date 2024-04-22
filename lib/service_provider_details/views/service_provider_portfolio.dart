import "package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class ServiceProviderPortfolioScreen extends StatelessWidget {
  const ServiceProviderPortfolioScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: GridView.custom(
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          pattern: [
            const WovenGridTile(1),
            const WovenGridTile(
              0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(tPic),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
