import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_service_app/common/custom_icons_icons.dart';
import 'package:home_service_app/src/screens/search_screen.dart';
import 'package:home_service_app/src/utils/exports.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = LiquidController();

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
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
                        width: screenSize.width,
                        height: 200,
                        decoration: const BoxDecoration(),
                        child: PageView(
                          children: [
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
                          ],
                        ),
                      ),
                      const Gap(20),
                      AnimatedSmoothIndicator(
                        activeIndex: controller.currentPage,
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
