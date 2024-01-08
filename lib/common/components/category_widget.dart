import "package:service_masters/common/barrels.dart";

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    required this.heading,
    required this.categoryList,
    super.key,
  });
  final String heading;
  final List<Widget> categoryList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadingWidget(
          heading: heading,
          onPressed: () {},
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
