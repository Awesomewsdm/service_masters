import "package:flutter_svg/flutter_svg.dart";
import "package:service_masters/common/barrels.dart";

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    required this.message,
    required this.image,
    required this.subtitle,
    super.key,
    this.onTap,
  });
  final String message;
  final String image;
  final String subtitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(
            image,
            height: 200,
            width: 200,
          ),
        ),
        const Gap(20),
        Text(
          message,
          textAlign: TextAlign.center,
          style: context.textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: context.textTheme.titleSmall!.copyWith(),
        ),
      ],
    );
  }
}
