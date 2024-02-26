import "package:service_masters/common/barrels.dart";

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    required this.label,
    required this.iconData,
    super.key,
  });
  final String label;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 65,
        ),
        child: Column(
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
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                    ),
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
            Text(
              label,
            ),
          ],
        ),
      ),
    );
  }
}
