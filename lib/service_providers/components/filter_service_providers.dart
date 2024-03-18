import "package:service_masters/common/barrels.dart";
import "package:service_masters/service_providers/components/rating_box.dart";

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
          Row(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      CustomIcons.money,
                      color: tPrimaryColor,
                    ),
                    Text(
                      "${_values.start}",
                      style: context.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                "Max: ${_values.end}",
                style: context.textTheme.bodyMedium,
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
