import 'package:flutter/material.dart';
import 'package:home_service_app/src/utils/exports.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = LiquidController();

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
                    icon: LineIcons.bell,
                  ),
                )
              ],
            ),
          ),
        ),
        const CustomSearchBar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          tBanner1,
                          fit: BoxFit.cover,
                          height: 150,
                          width: double.infinity,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
