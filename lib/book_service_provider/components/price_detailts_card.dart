import "package:service_masters/common/barrels.dart";

class PriceDetailsCard extends StatelessWidget {
  const PriceDetailsCard({
    required this.servicePrice,
    required this.serviceFee,
    required this.totalPrice,
    super.key,
  });
  final String servicePrice;
  final String serviceFee;
  final String totalPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Service Price", style: context.textTheme.bodyLarge),
              Text(
                servicePrice,
                style: context.textTheme.bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Service Fee", style: context.textTheme.bodyLarge),
              Text(
                serviceFee,
                style: context.textTheme.bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total", style: context.textTheme.bodyLarge),
              Text(
                totalPrice,
                style: context.textTheme.bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
