import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/app/methods/break_strings_break_strings_totwo_lines.dart';
import 'package:home_service_app/src/app/sizes.dart';

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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 70,
              width: 70,
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
          const Gap(5),
          PrimaryTextWidget(
              text: breakStringIntoLines(label),
              fontWeight: FontWeight.normal,
              fontSize: categoryIconLabelTextSize)
        ],
      ),
    );
  }
}
