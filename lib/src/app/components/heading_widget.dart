import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/app/sizes.dart';
import 'package:home_service_app/src/screens/all_categories_screen.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
    required this.heading,
  });
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          PrimaryTextWidget(
            text: heading,
            fontSize: categoriesHeaderFontSize,
            fontWeight: FontWeight.w600,
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
              style: TextStyle(
                color: Colors.green,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }
}
