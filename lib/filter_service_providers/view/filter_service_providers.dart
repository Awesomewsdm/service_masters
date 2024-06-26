import "package:service_masters/common/barrels.dart";

class FilterServiceProvidersScreen extends StatefulWidget {
  const FilterServiceProvidersScreen({super.key});

  @override
  State<FilterServiceProvidersScreen> createState() =>
      _FilterServiceProvidersScreenState();
}

class _FilterServiceProvidersScreenState
    extends State<FilterServiceProvidersScreen> {
  final List<String> languages = [
    "English",
    "French",
    "Twi",
    "Ewe",
    "Hausa",
    "Ga",
    "Dagbani",
    "Fante",
    "Dagare",
    "Akuapem",
    "Asante",
    "Akyem",
    "Krobo",
    "Wassa",
    "Wala",
    "Nzema",
    "Sefwi",
    "Bono",
    "Ahafo",
    "Aowin",
    "Bia",
    "Bibiani",
  ];

  final List<String> location = [
    "Accra",
    "Kumasi",
    "Takoradi",
    "Tamale",
    "Ho",
    "Sunyani",
    "Cape Coast",
    "Koforidua",
    "Techiman",
    "Sekondi-Takoradi",
    "Obuasi",
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterServiceProvidersCubit,
        FilterServiceProvidersState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(10),
          height: context.screenHeight,
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
                      CustomIcons.crossSmall,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Filter",
                    style: context.textTheme.titleMedium,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      context.read<FilterServiceProvidersCubit>().clearAll();
                    },
                    child: Text(
                      "Clear all",
                      style: context.textTheme.titleSmall!
                          .copyWith(color: tPrimaryColor),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.shade300,
              ),
              const Gap(10),
              Flexible(
                child: SizedBox(
                  height: context.screenHeight,
                  width: context.screenWidth,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: context.textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Gap(10),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            for (var i = 0; i < 5; i++)
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<FilterServiceProvidersCubit>()
                                      .selectLocations(location[i]);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 18,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: state.selectedLocations
                                              .contains(location[i])
                                          ? tPrimaryColor
                                          : Colors.grey.shade300,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    location[i],
                                    style:
                                        context.textTheme.bodyLarge!.copyWith(
                                      color: state.selectedLocations
                                              .contains(location[i])
                                          ? tPrimaryColor
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            Text(
                              "Show more",
                              style: context.textTheme.titleSmall!
                                  .copyWith(color: tPrimaryColor),
                            ),
                          ],
                        ),
                        const Gap(10),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                        Text(
                          "Provider Rating",
                          style: context.textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Gap(8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (var i = 5; i > 0; i--)
                              RatingBox(
                                onTap: () {
                                  context
                                      .read<FilterServiceProvidersCubit>()
                                      .selectRating(i);
                                },
                                ratingNumber: "$i",
                                containerColor: state.selectedRating == i
                                    ? tPrimaryColor
                                    : Colors.white,
                                iconColor: state.selectedRating == i
                                    ? Colors.white
                                    : tPrimaryColor,
                                textColor: state.selectedRating == i
                                    ? Colors.white
                                    : Colors.black,
                              ),
                          ],
                        ),
                        const Gap(10),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                        BlocBuilder<PriceRangeCubit, PriceRangeState>(
                          builder: (context, state) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Price",
                                  style: context.textTheme.titleMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                SfRangeSlider(
                                  max: 100.0,
                                  values: state.selectedRangeValues,
                                  interval: 20,
                                  showLabels: true,
                                  enableTooltip: true,
                                  onChanged: (SfRangeValues values) {
                                    context
                                        .read<PriceRangeCubit>()
                                        .selectedPriceRange(values);
                                  },
                                ),
                                const Gap(20),
                                Row(
                                  children: [
                                    PriceRangeBox(
                                      // ignore: avoid_dynamic_calls
                                      value: state.selectedRangeValues.start
                                          .round()
                                          .toString(),
                                      range: "Min:",
                                    ),
                                    const Spacer(),
                                    PriceRangeBox(
                                      // ignore: avoid_dynamic_calls
                                      value: state.selectedRangeValues.end
                                          .round()
                                          .toString(),
                                      range: "Max:",
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                        const Gap(10),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                        Text(
                          "Provider speaks",
                          style: context.textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Gap(10),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            for (var i = 0; i < 10; i++)
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<FilterServiceProvidersCubit>()
                                      .selectLanguages(languages[i]);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 18,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: state.selectedLanguages
                                              .contains(languages[i])
                                          ? tPrimaryColor
                                          : Colors.grey.shade300,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    languages[i],
                                    style:
                                        context.textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: state.selectedLanguages
                                              .contains(languages[i])
                                          ? tPrimaryColor
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            Text(
                              "Show more",
                              style: context.textTheme.titleSmall!
                                  .copyWith(color: tPrimaryColor),
                            ),
                          ],
                        ),
                        const Gap(10),
                      ],
                    ),
                  ),
                ),
              ),
              PrimaryButton(
                label: "Show results",
                onPressed: () {
                  context.read<ServiceProviderBloc>().add(
                        ServiceProviderEvent.filterServiceProviders(
                          languagesSpoken: state.selectedLanguages,
                          location: state.selectedLocations,
                        ),
                      );
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
