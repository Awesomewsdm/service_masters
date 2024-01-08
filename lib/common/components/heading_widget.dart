import "package:service_masters/common/barrels.dart";

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    required this.heading,
    required this.onPressed,
    super.key,
    this.horizontalPadding = 8.0,
    this.showSeeAll = true,
  });
  final String heading;
  final double horizontalPadding;
  final void Function() onPressed;
  final bool showSeeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        children: [
          Text(
            heading,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.georama(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onPressed,
            child: Text(
              showSeeAll == true ? "See all" : "",
              style: context.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
