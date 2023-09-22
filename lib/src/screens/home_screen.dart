import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/components/all_category_widget.dart';
import 'package:home_service_app/src/app/components/category_widget.dart';
import 'package:home_service_app/src/app/components/custom_search_bar_widget.dart';
import 'package:home_service_app/src/app/components/icons/icon_button.dart';
import 'package:home_service_app/src/app/components/service_card_widget.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:line_icons/line_icons.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = LiquidController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Column(
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
                Spacer(),
                IconWithBg()
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
                ])
              ],
            ),
          ),
        ),
      ],
    );
  }
}
