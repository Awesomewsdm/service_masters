import "package:service_masters/common/barrels.dart";

class RatingBox extends StatelessWidget {
  const RatingBox({
    required this.ratingNumber,
    required this.onTap,
    required this.containerColor,
    required this.iconColor,
    required this.textColor,
    super.key,
  });

  final String ratingNumber;
  final VoidCallback onTap;
  final Color containerColor;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: 1.5),
          borderRadius: BorderRadius.circular(8),
          color: containerColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CustomIcons.star2,
              color: iconColor,
            ),
            Text(
              ratingNumber,
              style: context.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
