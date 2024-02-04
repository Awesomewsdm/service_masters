import "package:service_masters/common/barrels.dart";

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static Page<void> page() => const MaterialPage<void>(child: HomeScreen());

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bannerItems = [
    Image.asset(
      tLaundry,
      fit: BoxFit.cover,
    ),
    Image.asset(
      tACRepair,
      fit: BoxFit.cover,
    ),
    Image.asset(
      tTeachingServices,
      fit: BoxFit.cover,
    ),
  ];

  final PageController controller = PageController();

  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {
        currentPage = controller.page?.round() ?? 0;
      });
    });
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentPage < bannerItems.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      controller.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(GreetingService.getGreeting()),
                    const PrimaryTextWidget(
                      text: "K",
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    context.router.push(const NotificationRoute());
                  },
                  child: const IconWithRoundBg(
                    icon: CustomIcons.bell,
                    iconSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: GestureDetector(
                  onTap: () => context.router.push(const SearchRoute()),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: tPrimaryColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Search",
                          style: context.textTheme.bodyLarge,
                        ),
                        const Spacer(),
                        const Icon(
                          CustomIcons.search,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Expanded(
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: tPrimaryColor,
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(CustomIcons.map, color: tPrimaryColor),
                    onPressed: () {
                      context.router.push(const MapSearchRoute());
                    },
                    color: tPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: context.screenWidth,
                        height: 200,
                        child: PageView(
                          controller: controller,
                          children: bannerItems,
                        ),
                      ),
                      const Gap(20),
                      AnimatedSmoothIndicator(
                        activeIndex: currentPage,
                        count: 3,
                        effect: const WormEffect(dotHeight: 5.0),
                      ),
                    ],
                  ),
                ),
                CategoryWidget(
                  heading: "Categories",
                  onPressed: () => context.router.push(const AllCategories()),
                  categoryList: const [
                    CategoryCardWidget(
                      label: "Plumber",
                      iconData: CustomIcons.alarmClock,
                    ),
                    CategoryCardWidget(
                      label: "Carpenter",
                      iconData: CustomIcons.calendar2,
                    ),
                    CategoryCardWidget(
                      label: "Cleaner",
                      iconData: CustomIcons.camera2,
                    ),
                    CategoryCardWidget(
                      label: "Electrician",
                      iconData: CustomIcons.angleSmallLeft,
                    ),
                    CategoryCardWidget(
                      label: "Hairdresser",
                      iconData: CustomIcons.ambulance,
                    ),
                    CategoryCardWidget(
                      label: "Event Planner",
                      iconData: CustomIcons.activity,
                    ),
                  ],
                ),
                CategoryWidget(
                  onPressed: () {},
                  heading: "Cleaning Services",
                  categoryList: const [
                    ServiceCard(
                      image: tLaundry,
                    ),
                    ServiceCard(
                      image: tCleaningServices,
                    ),
                    ServiceCard(
                      image: tACRepair,
                    ),
                    ServiceCard(
                      image: tTeachingServices,
                    ),
                  ],
                ),
                CategoryWidget(
                  heading: "Home Repairs",
                  categoryList: const [
                    ServiceCard(
                      image: tLaundry,
                    ),
                    ServiceCard(
                      image: tCleaningServices,
                    ),
                    ServiceCard(
                      image: tACRepair,
                    ),
                    ServiceCard(
                      image: tTeachingServices,
                    ),
                  ],
                  onPressed: () {},
                ),
                CategoryWidget(
                  onPressed: () {},
                  heading: "Artisans",
                  categoryList: const [
                    ProviderCardWidget(
                      image: tLaundry,
                    ),
                    ProviderCardWidget(
                      image: tCleaningServices,
                    ),
                    ProviderCardWidget(
                      image: tACRepair,
                    ),
                    ProviderCardWidget(
                      image: tTeachingServices,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
