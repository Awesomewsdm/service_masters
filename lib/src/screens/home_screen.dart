import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/components/all_category_widget.dart';
import 'package:home_service_app/src/app/components/category_widget.dart';
import 'package:home_service_app/src/app/components/custom_search_bar_widget.dart';
import 'package:home_service_app/src/app/components/service_card_widget.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good morning"),
                    PrimaryTextWidget(
                        text: "Awesome",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0),
                  ],
                ),
                Spacer(),
                Icon(
                  LineIcons.bell,
                  size: 30,
                )
              ],
            ),
          ),
        ),
        CustomSearchBar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CategoryWidget(
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
                CategoryWidget(heading: "Cleaning Services", categoryList: [
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
                CategoryWidget(heading: "Home Repairs", categoryList: [
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
