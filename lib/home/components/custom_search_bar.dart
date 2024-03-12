import "package:service_masters/common/barrels.dart";

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    required this.onTap,
    super.key,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: tPrimaryColor,
          ),
        ),
        child: Row(
          children: [
            Text(
              "Search",
              style: context.textTheme.bodyLarge,
            ),
            const Spacer(),
            const Icon(
              CustomIcons.search,
            ),
          ],
        ),
      ),
    );
  }
}
