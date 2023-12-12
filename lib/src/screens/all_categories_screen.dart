import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/all_category_widget.dart';
import 'package:line_icons/line_icons.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tPrimaryColor,
        title: const Text("All Categories"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisSpacing: 0,
            crossAxisCount: 4,
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
      ),
    );
  }
}
