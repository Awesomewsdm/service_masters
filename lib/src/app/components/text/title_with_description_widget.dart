import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';

class TitleWithDescriptionWidget extends StatelessWidget {
  const TitleWithDescriptionWidget({
    super.key,
    required this.description,
    required this.title,
  });
  final String description;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryTextWidget(
            text: title, fontWeight: FontWeight.w600, fontSize: 15),
        Text(description),
      ],
    );
  }
}
