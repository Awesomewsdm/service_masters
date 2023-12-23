import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/app/sizes.dart';
import 'package:home_service_app/src/screens/all_categories_screen.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
    required this.heading,
    this.horizontalPadding = 8.0,
    required this.onPressed,
  });
  final String heading;
  final double horizontalPadding;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        children: [
          PrimaryTextWidget(
            text: heading,
            fontSize: categoriesHeaderFontSize,
            fontWeight: FontWeight.w600,
          ),
          const Spacer(),
          TextButton(
            onPressed: onPressed,
            child: Text("See all",
                style: textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.green)),
          )
        ],
      ),
    );
  }
}
