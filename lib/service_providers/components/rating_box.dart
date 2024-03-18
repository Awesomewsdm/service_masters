import "package:service_masters/common/barrels.dart";

class RatingBox extends StatelessWidget {
  const RatingBox({
    required this.ratingNumber,
    super.key,
  });

  final String ratingNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CustomIcons.star2,
            color: tPrimaryColor,
          ),
          Text(
            ratingNumber,
            style: context.textTheme.bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
