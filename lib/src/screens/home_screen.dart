import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_service_app/src/app/components/custom_search_bar_widget.dart';
import 'package:home_service_app/src/app/components/service_card_widget.dart';
import 'package:home_service_app/src/app/methods/breakStringsbreak_strings_totwo_lines.dart';
import 'package:home_service_app/src/screens/all_categories_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // final services = ["Plumber","Mason" ,"Event Planners","Carpenter"];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            children: [
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
                              label: "Electrician",
                              iconData: LineIcons.accusoft),
                          CategoryCardWidget(
                            label: "Hairdresser",
                            iconData: LineIcons.adobe,
                          ),
                          CategoryCardWidget(
                              label: "Event Planner",
                              iconData: LineIcons.tools),
                        ],
                      ),
                      CategoryWidget(
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
          ),
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.heading,
    required this.categoryList,
  });
  final String heading;
  final List<Widget> categoryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          HeadingWidget(
            heading: heading,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: categoryList),
          ),
        ],
      ),
    );
  }
}

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
    required this.heading,
  });
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          heading,
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AllCategories(),
              ),
            );
          },
          child: const Text(
            "See all",
            style: TextStyle(color: Colors.green),
          ),
        )
      ],
    );
  }
}

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    super.key,
    required this.label,
    required this.iconData,
  });
  final String label;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1), blurRadius: 5),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                iconData,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            breakStringIntoLines(label),
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
