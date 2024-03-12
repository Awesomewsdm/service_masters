import "package:service_masters/common/barrels.dart";

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: tPrimaryColor,
        ),
      ),
      child: IconButton(
        icon: const Icon(CustomIcons.map, color: tPrimaryColor),
        onPressed: () {
          context.router.push(const MapSearchRoute());
        },
        color: tPrimaryColor,
      ),
    );
  }
}
