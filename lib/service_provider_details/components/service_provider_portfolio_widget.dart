import "package:service_masters/common/barrels.dart";

class ServiceProviderPortfolioWidget extends StatelessWidget {
  const ServiceProviderPortfolioWidget({
    required this.imageAssets,
    super.key,
  });

  final List<String> imageAssets;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Wrap(
        spacing: 5,
        runSpacing: 5,
        children: List.generate(
          imageAssets.length,
          (index) => SizedBox(
            height: 80,
            width: (context.screenWidth / 2) - 15,
            child: Image.asset(
              imageAssets[index % imageAssets.length],
              fit: BoxFit.cover,
              height: 40,
            ),
          ),
        ),
      ),
    );
  }
}
