import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_service_app/common/components/custom_icons/custom_icons_icons.dart';
import 'package:home_service_app/search_providers/view/search_screen.dart';
import 'package:home_service_app/src/utils/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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

    // Set up the page controller with the onPageChanged callback
    controller.addListener(() {
      setState(() {
        currentPage = controller.page?.round() ?? 0;
      });
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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good morning,"),
                    PrimaryTextWidget(
                      text: "Awesome Wisdom",
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NofificationScreen(),
                      ),
                    );
                  },
                  child: const IconWithRoundBg(
                    icon: CustomIcons.bell,
                    iconSize: 24,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SearchBar(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            ),
            elevation: const MaterialStatePropertyAll(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(
                  color: tPrimaryColor,
                ),
              ),
            ),
            backgroundColor: const MaterialStatePropertyAll(Colors.white),
            hintText: "Hello World",
            trailing: const [
              Expanded(
                child: VerticalDivider(
                  thickness: 5,
                  color: tPrimaryColor,
                ),
              ),
              Icon(Icons.search),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        width: context.screenWidth,
                        height: 200,
                        decoration: const BoxDecoration(),
                        child: PageView(
                            controller: controller, children: bannerItems),
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
                const CategoryWidget(
                  heading: "Categories",
                  categoryList: [
                    CategoryCardWidget(
                      label: "Plumber",
                      iconData: LineIcons.windows,
                    ),
                    CategoryCardWidget(
                      label: "Carpenter",
                      iconData: LineIcons.hammer,
                    ),
                    CategoryCardWidget(
                      label: "Cleaner",
                      iconData: LineIcons.accessibleIcon,
                    ),
                    CategoryCardWidget(
                        label: "Electrician", iconData: LineIcons.accusoft),
                    CategoryCardWidget(
                      label: "Hairdresser",
                      iconData: LineIcons.adobe,
                    ),
                    CategoryCardWidget(
                        label: "Event Planner", iconData: LineIcons.tools),
                  ],
                ),
                const CategoryWidget(
                    heading: "Cleaning Services",
                    categoryList: [
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
                    ]),
                const CategoryWidget(heading: "Home Repairs", categoryList: [
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
                ]),
                const CategoryWidget(heading: "Artisans", categoryList: [
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
                ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
