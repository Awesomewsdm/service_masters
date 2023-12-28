import 'package:home_service_app/common/barrels.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
    required this.heading,
    this.horizontalPadding = 8.0,
    required this.onPressed,
    this.showSeeAll = true,
  });
  final String heading;
  final double horizontalPadding;
  final void Function() onPressed;
  final bool showSeeAll;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
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
            child: Text(showSeeAll == true ? "See all" : "",
                style: textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.green)),
          )
        ],
      ),
    );
  }
}
