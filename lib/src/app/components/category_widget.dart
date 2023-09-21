import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/components/heading_widget.dart';

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
