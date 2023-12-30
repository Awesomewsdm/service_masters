import 'package:home_service_app/common/barrels.dart';

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
              children: categoryList),
        ),
      ],
    );
  }
}