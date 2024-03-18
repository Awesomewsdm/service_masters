import "package:service_masters/common/barrels.dart";

class FilterServiceProvidersScreen extends StatefulWidget {
  const FilterServiceProvidersScreen({super.key});

  @override
  State<FilterServiceProvidersScreen> createState() =>
      _FilterServiceProvidersScreenState();
}

class _FilterServiceProvidersScreenState
    extends State<FilterServiceProvidersScreen> {
  SfRangeValues _values = const SfRangeValues(20.0, 80.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: context.screenHeight / 1.05,
      width: context.screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            style: context.textTheme.titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
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
          Text(
            "Price",
            style: context.textTheme.titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SfRangeSlider(
            max: 100.0,
            values: _values,
            interval: 20,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            minorTicksPerInterval: 1,
            onChanged: (SfRangeValues values) {
              setState(() {
                _values = values;
              });
            },
          ),
          const Gap(20),
          Row(
            children: [
              PriceRangeBox(
                value: _values.start.toString(),
                range: "Min:",
              ),
              const Spacer(),
              PriceRangeBox(
                value: _values.end.toString(),
                range: "Max:",
              ),
            ],
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
