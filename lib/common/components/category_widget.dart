import "package:service_masters/common/barrels.dart";

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    required this.heading,
    required this.categoryList,
    required this.onPressed,
    super.key,
  });
  final String heading;
  final List<Widget> categoryList;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingWidget(
          heading: heading,
          onPressed: onPressed,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: categoryList,
          ),
        ),
      ],
    );
  }
}
