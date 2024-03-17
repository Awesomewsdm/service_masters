import "package:service_masters/common/barrels.dart";
import "package:service_masters/service_providers/components/rating_box.dart";

class FilterServiceProvidersScreen extends StatelessWidget {
  const FilterServiceProvidersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: context.screenHeight / 1.05,
      width: context.screenWidth,
      child: Column(
        children: [
          const Gap(5),
          Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  CustomIcons.crossCircle,
                  size: 30,
                  color: Colors.red.shade300,
                ),
              ),
              const Spacer(),
              Text(
                "Filter",
                style: context.textTheme.titleMedium,
              ),
              const Spacer(),
            ],
          ),
          const Divider(),
          Text(
            "Filter by",
            style: context.textTheme.titleSmall,
          ),
          const Gap(10),
          const Text(
            "Location",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          const Text(
            "Service Type",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          Text(
            "Rating",
            style: context.textTheme.bodyLarge,
          ),
          const Gap(8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RatingBox(
                ratingNumber: "1",
              ),
              RatingBox(
                ratingNumber: "2",
              ),
              RatingBox(
                ratingNumber: "3",
              ),
              RatingBox(
                ratingNumber: "4",
              ),
              RatingBox(
                ratingNumber: "5",
              ),
            ],
          ),
          const Gap(10),
          const Text(
            "Price",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          const Text(
            "Availability",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          const Text(
            "",
          ),
        ],
      ),
    );
  }
}
