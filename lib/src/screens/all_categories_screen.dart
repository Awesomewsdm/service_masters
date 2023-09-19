import 'package:flutter/material.dart';
import 'package:home_service_app/src/screens/home_screen.dart';
import 'package:line_icons/line_icons.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Categories"),
      ),
      body: GridView.count(
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          crossAxisCount: 3,
          children: const [
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
              label: "House Help",
              iconData: LineIcons.headset,
            ),
          ]),
    );
  }
}
